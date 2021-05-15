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

job1 = JobPosting.create(user_id: user1.id, role: "Cinematographer", start_date: "March 1, 2021", length_of_time: "1 day(s)", location: "Austin, TX", project_description: "Going for a cinematic look. If that's your thing, please apply!", project_title: "Let Go", project_type: "Short Film", compensation: "Meals provided.", need_gear: true, status: "Accepting Applicants")
job2 = JobPosting.create(user_id: user3.id, role: "Editor", start_date: "May 15, 2021", length_of_time: "2 month(s)", location: "Remote", project_description: "Creating an epic animated film!", project_title: "Saitama v Superman", project_type: "Feature Length Film", need_gear: false, status: "Accepting Applicants")
job3 = JobPosting.create(user_id: user2.id, role: "Producer", start_date: "April 1, 2021", length_of_time: "1 month(s)", location: "Austin, TX", project_description: "Need help with planning out my production schedule.", project_title: "Changes", project_type: "Music Video", compensation: "Meals provided. Some pay.", need_gear: false, status: "Accepting Applicants")
job4 = JobPosting.create(user_id: user4.id, role: "Screenwriter", start_date: "June 1, 2021", length_of_time: "1 week(s)", location: "Remote", project_description: "Looking for someone to adapt my short story.", project_title: "Reap What You Sow", project_type: "Short Film", need_gear: false, status: "Accepting Applicants")
job5 = JobPosting.create(user_id: user4.id, role: "Director", start_date: "July 1, 2021", length_of_time: "2 week(s)", location: "Houston, TX", project_description: "Experienced directors requested. Please include your resume and portfolio when applying.", project_title: "Reap What You Sow", project_type: "Short Film", compensation: "Meals provided. Some pay.", need_gear: false, status: "Accepting Applicants")
job6 = JobPosting.create(user_id: user1.id, role: "Boom Operator", start_date: "March 1, 2021", length_of_time: "1 day(s)", location: "Austin, TX", project_description: "No experience required.", project_title: "Let Go", project_type: "Short Film", compensation: "Meals provided.", need_gear: false, status: "Accepting Applicants")
job7 = JobPosting.create(user_id: user1.id, role: "Sound Mixer", start_date: "March 1, 2021", length_of_time: "1 day(s)", location: "Austin, TX", project_description: "Some experience required. Please send a summary of your experience with your application.", project_title: "Let Go", project_type: "Short Film", compensation: "Meals provided.", need_gear: false, status: "Accepting Applicants")
job8 = JobPosting.create(user_id: user3.id, role: "Screenwriter", start_date: "March 15, 2021", length_of_time: "1 month(s)", location: "Remote", project_description: "Looking for someone to collaborate to write a screenplay that goes along with my artwork.", project_title: "Saitama v Superman", project_type: "Feature Length Film", compensation: "Some pay. Digital copy of completed film.", need_gear: false, status: "Accepting Applicants")
job9 = JobPosting.create(user_id: user4.id, role: "Producer", start_date: "June 15, 2021", length_of_time: "2 week(s)", location: "Houston, TX", project_description: "Planning in Austin. Filming will be in Houston.", project_title: "Reap What You Sow", project_type: "Short Film", compensation: "Meals provided. Some pay.", need_gear: false, status: "Accepting Applicants")
job10 = JobPosting.create(user_id: user2.id, role: "Director", start_date: "May 1, 2021", length_of_time: "1 day(s)", location: "Austin, TX", project_description: "Some experience preferred. Please mention if you've worked on music videos before in your application.", project_title: "Changes", project_type: "Music Video", compensation: "Meals provided. Some pay.", need_gear: false, status: "Accepting Applicants")
job11 = JobPosting.create(user_id: user2.id, role: "Choreographer", start_date: "April 24, 2021", length_of_time: "1 week(s)", location: "Austin, TX", project_description: "Experienced with choreography required: 1+ years.", project_title: "Changes", project_type: "Music Video", compensation: "Meals provided. Some pay.", need_gear: false, status: "Accepting Applicants")

application1 = Application.create(user_id: user1.id, job_posting_id: job3.id, message: "I'd love to get more practice with producing a film!")
application2 = Application.create(user_id: user2.id, job_posting_id: job1.id, message: "I'm just getting into photography and would love to practice this skill!")
application3 = Application.create(user_id: user4.id, job_posting_id: job2.id, message: "I love animation and have years of editing experience! Would love to help!")