require('pry-byebug')
require_relative('models/artists')
require_relative('models/albums')

Album.delete_all()
Artist.delete_all()


artist1 = Artist.new({
  'name' => 'Bon Jovi'
  })

artist2 = Artist.new({
  'name' => 'Oasis'
  })

artist3 = Artist.new({
  'name' => 'Ocean Colour Scene'
  })

artist1.save()
artist2.save()
artist3.save()

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

album5 = Album.new({
  'title' => 'B-sides, Seasides and Freerides',
  'genre' => 'Rock',
  'artist_id' => artist3.id
  })

album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
album5.delete()
artist3.delete()

artists = Artist.all()
albums = Album.all()

binding.pry

album5.delete()
artist3.delete()

binding.pry
nil