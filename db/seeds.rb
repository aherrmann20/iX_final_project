# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating users..."

User.delete_all
Profile.delete_all
Talent.delete_all
Rating.delete_all

user = User.create! email: "sienna_smith@gmail.com", password: "password", password_confirmation: 'password'

Profile.create! user: user, birthday: Time.now, name: "Sienna", surname: "Smith", profile_photo: "https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQtY-n2Ykhx46UKeYbr8t9K2WBv0BHiHQcDBaqV9e2hdCnsJR4E", description: "I've been teaching myself guitar for three years now, but before that played viola for five. I love country music, so hit me up if you'd like to jam out or start a band!", video: "https://www.youtube.com/watch?v=VuNIsY6JdUw", email: "email@email.com", phone: "123-456-7890" do |profile|
	profile.talents << Talent.find_or_create_by!(skill: "viola")
	profile.talents << Talent.find_or_create_by!(skill: "acoustic guitar")
end

user = User.create! email: "nick_bruman@gmail.com", password: 'password', password_confirmation: 'password'

Profile.create! user: user, birthday: Time.now, name: "Nick", surname: "Bruman", profile_photo: "http://upload.wikimedia.org/wikipedia/commons/c/cc/Ursynalia_2012,_Mastodon_03.jpg", description: "just living life, bru. lookin for some locals to chill and jam with", video: "https://www.youtube.com/watch?v=p2H5YVfZVFw", email: "nick_bruman@gmail.com", phone: "333-333-3333" do |profile|
	profile.talents << Talent.find_or_create_by!(skill: "piano")
	profile.talents << Talent.find_or_create_by!(skill: "drums")
	profile.talents << Talent.find_or_create_by!(skill: "acoustic guitar")
end

user = User.create! email: "bob_dole@gmail.com", password: 'password', password_confirmation: 'password'

Profile.create! user: user, birthday: Time.now, name: "Bob", surname: "Dole", profile_photo: "https://s-media-cache-ak0.pinimg.com/236x/c8/3b/82/c83b82c4c2a4f956094f68415bbcbb8c.jpg", description: "I am a classically trained musician interested in making beautiful melodious tunes with those who can handle my heat.", email: "bob_dole@gmail.com", phone: "444-444-4444" do |profile|
	profile.talents << Talent.find_or_create_by!(skill: "trumpet")
	profile.talents << Talent.find_or_create_by!(skill: "cello")
	profile.talents << Talent.find_or_create_by!(skill: "acoustic violin")
end

user = User.create! email: "sarah@gmail.com", password: 'password', password_confirmation: 'password'

Profile.create! user: user, birthday: Time.now, name: "Sarah", surname: "Besnainou", profile_photo: "http://i.imgur.com/zSuxVbi.jpg", description: "Hey ! I'm a rising senior in college, and I'm looking to improve my piano skills while making new friends. Link up with me !", email: "sarah@gmail.com", phone: "567-890-3333" do |profile|
	profile.talents << Talent.find_or_create_by!(skill: "piano")
	profile.talents << Talent.find_or_create_by!(skill: "guitar")
end

Talent.find_or_create_by!(skill: "trumpet")
Talent.find_or_create_by!(skill: "bassoon")
Talent.find_or_create_by!(skill: "soprano (voice)")
Talent.find_or_create_by!(skill: "alto (voice)")
Talent.find_or_create_by!(skill: "tenor (voice)")
Talent.find_or_create_by!(skill: "bass (voice)")
Talent.find_or_create_by!(skill: "saxophone")
Talent.find_or_create_by!(skill: "electric guitar")
Talent.find_or_create_by!(skill: "bass (instrument)")
Talent.find_or_create_by!(skill: "violin")
Talent.find_or_create_by!(skill: "viola")
Talent.find_or_create_by!(skill: "cello")
Talent.find_or_create_by!(skill: "flute")
Talent.find_or_create_by!(skill: "clarinet")
Talent.find_or_create_by!(skill: "accordion")
Talent.find_or_create_by!(skill: "harmonica")
Talent.find_or_create_by!(skill: "banjo")
Talent.find_or_create_by!(skill: "mandolin")
Talent.find_or_create_by!(skill: "marimba")
Talent.find_or_create_by!(skill: "xylophone")
Talent.find_or_create_by!(skill: "bongos")
Talent.find_or_create_by!(skill: "snare")
Talent.find_or_create_by!(skill: "bagpipes")
Talent.find_or_create_by!(skill: "baritone horn")
Talent.find_or_create_by!(skill: "contrabassoon")
Talent.find_or_create_by!(skill: "bugle")
Talent.find_or_create_by!(skill: "alto clarinet")
Talent.find_or_create_by!(skill: "bass clarinet")
Talent.find_or_create_by!(skill: "cornet")
Talent.find_or_create_by!(skill: "countertenor")
Talent.find_or_create_by!(skill: "didgeridoo")
Talent.find_or_create_by!(skill: "english horn")
Talent.find_or_create_by!(skill: "euphonium")
Talent.find_or_create_by!(skill: "fife")
Talent.find_or_create_by!(skill: "flugelhorn")
Talent.find_or_create_by!(skill: "flute")
Talent.find_or_create_by!(skill: "french horn")
Talent.find_or_create_by!(skill: "mellophone")
Talent.find_or_create_by!(skill: "mezzo-soprano (voice)")
Talent.find_or_create_by!(skill: "oboe")
Talent.find_or_create_by!(skill: "pan flute")
Talent.find_or_create_by!(skill: "piccolo")
Talent.find_or_create_by!(skill: "piccolo trumpet")
Talent.find_or_create_by!(skill: "pipe organ")
Talent.find_or_create_by!(skill: "saxophone (baritone)")
Talent.find_or_create_by!(skill: "saxophone (bass)")
Talent.find_or_create_by!(skill: "saxophone (soprano)")
Talent.find_or_create_by!(skill: "sousaphone")
Talent.find_or_create_by!(skill: "tuba")
Talent.find_or_create_by!(skill: "harp")
Talent.find_or_create_by!(skill: "clavichord")
Talent.find_or_create_by!(skill: "double bass")
Talent.find_or_create_by!(skill: "fiddle")
Talent.find_or_create_by!(skill: "guitar (seven-string)")
Talent.find_or_create_by!(skill: "guitar (eight-string)")
Talent.find_or_create_by!(skill: "guitar (ten-string)")
Talent.find_or_create_by!(skill: "guitar (flamenco)")
Talent.find_or_create_by!(skill: "dobro")
Talent.find_or_create_by!(skill: "guitar (double-neck)")
Talent.find_or_create_by!(skill: "guitar (nine-string)")
Talent.find_or_create_by!(skill: "guitar (twelve-string)")
Talent.find_or_create_by!(skill: "harpsichord")
Talent.find_or_create_by!(skill: "hurdy-gurdy")
Talent.find_or_create_by!(skill: "lute")
Talent.find_or_create_by!(skill: "lyre")
Talent.find_or_create_by!(skill: "sitar")
Talent.find_or_create_by!(skill: "ukulele")


Rating.create! user: User.first, profile: Profile.first, rating: 5
Rating.create! user: User.first, profile: Profile.first, rating: 4
Rating.create! user: User.first, profile: Profile.first, rating: 3
Rating.create! user: User.first, profile: Profile.first, rating: 4
Rating.create! user: User.first, profile: Profile.first, rating: 2
Rating.create! user: User.first, profile: Profile.first, rating: 2

# p = Profile.first
# p.ratings
# p.average_rating 

#something Josh did
# profile.profile_talents.build(talent_id: Talent.first.id).save
