source "https://rubygems.org"

gem "bundler"
gem "rake"
gem "hanami",       "~> 0.9"
gem "hanami-model", "~> 0.7"

gem "pg"

# Pin nokogiri to make bundle installs faster
gem "nokogiri", "1.7.0.1"

group :development, :test do
  gem "sass"
end

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem "shotgun"
end

group :test do
  gem "minitest"
  gem "capybara"
end

group :production do
  gem "puma"
end
