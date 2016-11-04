# This file should contain all the record creation needed to experiment with
# your app during development.

# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).

# Examples:

# cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# Mayor.create(name: 'Emanuel', city: cities.first)

%w(brian jeff chris will).each do |name|
  email = "#{name}@#{name}.com"
  next if User.exists? email: email
  User.create!(email: email,
               password: 'abc123',
               password_confirmation: 'abc123')
end

Profile.create([
                 { user_name: 'brianman123',
                   given_name: 'brian',
                   surname: 'brianiams',
                   user_id: 1 },
                 { user_name: 'jeffman123',
                   given_name: 'jeff',
                   surname: 'jeffiams',
                   user_id: 2 },
                 { user_name: 'chrisman123',
                   given_name: 'chris',
                   surname: 'chrisiams',
                   user_id: 3 },
                 { user_name: 'willman123',
                   given_name: 'will',
                   surname: 'williams',
                   user_id: 4 }
               ])

Movie.create([
               { title: 'Rocky',
                 director: 'Sylvester Stallone',
                 year_released: 1981,
                 genre: 'Drama',
                 imdb_rating: 8.9,
                 critic_tomato_meter: 94,
                 critic_reviews: 103,
                 audience_tomato_score: 98,
                 audience_reviews: 30_000 },
               { title: 'Rocky 2',
                 director: 'Sylvester Stallone',
                 year_released: 1982,
                 genre: 'Drama',
                 imdb_rating: 8.8,
                 critic_tomato_meter: 94,
                 critic_reviews: 103,
                 audience_tomato_score: 98,
                 audience_reviews: 30_000 },
               { title: 'Rocky 3',
                 director: 'Sylvester Stallone',
                 year_released: 1983,
                 genre: 'Drama',
                 imdb_rating: 8.6,
                 critic_tomato_meter: 94,
                 critic_reviews: 103,
                 audience_tomato_score: 98,
                 audience_reviews: 30_000 }
             ])

Screening.create([
                   { rating: 5,
                     watched_recently: true,
                     user_id: 2,
                     movie_id: 1 },
                   { rating: 5,
                     watched_recently: false,
                     user_id: 3,
                     movie_id: 2 },
                   { rating: 4,
                     watched_recently: false,
                     user_id: 3,
                     movie_id: 3 },
                   { rating: 4,
                     watched_recently: false,
                     user_id: 2,
                     movie_id: 3 }
                 ])
