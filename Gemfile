source "https://rubygems.org"
ruby "2.2.0"

gem "oj"
gem "rack-cors", :require => "rack/cors"
gem "pg"
gem "pry"
gem "rails", "4.1.5"
gem "sequel"
gem "thin"

group :development, :test do
  gem "rspec-rails"
end

group :test do
  gem "capybara"
  gem "database_cleaner"
  gem "poltergeist"
  gem "pry-byebug"
end

group :production do
  gem "rails_serve_static_assets"
  gem "rails_12factor" # for Heroku logging
end
