# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: "Chicago" }, { name: "Copenhagen" }])
#   Mayor.create(name: "Emanuel", city: cities.first)

courses = Course.create ([
{name: "General Pschology", course_number: "PSY-201", description: "Introduction to the psychological study of human beings. Applications and research in area such as psychobiology, perception, learning, motivation, consciousness, memory and cognition, personality, emotion, development, psychological assessment, social behavior, psychopathology and psychotherapy. A student may enroll for credit in either PSY 201 or PSY 202, but not both. 4 lectures. Fulfills GE D4."},
{name: "General Pschology", course_number: "PSY-202", description: "Introduction to the psychological study of human beings. Applications and research in area such as psychobiology, perception, learning, motivation, consciousness, memory and cognition, personality, emotion, development, psychological assessment, social behavior, psychopathology and psychotherapy. A student may enroll for credit in either PSY 201 or PSY 202, but not both. 3 lectures, 1 discussion. Fulfills GE D4."},
{name: "Interpersonal Communication.", course_number: "PSY-212", description: "Introduction to the interaction process in two-person (dyadic) communication settings. Emphasis on the functions of varying messages in the initiation, development, maintenance and termination of personal and professional relationships. 4 lectures. Crosslisted as COMS/PSY 212."},
{name: "Social Psychology", course_number: "PSY-252", description: "How attitudes, beliefs, and behavior are affected by the social situation. Gender roles, prejudice, aggression, altruism, attitudes and persuasion, liking and loving, and group behavior. Use of social psychology to understand diversity issues, reduce racism and sexism and international conflict, improve relationships, and communicate persuasively. 4 lectures."},
{name: "Family Psychology", course_number: "PSY-254", description: "Introduction to research and theory on family relationships and behavior across the lifespan. Contextual influences, diversity of family forms, and topics such as love, mate selection, marital quality, parenting, gender, household work, divorce, and remarriage. 4 lectures. Crosslisted as CD/PSY 254."},
{name: "Developmental Psychology", course_number: "PSY-256", description: "Introduction to the scientific study of development with emphasis on the lifespan, from infancy to old age. Basic research and concepts in understanding social, emotional, cognitive, contextual, and diversity influences on development. 4 lectures. Crosslisted as CD/PSY 256."},
{name: "African American Psychology", course_number: "PSY-260", description: "A historical overview of African American psychology, and a critical examination of the psychocultural forces (e.g., history of slavery, racism, oppression, education, familial factors) that have helped to shape the beliefs, attitudes, identities, behavior, and well-being of African Americans."},
{name: "Selected Topics in Psychology", course_number: "PSY-270", description: "Directed group study of selected topics. The Schedule of Classes will list title selected. Total credit limited to 8 units. 1 to 4 lectures."},
{name: "Psychology of Personal Development.", course_number: "PSY-301", description: "Application of developmental psychology to self awareness. Includes communication skills, self modification skills and examination of life goals and values. 4 lectures."},
{name: "Behaviors in Organizations", course_number: "PSY-302", description: "Characteristics of functioning organizations and their effects on individuals. Psychological issues relevant to the maintenance of the organization. Motivation, leadership, group phenomena, communication, decision-making, attitudes, personnel selection and organizational change. 4 lectures."},
{name: "Intergroup Dialogues", course_number: "PSY-304", description: "Weekly meetings of students from two distinct self-defined identity groups, with trained peer facilitators, in which readings, experiential activities, informed dialogue, and reflective writing are integrated as a means of encouraging self and group awareness and exploring ways to promote just community across difference. Supplemented by weekly lecture/discussions. 2 lectures, 2 discussions. Crosslisted as CRP/PSY 304. Fulfills GE D5 except for the following majors: City and Regional Planning, Child Development, and Psychology. Formerly PSY 303."},
{name: "Personality", course_number: "PSY-305", description: "Personality theories and research. Assessment, dynamics, and development of personality. Trait, behavioral, social learning, cognitive, humanistic, psychoanalytic and biological approaches. 4 lectures."},
{name: "Adolescence", course_number: "PSY-306", description: "Psychological analysis of the years from prepubescence to young adulthood. Current research on behavior and development during adolescence with emphasis on physical, affective, cognitive, sociocultural, historical, family, peer and school aspects of life during the post-child, pre-adult years. 4 lectures. Crosslisted as CD/PSY 306."},
{name: "Psychology of Death", course_number: "PSY-310", description: "Psychological aspects of death, loss and grief, including scientific findings, person-culture transactions and expressions in the arts and humanities. Personal exploration and interdisciplinary application of psychology to issues such as death anxiety, dying processes, funerals, immortality beliefs, suicide, and grieving. 4 lectures."},
{name: "Environmental Psychology", course_number: "PSY-311", description: "Interrelationship between behavior and the built and natural environments. Evaluating and understanding environments, environmental stress, and the human aspects of environmental problems. 4 lectures. Fulfills GE D5 except for Psychology and Child Development majors."},
{name: "Psychology of Stress", course_number: "PSY-312", description: "Examines the relationship between stress and psychological and physical well-being. Research on the psychological factors influencing stress as well as a description and critical evaluation of methods of stress reduction. 4 lectures."},
{name: "Psychology of Aging", course_number: "PSY-318", description: "Psychological and physiological aging in the context of the culture. Theories and research relating to the issues of stability and both positive and negative changes in perception, learning, memory, intelligence, personality, identity, motivation, sexuality, family relationships, career. Disorders, institutionalization, death and bereavement. 4 lectures. Fulfills GE D5 except for Psychology and Child Development majors."},

{name: "Computer Engineering Orientation", course_number: "CPE-100", description: "Introduction to the computer engineering discipline. Success skills and curricular information. Career paths and opportunities. Professional aspects of engineering and computer science. Interaction with upper division students, alumni, faculty and staff. Introduction to computer software and hardware. Credit/No Credit grading only. 1 lecture."},
{name: "Fundamentals of Computer Science I.", course_number: "CPE-101", description: "Basic principles of algorithmic problem solving and programming using methods of top-down design, stepwise refinement and procedural abstraction. Basic control structures, data types, and input/output. Introduction to the software development process: design, implementation, testing and documentation. The syntax and semantics of a modern programming language. Credit not available for students who have taken CSC/CPE 108. 3 lectures, 1 laboratory. Crosslisted as CPE/CSC 101."},
{name: "Fundamentals of Computer Science II.", course_number: "CPE-102", description: "Basic design, implementation, testing, and documentation of object-oriented software. Introduction to classes, interfaces, inheritance, algorithms (sort, search, recursion), abstract data types, data structures (lists, stacks, queues), file I/O, and exceptions. Credit not available for students who have taken CSC/CPE 108. 3 lectures, 1 laboratory. Crosslisted as CPE/CSC 102."},
{name: "Fundamentals of Computer Science III.", course_number: "CPE-103", description: "Psychological and physiological aging in the context of the culture. Theories and research relating to the issues of stability and both positive and negative changes in perception, learning, memory, intelligence, personality, identity, motivation, sexuality, family relationships, career. Disorders, institutionalization, death and bereavement. 4 lectures. Fulfills GE D5 except for Psychology and Child Development majors."},
{name: "Accelerated Introduction to Computer Science.", course_number: "CPE-108", description: "Accelerated introduction to basic principles of algorithmic and object-oriented problem solving and programming. Introduction to programming language concepts including control structures, data types, classes, and inheritance. Program design principles. Use and implementation of algorithms (searching, sorting, recursion) and data structures (lists, stacks, and queues). Intended for students with experience in algorithmic problem solving and using basic control structures and data types in a modern programming language (CPE/CSC 101), but who are not ready for CPE/CSC 102. Not open to students with credit in CPE/CSC 102. 3 lectures, 1 laboratory. Crosslisted as CPE/CSC 108."},
{name: "Introduction to Computer Organization.", course_number: "CPE-225", description: "Introduction to computer systems. Simple instruction set architecture and the computer hardware needed to implement that architecture. Machine and assembly language programming. 3 lectures, 1 laboratory. Crosslisted as CPE/CSC 225."},
{name: "Professional Responsibilities", course_number: "CPE-300", description: "The responsibilities of the computer science professional. The ethics of science and the IEEE/ACM Software Engineering Code of Ethics. Quality tradeoffs, software system safety, intellectual property, history of computing and the social implications of computers in the modern world. Applications to ethical dilemmas in computing. Technical presentation methods and practice. 3 lectures, 1 laboratory. Crosslisted as CPE/CSC 300."}])

schools = School.create ([
	{name: "California Polytechnic State University", address: "San Luis Obispo, CA 93407"},
	{name: "Santa Clara University", address: "500 El Camino Real, Santa Clara, CA 95053"},
	{name: "University of California, Santa Barbara", address: "Santa Barbara, CA 93106"}])

users = User.create!([
      {email: "sdhama@calpoly.edu", name:"Sunjay Dhama", school_id: 1, password: "password", role: 4},
      {email: "pgeorgie@calpoly.edu", name:"Petar Georgiev", school_id: 1, password: "password", role: 4},
      {email: "efiske@calpoly.edu", name:"Elliot Fiske", school_id: 1, password: "password", role: 4},
      {email: "ian@calpoly.edu",name:"Ian Mitchell", school_id: 2, password: "password", role: 4},
      {email: "michael@calpoly.edu", name:"Michael Smith", school_id: 2,  password: "password", role: 4},
      {email: "rhlevine@calpoly.edu", name:"Ross Levine", school_id: 3, password: "password", role: 4},
      {email: "jeffrey@calpoly.edu", name:"Jeffrey Do", school_id: 3, password: "password", role: 4},
      {email: "mfouzi@calpoly.edu", name:"Monty Fouzi", school_id: 3, password: "password", role: 4}])
#userz = User.create()
#[:admin, :student, :teacher, :customer].each do |role|
#  userz.add_role role
#end
#userz.destroy

challenges = Challenge.create ([
	{course_id: 1, user_id: 3, question: "What is the second stage in the scientific method?", points: 5, release_date: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")}, # form a "hypothesis"
	{course_id: 1, user_id: 3, question: "A researcher observes the behavior of students in the library without interacting with them. What type of study is this?", points: 5, release_date: DateTime.strptime("11/13/2016 17:00", "%m/%d/%Y %H:%M")}, # Naturalistic observation
	{course_id: 1, user_id: 3, question: "A _________ is a treatment that resembles medical treatment, but has no medical effects.", points: 5, release_date: DateTime.strptime("11/14/2016 17:00", "%m/%d/%Y %H:%M")}, # placebo
	{course_id: 1, user_id: 3, question: "This type of cell makes up the majority of your brain.", points: 5, release_date: DateTime.strptime("11/15/2016 17:00", "%m/%d/%Y %H:%M")}, # glial
	{course_id: 1, user_id: 3, question: "True or False: the synapse is a gap between the end bulbs and the dendrites.", points: 5, release_date: DateTime.strptime("11/16/2016 17:00", "%m/%d/%Y %H:%M")}, # true
	{course_id: 1, user_id: 3, question: "What is the resting voltage difference in a neuron, in millivolts?", points: 10, release_date: DateTime.strptime("11/17/2016 17:00", "%m/%d/%Y %H:%M")}, # -70
	{course_id: 1, user_id: 3, question: "Which kind of dendrite responds to physical pressure? A: Chemoreceptor B: Mechanoreceptor C: Tactoreceptor D: Proprioreceptor", points: 5, release_date: DateTime.strptime("11/18/2016 17:00", "%m/%d/%Y %H:%M")}]) # B: Mechanoreceptor

enrollment = Enrollment.create ([
	{user_id: 1, course_id: 1, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 1, course_id: 19, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 1, course_id: 20, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 2, course_id: 10, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 2, course_id: 13, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 2, course_id: 15, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 2, course_id: 17, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 3, course_id: 20, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 3, course_id: 10, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 3, course_id: 13, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 4, course_id: 15, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 4, course_id: 11, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 4, course_id: 18, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 5, course_id: 7, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 5, course_id: 9, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 5, course_id: 2, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 6, course_id: 3, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 6, course_id: 5, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 6, course_id: 19, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 7, course_id: 17, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 7, course_id: 19, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")},
	{user_id: 7, course_id: 12, created_at: DateTime.strptime("11/12/2016 17:00", "%m/%d/%Y %H:%M")}])
