Song.delete_all
Artist.delete_all
Photo.delete_all



# Artists
weeknd = Artist.create! ( { name: "Weeknd", remote_image_url: "http://res.cloudinary.com/dsveomrqj/image/upload/v1499758032/weeknd_dufuym.jpg" })
bruno = Artist.create! ( { name: "Bruno", remote_image_url: "http://res.cloudinary.com/dsveomrqj/image/upload/v1499758025/bruno_ufdubb.jpg"})
mj = Artist.create! ( { name: "Mj", remote_image_url: "http://res.cloudinary.com/dsveomrqj/image/upload/v1499758017/mj_nhrguf.jpg" } )


# Songs
often = Song.create! ( { name: "Often", artist: weeknd } )
feel = Song.create! ( { name: "Feel", artist: weeknd } )
secrets = Song.create! ( { name: "Secrets", artist: weeknd } )

grenade = Song.create! ( { name: "Grenade", artist: bruno } )
chunky = Song.create! ( { name: "Chunky", artist: bruno } )
marry = Song.create! ( { name: "Marry", artist: bruno } )

thriller = Song.create! ( { name: "Thriller", artist: mj } )
bad = Song.create! ( { name: "Bad", artist: mj } )
love = Song.create! ( { name: "Love", artist: mj } )
