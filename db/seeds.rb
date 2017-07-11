Song.delete_all
Artist.delete_all

artist1 = artist.create!(name: "weeknd",remote_image_url_url:"http://res.cloudinary.com/dsveomrqj/image/upload/v1499758032/weeknd_dufuym.jpg")
artist2 = artist.create!(name: "bruno",remote_image_url_url:"http://res.cloudinary.com/dsveomrqj/image/upload/v1499758025/bruno_ufdubb.jpg")
artist3 = artist.create!(name: "mj",remote_image_url_url:"http://res.cloudinary.com/dsveomrqj/image/upload/v1499758017/mj_nhrguf.jpg")

artists_count = artist.all.length
puts "#{artists_count} artists were created."

Song.create!([
song1 = Song.create!( { music_genre: "Hiphop", producer: "Djkhalid", remote_image_url_url: "http://res.cloudinary.com/dsveomrqj/image/upload/v1499542093/DJkhalid_ndjhit.jpg" })
song2 = Song.create!( { music_genre: "Dance", producer: "Tupac", remote_image_url_url: "http://res.cloudinary.com/dsveomrqj/image/upload/v1499542099/2pac_so2cox.jpg"})
song3 = Song.create!( { music_genre: "Rock", producer: "Ali", remote_image_url_url: "http://res.cloudinary.com/dsveomrqj/image/upload/v1499542106/aliB_ugxosa.jpg"})
