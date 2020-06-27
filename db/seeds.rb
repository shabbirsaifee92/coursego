User.create!(email: 'user@example.com', password: 'password', password_confirmation: 'password')

30.times do 
  Course.create!([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    user: User.first
  }])
end