require('pry-byebug')
require_relative('models/artists')
require_relative('models/albums')

artist1 = Artist.new({
  'name' => 'Bon Jovi'
  })

artist2 = Artist.new({
  'name' => 'Oasis'
  })

artist1.save()
artist2.save()

album1 = Album.new({
  'title' => 'Slippery When Wet',
  'genre' => 'Rock',
  'artist_id' => artist1.id
  })

album2 = Album.new({
  'title' => 'Crush',
  'genre' => 'Rock',
  'artist_id' => artist1.id
  })

album3 = Album.new({
  'title' => '(Whats the Story) Morning Glory?',
  'genre' => 'Rock',
  'artist_id' => artist2.id
  })

album4 = Album.new({
  'title' => 'Dont Believe the Truth',
  'genre' => 'Rock',
  'artist_id' => artist2.id
  })

album1.save()
album2.save()
album3.save()
album4.save()

binding.pry
nil