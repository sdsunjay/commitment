# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)

courses = Course.create ([
{name: "Introduction to General Pschology", course_number: "PSY-201", description: "Introduction to the psychological study of human beings. Applications and research in area such as psychobiology, perception, learning, motivation, consciousness, memory and cognition, personality, emotion, development, psychological assessment, social behavior, psychopathology and psychotherapy. A student may enroll for credit in either PSY 201 or PSY 202, but not both. 4 lectures. Fulfills GE D4."},
{name: "Interpersonal Communication.", course_number: "PSY-212", description: "Introduction to the interaction process in two-person (dyadic) communication settings. Emphasis on the functions of varying messages in the initiation, development, maintenance and termination of personal and professional relationships. 4 lectures. Crosslisted as COMS/PSY 212."},
{name: "Social Psychology", course_number: "PSY-252", description: "How attitudes, beliefs, and behavior are affected by the social situation. Gender roles, prejudice, aggression, altruism, attitudes and persuasion, liking and loving, and group behavior. Use of social psychology to understand diversity issues, reduce racism and sexism and international conflict, improve relationships, and communicate persuasively. 4 lectures."},
{name: "Family Psychology", course_number: "PSY-254", description: "Introduction to research and theory on family relationships and behavior across the lifespan. Contextual influences, diversity of family forms, and topics such as love, mate selection, marital quality, parenting, gender, household work, divorce, and remarriage. 4 lectures. Crosslisted as CD/PSY 254."},
{name: "Developmental Psychology", course_number: "PSY-256", description: "Introduction to the scientific study of development with emphasis on the lifespan, from infancy to old age. Basic research and concepts in understanding social, emotional, cognitive, contextual, and diversity influences on development. 4 lectures. Crosslisted as CD/PSY 256."}])
schools = School.create ([
	{name: "California Polytechnic State University", address: "San Luis Obispo, CA 93407"},
	{name: "Santa Clara University", address: "500 El Camino Real, Santa Clara, CA 95053"},
	{name: "University of California, Santa Barbara", address: "Santa Barbara, CA 93106"}])

users = User.create!([
      {email: "sunjay@calpoly.edu", name:"Sunjay Dhama", school_id: 1, password: "password", role: 4},
      {email: "pgeorgie@calpoly.edu", name:"Petar Georgiev", school_id: 1, password: "password", role: 4},
      {email: "efiske@calpoly.edu", name:"Elliot Fiske", school_id: 1, password: "password", role: 4},
      {email: "ian@calpoly.edu",name:"Ian Mitchell", school_id: 2, password: "password", role: 4},
      {email: "michael@calpoly.edu", name:"Michael Smith", school_id: 2,  password: "password", role: 4},
      {email: "rhlevine@calpoly.edu", name:"Ross Levine", school_id: 3, password: "password", role: 4},
      {email: "jeffrey@calpoly.edu", name:"Jeffrey Do", school_id: 3, password: "password", role: 4},
      {email: "mfouzi@calpoly.edu", name:"Monty Fouzi", school_id: 3, password: "password", role: 4}])
challenges = Challenge.create ([
	{course_id: 1, user_id: 1, question: "What is the second stage in the scientific method?", points: 5, release_date: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M"), correct_answer: "Form a hypthesis" }, # form a "hypothesis"
	{course_id: 1, user_id: 1, question: "A researcher observes the behavior of students in the library without interacting with them. What type of study is this?", points: 5, release_date: DateTime.strptime("11/13/2016 17:00", "%m/%d/%Y %H:%M"), correct_answer: "Naturalistic observation"}, # Naturalistic observation
	{course_id: 1, user_id: 1, question: "A _________ is a treatment that resembles medical treatment, but has no medical effects.", points: 5, release_date: DateTime.strptime("11/14/2016 17:00", "%m/%d/%Y %H:%M"), correct_answer: "Placebo"}, # placebo
	{course_id: 1, user_id: 1, question: "This type of cell makes up the majority of your brain.", points: 5, release_date: DateTime.strptime("11/15/2016 17:00", "%m/%d/%Y %H:%M"), correct_answer: "Glial"}, # glial
	{course_id: 1, user_id: 1, question: "True or False: the synapse is a gap between the end bulbs and the dendrites.", points: 5, release_date: DateTime.strptime("11/16/2016 17:00", "%m/%d/%Y %H:%M"), correct_answer: "True"}, # true
	{course_id: 1, user_id: 1, question: "What is the resting voltage difference in a neuron, in millivolts?", points: 10, release_date: DateTime.strptime("11/17/2016 17:00", "%m/%d/%Y %H:%M"), correct_answer: "-70"}, # -70
	{course_id: 1, user_id: 1, question: "Which kind of dendrite responds to physical pressure? A: Chemoreceptor B: Mechanoreceptor C: Tactoreceptor D: Proprioreceptor", points: 5, release_date: DateTime.strptime("11/18/2016 17:00", "%m/%d/%Y %H:%M"), correct_answer: "Mechanoreceptor"}]) # B: Mechanoreceptor

enrollment = Enrollment.create ([
	{user_id: 1, course_id: 1, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 1, course_id: 2, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 1, course_id: 3, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 2, course_id: 1, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 2, course_id: 2, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 2, course_id: 3, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 2, course_id: 4, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 3, course_id: 1, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 3, course_id: 2, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 3, course_id: 2, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 4, course_id: 3, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 4, course_id: 3, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 4, course_id: 3, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 5, course_id: 1, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 5, course_id: 2, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 5, course_id: 3, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 6, course_id: 1, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 6, course_id: 2, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 6, course_id: 3, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 7, course_id: 1, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 7, course_id: 2, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 7, course_id: 3, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")}])
