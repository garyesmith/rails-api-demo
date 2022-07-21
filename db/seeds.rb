# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Project.create(title: "My First Project", tag: "my-first-project", category: "1", image: "my-first-project.jpg", description: "This is my first project.", body: "<p>This is my first proejct.</p><p>Lorem <b>ipsum</b> dolor sit amet.</p>")
Project.create(title: "Second Project", tag: "second-project", category: "1", image: "second-project.jpg", description: "This is the second project.", body: "<p>This is the second proejct.</p><p>Lorem <b>ipsum</b> dolor sit amet.</p>")