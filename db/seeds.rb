artists_seed = [
  ["Migos",
    "Rap",
    [
      ['2015', 'Yung Rich Nation', 'Review Info populated by Seed'],
      ['2017','Culture', 'Review Info populated by Seed'],
      ['2018', 'Culture II', 'Review Info populated by Seed']
    ]
  ],
  ["50 cent",
    "Rap",
    [
      ['2003', 'Get Rick or Die Tryin', 'Review Info populated by Seed'],
      ['2005','The Massacre', 'Review Info populated by Seed'],
      ['2007', 'Curtis', 'Review Info populated by Seed']
    ]
  ],
  ["ACDC",
    "Rock",
    [
      ['1992', 'ACDC Live', 'Review Info populated by Seed'],
      ['1980','Back in Black', 'Review Info populated by Seed'],
    ]
  ],
]

artists_seed.each do |name_seed, genre_seed, albums_seed|
  temp_artist = Artist.create( name: name_seed, genre: genre_seed )
  albums_seed.each do |year_seed, title_seed, review_seed|
    temp_album = Album.new
    temp_album.year = year_seed
    temp_album.title = title_seed
    temp_album.review = review_seed
    temp_album.artist_id = temp_artist.id
    temp_album.save
  end
end
