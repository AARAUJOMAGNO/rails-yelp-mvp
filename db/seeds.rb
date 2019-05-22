puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'Dishoom',
    address:      '7 Boundary St, London E2 7JE',
    phone_number: '5454-9878',
    category:     'french'
  },
  {
    name:         'Pizza East',
    address:      '56A Shoreditch High St, London E1 6PQ',
    phone_number: '3768-6324',
    category:     'italian'
  },
  {
    name:         'Vintão',
    address:      'Rua Mourato Coelho',
    phone_number: '2176-6390',
    category:     'japanese'
  },
  {
    name:         'Jesus Pizza',
    address:      'Rua da Fé, 33',
    phone_number: '4622-3333',
    category:     'belgian'
  },
  {
    name:         'Bar Beiragem',
    address:      'Rua Noves Fora, 456',
    phone_number: '5422-6890',
    category:     'chinese'
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
