require('pry-byebug')
require_relative('models/artists')
require_relative('models/albums')
require_relative('models/songs')

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

song1 = Song.new({
  'title' => 'Livin On A Prayer',
  'album_id' => album1.id
  })

song2 = Song.new({
  'title' => 'You Give Love A Bad Name',
  'album_id' => album1.id
  })

song3 = Song.new({
  'title' => 'Its My Life',
  'album_id' => album2.id
  })

song4 = Song.new({
  'title' => 'Mrs Jones',
  'album_id' => album3.id
  })

song5 = Song.new({
  'title' => 'Turn Up The Sun',
  'album_id' => album4.id
  })

song6 = Song.new({
  'title' => 'Turn Up The Sun',
  'album_id' => album5.id
  })

album1.save()
album2.save()
album3.save()
album4.save()
album5.save()
album5.delete()
artist3.delete()

song1.save()
song2.save()
song3.save()
song4.save()
song5.save()
song6.save()

artists = Artist.all()
albums = Album.all()

binding.pry

album5.delete()
artist3.delete()

binding.pry
nil