artists = [
  [ "Michael Jackson", "michael.jpg",
    %{"Michael Joseph Jackson[1][2] (August 29, 1958 – June 25, 2009) was an American singer, songwriter, record producer, dancer, and actor. Called the King of Pop,[3][4][5] his contributions to music, dance and fashion[6][7][8] along with his publicized personal life made him a global figure in popular culture for over four decades."}],

  [ "Madona", "madona.jpg",
    %{"Pop legend Madonna is known for her constant reinvention as a performer. Her biggest hits include Like a Prayer, Vogue, Secret and Ray of Light, among many others."}],

  [ "Adele", "adele.jpg",
    %{"Singer Adele is a Grammy Award-winning artist whose throwback, soulful sound has made her an international success with hits like Rolling in the Deep and Someone Like You.}],

  [ "Tina Turner", "tina-turner-3.jpg",
    %{"Singer Adele is a Grammy Award-winning artist whose throwback, soulful sound has made her an international success with hits like Rolling in the Deep and Someone Like You.}]

]

artists.each do |name, image, bio|
  Artist.create( name: name, image: image, bio: bio )
end

artist_songs = {}

artist_songs["Michael Jackson"] = [
  ["Billie Jean", 3.34],
  ["Beat It", 4.34],
  ["Earth Song", 4.00],
  ["The Way You Make Me Feel", 3.34],
  ["Man in the Mirror", 3.34]
]

artist_songs["Madona"] = [
  ["Vogue", 3.34],
  ["Like a Player", 3.34],
  ["Like a Virgin", 4.00],
  ["Ray of Light", 3.34],
  ["Music", 3.34]
]

artist_songs["Adele"] = [
  ["Hello", 3.34],
  ["Someone Like You", 2.34],
  ["Skyfall", 4.00],
  ["Set Fire to the Rain", 3.34],
  ["Rumour Has It", 3.34]
]

artist_songs["Tina Turner"] = [
  ["Hello", 3.34],
  ["Someone Like You", 2.34],
  ["Skyfall", 4.00],
  ["Set Fire to the Rain", 3.34],
  ["Rumour Has It", 3.34]
]

artist_songs.each do | artist_name, songs |
  artist = Artist.find_by(name: artist_name )

  songs.each do | title, duration |
    Song.create(title: title, artist_id: artist.id, duration: duration)
  end
end
