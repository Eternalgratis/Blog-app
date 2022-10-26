# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# rails g migration CreateUsers name:string photo:text bio:text posts_counter:integer
# rails g migration CreatePosts title:string text:text comments_counter:integer likes_counter:integer
# rails g migration CreateComments text:text
# rails g migration CreateLikes
# rails g migration AddUserRefToPosts author:references:index
# rails g migration AddUserRefToComments author:references:index
# rails g migration AddUserRefToLikes author:references:index
# rails g migration AddPostRefToLikes post:references:index
# rails g migration AddPostRefToComments post:references:index
# rails db:migrate

# first_user = User.create(name: 'Tom', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Mexico.')
# second_user = User.create(name: 'Lilly', photo: 'https://unsplash.com/photos/F_-0BxGuVvo', bio: 'Teacher from Poland.')

# first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my first post')
# first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my second post')
# first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my third post')
# first_post = Post.create(author: first_user, title: 'Hello', text: 'This is my fourth post')

# Comment.create(post: first_post, author: second_user, text: 'Hi Tom!' )
# Comment.create(post: first_post, author: second_user, text: 'Are you done with your project!' )
# Comment.create(post: first_post, author: second_user, text: 'Is it approved yet?' )
# Comment.create(post: first_post, author: second_user, text: 'Are you available for a call?' )
# Comment.create(post: first_post, author: second_user, text: 'Are you enjoying ROR?' )
# Comment.create(post: first_post, author: second_user, text: 'The end!' )
