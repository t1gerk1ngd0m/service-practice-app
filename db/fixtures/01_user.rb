10.times do |n|
  User.seed do |s|
    s.email = "aaa#{n}@gmail.com"
    s.password = "123456"
  end
end
