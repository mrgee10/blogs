5.times do
    author = Author.create({
        email: Faker::Internet.email,
        name: Faker::Name.name
    })

    blog = Blog.create({
        title: Faker::Restaurant.name,
        content: Faker::Restaurant.description,
        author: author
    })

    feedback = Feedback.create({
        content: Faker::Quote.famous_last_words,
        blog: blog
    })
end