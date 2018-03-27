@user = User.create(email:"traceyw0224@gmail.com",password: "123123123", password_confirmation: "123123123",first_name:"Tracey",last_name:"Wang")
puts "User created #{@user.first_name}"
100.times do |post|
    Post.create!(date: Date.today, rationale: "#{post} rationale content",user_id:@user.id)
end
puts "100 posts have been post"