# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

users = User.create([{ :username => "usertwo", :email => "usertwo@email.com", :password => "password" },
    { :username => "userthree", :email => "userthree@email.com", :password => "password" },
    { :username => "userfive", :email => "userfive@email.com", :password => "password" },
    { :username => "userfive", :email => "userfive@email.com", :password => "password" }])

posts = Post.create([{ :title => "post one", :body => "post one body", :user_id => 1 },
    { :title => "post two", :body => "post two body", :user_id => 1 },
    { :title => "post three", :body => "post three body", :user_id => 2 },
    { :title => "post four", :body => "post four body", :user_id => 3 },
    { :title => "post five", :body => "post five body", :user_id => 4 },
    { :title => "post six", :body => "post six body", :user_id => 5 },
    { :title => "post seven", :body => "post seven body", :user_id => 1 }])