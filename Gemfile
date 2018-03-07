source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.4.2'

gem 'rails', '5.1.5'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

### For ActionCable and Jobs
gem 'redis', '~> 3.3', '>= 3.3.1'

### For readable slugs
gem 'friendly_id', '~> 5.1.0'

### For Authentication
gem 'devise', '~> 4.4', '>= 4.4.1'

### For User Authorization
gem 'petergate', '~> 1.8', '>= 1.8.1'

### For Icons
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.3'
gem 'font-mfizz-rails', '~> 1.1', '>= 1.1.1'

gem 'jquery-ui-rails', '~> 6.0', '>= 6.0.1'

### For Nested Attributes
gem 'cocoon', '~> 1.2', '>= 1.2.11'

### For Displaying messages
gem 'gritter', '~> 1.2'

### For Markdown interpreter and code highlighting
gem 'redcarpet', '~> 3.4'
gem 'coderay', '~> 1.1', '>= 1.1.2'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'pry-byebug'
  ### For Environment variables and Secrets
  gem 'dotenv-rails', '~> 2.1', '>= 2.1.2'
  gem 'rails-controller-testing'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end
