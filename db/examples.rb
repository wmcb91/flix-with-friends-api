# This file should contain all the record creation needed to experiment with
# your app during development.

# The data can then be loaded with the rake db:examples (or created alongside
# the db with db:nuke_pave).

# Examples:

# cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
# Mayor.create(name: 'Emanuel', city: cities.first)

%w(brian jeff chris will dan).each do |name|
  email = "#{name}@#{name}.com"
  username = "#{name}man12"
  next if User.exists? email: email
  User.create!(email: email,
               username: username,
               password: '123',
               password_confirmation: '123')
end

Profile.create([
                 { given_name: 'brian',
                   surname: 'brianiams',
                   user_id: 1 },
                 { given_name: 'jeff',
                   surname: 'jeffiams',
                   user_id: 2 },
                 { given_name: 'chris',
                   surname: 'chrisiams',
                   user_id: 3 },
                 { given_name: 'will',
                   surname: 'williams',
                   user_id: 4 },
                 { given_name: 'dan',
                   surname: 'daniels',
                   user_id: 5 }
               ])

Movie.create([
               { title: 'Rocky',
                 director: 'John G. Avildsen',
                 year_released: 1976,
                 genre: 'Sports Drama',
                 rating: 'PG',
                 imdb_rating: 8.1,
                 critic_tomato_meter: 93,
                 critic_reviews: 56,
                 audience_tomato_score: 69,
                 audience_reviews: 33_402_846 },

               { title: 'Rocky 2',
                 director: 'Sylvester Stallone',
                 year_released: 1979,
                 genre: 'Sports Drama',
                 rating: 'PG',
                 imdb_rating: 7.2,
                 critic_tomato_meter: 73,
                 critic_reviews: 26,
                 audience_tomato_score: 82,
                 audience_reviews: 345_527 },

               { title: 'Dr. Strange',
                 director: 'Scott Derrickson',
                 year_released: 2016,
                 genre: 'Fantasy/Action',
                 rating: 'PG-13',
                 imdb_rating: 8.0,
                 critic_tomato_meter: 90,
                 critic_reviews: 228,
                 audience_tomato_score: 91,
                 audience_reviews: 64_315 },

               { title: 'Star Trek Beyond',
                 director: 'Justin Lin',
                 year_released: 2016,
                 genre: 'Science Fiction/Thriller',
                 rating: 'PG-13',
                 imdb_rating: 7.2,
                 critic_tomato_meter: 84,
                 critic_reviews: 245,
                 audience_tomato_score: 82,
                 audience_reviews: 68_259 },

               { title: 'Sausage Party',
                 director: 'Conrad Vernon',
                 year_released: 2016,
                 genre: 'Comedy',
                 rating: 'R',
                 imdb_rating: 6.5,
                 critic_tomato_meter: 83,
                 critic_reviews: 167,
                 audience_tomato_score: 56,
                 audience_reviews: 55_774 },

               { title: 'Titanic',
                 director: 'James Cameron',
                 year_released: 1997,
                 genre: 'Drama/Romance',
                 rating: 'PG-13',
                 imdb_rating: 7.7,
                 critic_tomato_meter: 88,
                 critic_reviews: 178,
                 audience_tomato_score: 69,
                 audience_reviews: 35_749_996 },

               { title: 'Avatar',
                 director: 'James Cameron',
                 year_released: 2009,
                 genre: 'Science Fiction/Action',
                 rating: 'PG-13',
                 imdb_rating: 7.9,
                 critic_tomato_meter: 83,
                 critic_reviews: 293,
                 audience_tomato_score: 82,
                 audience_reviews: 1_379_364 },

               { title: 'Toy Story',
                 director: 'John Lasseter',
                 year_released: 1995,
                 genre: 'Adventure/Animated',
                 rating: 'G',
                 imdb_rating: 8.3,
                 critic_tomato_meter: 100,
                 critic_reviews: 78,
                 audience_tomato_score: 92,
                 audience_reviews: 1_106_523 },

               { title: 'Toy Story 2',
                 director: 'John Lasseter',
                 year_released: 1999,
                 genre: 'Adventure/Animated',
                 rating: 'G',
                 imdb_rating: 7.9,
                 critic_tomato_meter: 100,
                 critic_reviews: 163,
                 audience_tomato_score: 86,
                 audience_reviews: 997_173 },

               { title: 'Monsters, Inc',
                 director: 'Pete Docter',
                 year_released: 2001,
                 genre: 'Adventure/Animated',
                 rating: 'G',
                 imdb_rating: 8.1,
                 critic_tomato_meter: 96,
                 critic_reviews: 192,
                 audience_tomato_score: 90,
                 audience_reviews: 1_252_853 },

               { title: 'Finding Nemo',
                 director: 'Andrew Stanton',
                 year_released: 2003,
                 genre: 'Adventure/Animated',
                 rating: 'G',
                 imdb_rating: 8.2,
                 critic_tomato_meter: 99,
                 critic_reviews: 255,
                 audience_tomato_score: 86,
                 audience_reviews: 33_354_247 },

               { title: 'The Incredibles',
                 director: 'Brad Bird',
                 year_released: 2004,
                 genre: 'Adventure/Animated',
                 rating: 'PG',
                 imdb_rating: 8.0,
                 critic_tomato_meter: 97,
                 critic_reviews: 233,
                 audience_tomato_score: 75,
                 audience_reviews: 32_654_247 },

               { title: 'Ratatouille',
                 director: 'Brad Bird',
                 year_released: 2007,
                 genre: 'Drama/Animated',
                 rating: 'G',
                 imdb_rating: 8.0,
                 critic_tomato_meter: 96,
                 critic_reviews: 241,
                 audience_tomato_score: 87,
                 audience_reviews: 1_055_774 },

               { title: 'WALL-E',
                 director: 'Andrew Stanton',
                 year_released: 2008,
                 genre: 'Drama/Animated',
                 rating: 'G',
                 imdb_rating: 8.4,
                 critic_tomato_meter: 96,
                 critic_reviews: 244,
                 audience_tomato_score: 89,
                 audience_reviews: 549_996 },

               { title: 'Up',
                 director: 'Pete Docter',
                 year_released: 2009,
                 genre: 'Drama/Animated',
                 rating: 'G',
                 imdb_rating: 8.3,
                 critic_tomato_meter: 98,
                 critic_reviews: 285,
                 audience_tomato_score: 90,
                 audience_reviews: 1_209_364 }
             ])

Screening.create([
                   { user_rating: 5,
                     watched_recently: true,
                     user_id: 2,
                     movie_id: 1 },
                   { user_rating: 5,
                     watched_recently: false,
                     user_id: 3,
                     movie_id: 2 },
                   { user_rating: 4,
                     watched_recently: false,
                     user_id: 3,
                     movie_id: 3 },
                   { user_rating: 4,
                     watched_recently: false,
                     user_id: 2,
                     movie_id: 3 }
                 ])
