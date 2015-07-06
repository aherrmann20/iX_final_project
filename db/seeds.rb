# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating users..."

Profile.delete_all

Profile.create! name: "Nick", surname: "Bruman", talent: "drums", profile_photo: "http://upload.wikimedia.org/wikipedia/commons/c/cc/Ursynalia_2012,_Mastodon_03.jpg", description: "just living life, bru", video: "youtubelink.youtube.com", email: "email@email.com", phone: "333-333-3333"
