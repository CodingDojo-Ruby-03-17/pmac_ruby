# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Useful `rails console` commands:

`Post.where(blog: Blog.last).order(title: :desc)`

`Blog.first.posts`

`names = ["John Doe", "Jane Doe", "Jennifer Doe", "Michael Smith", "Michelle Smith", "Mitchell Smite"]
 => ["John Doe", "Jane Doe", "Jennifer Doe", "Michael Smith", "Michelle Smith", "Mitchell Smite"]
2.3.3 :004 > names.each { |elem| post.messages.create(author: elem, message: "This message belongs to the first post") }`

`Blog.all.each do |blog| 3.times { blog.posts.create(title: "This is Post #{Post.maximum(:id).to_i + 1}", content: "This post belongs to Blog #{blog.id}") } end`

`1.upto(5) { |i| Blog.create(name: "Blog #{i}", description: "This is the description for Blog #{i}") }`

`Blog.where("id < ?", 5)`

`Post.first.update(title: "Updating the title")`
