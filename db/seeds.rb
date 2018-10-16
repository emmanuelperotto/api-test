# frozen_string_literal: true

mane_garrincha_location = {
  lat: -15.78347475,
  lng: -47.89920526355173
}

# Creating Events
Event.create!(
  name: 'HELLouWIN #8',
  description: 'A maior festa à fantasia de Brasília',
  lat: mane_garrincha_location[:lat],
  lng: mane_garrincha_location[:lng]
)

Event.create!(
  name: 'Roberto Carlos',
  description: 'Show do Roberto Carlos no Estádio Nacional Mané Garrincha',
  lat: mane_garrincha_location[:lat],
  lng: mane_garrincha_location[:lng]
)

Event.create!(
  name: 'Martin Garrix',
  description: 'Show do Martin Garrix no Estádio Nacional Mané Garrincha',
  lat: mane_garrincha_location[:lat],
  lng: mane_garrincha_location[:lng]
)

# Creating Users
User.create!(
  name: 'Emmanuel Perotto',
  email: 'emmanuelperotto@gmail.com',
  password: '12345678',
  password_confirmation: '12345678'
)

User.create!(
  name: 'João Santos',
  email: 'joao.santos@teste.com',
  password: '12345678',
  password_confirmation: '12345678'
)

# Creating Comments with or without reports
25.times do |number|
  user = User.all.sample
  event = Event.all.sample
  comment = Comment.new(
    text: "Comentário teste nº #{number}",
    user: user,
    event: event
  )

  comment.reported = true if [1, 2].sample == 1

  comment.save!
  Report.create!(user: user, comment: comment)
end
