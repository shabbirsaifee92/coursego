User.create!(email: 'user@example.com', password: 'password', password_confirmation: 'password')

30.times do 
  Course.create!([{
    title: Faker::Educator.course_name,
    description: Faker::TvShows::GameOfThrones.quote,
    short_description: Faker::Quote.famous_last_words,
    language: Faker::ProgrammingLanguage.name,
    level: 'Beginner',
    price: 11.99,
    user: User.first
  }])
end