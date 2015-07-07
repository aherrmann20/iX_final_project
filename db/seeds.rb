# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Creating users..."

Profile.delete_all
Talent.delete_all

Profile.create! name: "Nick", surname: "Bruman", profile_photo: "http://upload.wikimedia.org/wikipedia/commons/c/cc/Ursynalia_2012,_Mastodon_03.jpg", description: "just living life, bru", video: "youtubelink.youtube.com", email: "email@email.com", phone: "333-333-3333" do |profile|
	profile.talents << Talent.find_or_create_by(skill: "piano")
	profile.talents << Talent.find_or_create_by(skill: "drums")
	profile.talents << Talent.find_or_create_by(skill: "acoustic guitar")
end

Profile.create! name: "Bob", surname: "Dole", profile_photo: "http://upload.wikimedia.org/wikipedia/commons/c/cc/Ursynalia_2012,_Mastodon_03.jpg", description: "just living life, bru", video: "youtubelink.youtube.com", email: "email@email.com", phone: "333-333-3333" do |profile|
	profile.talents << Talent.find_or_create_by(skill: "trumpet")
	profile.talents << Talent.find_or_create_by(skill: "cello")
	profile.talents << Talent.find_or_create_by(skill: "acoustic violin")
end

#profile.talents = [Talent.create!(skill: "piano"), Talent.create!(skill: "drums"), Talent.create!(skill: "acoustic guitar")]
# Talent.create!(skill: "trumpet")
# Talent.create!(skill: "bassoon")
# Talent.create!(skill: "soprano (voice)")
# Talent.create!(skill: "alto (voice)")
# Talent.create!(skill: "tenor (voice)")
# Talent.create!(skill: "bass (voice)")
# Talent.create!(skill: "saxophone")
# Talent.create!(skill: "electric guitar")
# Talent.create!(skill: "bass (instrument)")
# Talent.create!(skill: "violin")
# Talent.create!(skill: "viola")
# Talent.create!(skill: "cello")
# Talent.create!(skill: "flute")
# Talent.create!(skill: "clarinet")
# Talent.create!(skill: "accordion")
# Talent.create!(skill: "harmonica")
# Talent.create!(skill: "banjo")
# Talent.create!(skill: "mandolin")

#something Josh did
# profile.profile_talents.build(talent_id: Talent.first.id).save
