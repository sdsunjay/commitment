# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
school1 = School.new({:name => "California Polytechnic State University", :address => "San Luis Obispo, CA 93407"}).save
school2 = School.new({:name => "Santa Clara University", :address => "500 El Camino Real, Santa Clara, CA 95053"}).save
school3 = School.new({:name => "University of California, Santa Barbara", :address => "Santa Barbara, CA 93106"}).save
user1 = User.create :name => "Sunjay Dhama", :school_id => 0,  :last_sign_in_at => DateTime.strptime("01/01/2016 17:00", "%m/%d/%Y %H:%M"), :email => "sunjay@example.com", :password => "password"
user2 = User.create :name => "Petar Georgiev", :school_id => 0, :last_sign_in_at => DateTime.strptime("01/01/2016 17:00", "%m/%d/%Y %H:%M"), :email => "petar@example.com", :password => "password"
user3 = User.create :name => "Elliot Fiske", :school_id => 0, :last_sign_in_at => DateTime.strptime("01/01/2016 17:00", "%m/%d/%Y %H:%M"), :email => "elliot@example.com", :password => "password"
