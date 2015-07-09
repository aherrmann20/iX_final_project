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

user = User.create! email: "email@email.com", password: "password", password_confirmation: 'password'

Profile.create! user: user, birthday: Time.now, name: "Test", surname: "User", profile_photo: "http://upload.wikimedia.org/wikipedia/commons/c/cc/Ursynalia_2012,_Mastodon_03.jpg", description: "just living life, bru", video: "youtubelink.youtube.com", email: "email@email.com", phone: "333-333-3333" do |profile|
	profile.talents << Talent.find_or_create_by!(skill: "piano")
	profile.talents << Talent.find_or_create_by!(skill: "drums")
	profile.talents << Talent.find_or_create_by!(skill: "acoustic guitar")
end

user = User.create! email: "nick_bruman@gmail.com", password: 'password', password_confirmation: 'password'

Profile.create! user: user, birthday: Time.now, name: "Nick", surname: "Bruman", profile_photo: "http://upload.wikimedia.org/wikipedia/commons/c/cc/Ursynalia_2012,_Mastodon_03.jpg", description: "just living life, bru", video: "youtubelink.youtube.com", email: "email@email.com", phone: "333-333-3333" do |profile|
	profile.talents << Talent.find_or_create_by!(skill: "piano")
	profile.talents << Talent.find_or_create_by!(skill: "drums")
	profile.talents << Talent.find_or_create_by!(skill: "acoustic guitar")
end

user = User.create! email: "bob_dole@gmail.com", password: 'password', password_confirmation: 'password'

Profile.create! user: user, birthday: Time.now, name: "Bob", surname: "Dole", profile_photo: "http://upload.wikimedia.org/wikipedia/commons/c/cc/Ursynalia_2012,_Mastodon_03.jpg", description: "just living life, bru", video: "youtubelink.youtube.com", email: "email@email.com", phone: "333-333-3333" do |profile|
	profile.talents << Talent.find_or_create_by!(skill: "trumpet")
	profile.talents << Talent.find_or_create_by!(skill: "cello")
	profile.talents << Talent.find_or_create_by!(skill: "acoustic violin")
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
