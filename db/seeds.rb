

Post.find_or_create_by(title: 'New title', body:  'With a great new paragraph!')
Comment.find_or_create_by(post: Post.first, body: 'any paragraph')

puts "Seed finished"
puts "#{Post.count} posts created"
