# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
JobPosting.destroy_all
Application.destroy_all

user1 = User.create(name: "Kirsty", username: "kirstyb", password: "K1r5ty:)", location: "Austin, TX", email: "kirsty@kirsty.com")
user2 = User.create(name: "Briana", username: "brianab", password: "Br1ana:)", location: "Austin, TX", email: "briana@briana.com")
user3 = User.create(name: "Tristan", username: "tristanb", password: "Tr15tan!!", location: "Nacogdoches, TX", email: "tristan@tristan.com")
user4 = User.create(name: "Katia Krupa", username: "kxkrupa", password: "X1h0nP", location: "Austin, TX", email: "katia@katia.com")
user4 = User.create(name: "Katia Krupa", username: "kxkrupa", password: "AJm1ran!", location: "Austin, TX", email: "katia@katia.com")

job1 = JobPosting.create(user_id: user1.id, role: "Cinematographer", start_date: "March 1, 2021", length_of_time: "3 month(s)", location: "Austin, TX", project_description: "Must provide own equipment.", project_title: "Let Go", project_type: "Short Film")
job2 = JobPosting.create(user_id: user3.id, role: "Editor", start_date: "March 15, 2021", length_of_time: "2 month(s)", location: "Nacogdoches, TX", project_description: "Creating an epic animated film!", project_title: "Saitama v Superman", project_type: "Feature Length Film")
job3 = JobPosting.create(user_id: user2.id, role: "Producer", start_date: "April 1, 2021", length_of_time: "1 month(s)", location: "Austin, TX", project_description: "Need help with planning out my production schedule.", project_title: "Changes", project_type: "Music Video")

application1 = Application.create(user_id: user1.id, job_posting_id: job3.id, message: "I'd love to get more practice with producing a film!")
application2 = Application.create(user_id: user2.id, job_posting_id: job1.id, message: "I'm just getting into photography and would love to practice this skill!")
application3 = Application.create(user_id: user4.id, job_posting_id: job2.id, message: "I love animation and have years of editing experience! Would love to help!")