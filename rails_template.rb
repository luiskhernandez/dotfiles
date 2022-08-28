#  gem "ui_engine", git: "git@github.com:koombea/ui-engine.git", branch: "simple_for"
gem "ui_engine", path: "~/projects/ui-engine"

gem "view_component"
gem "active_link_to"
gem "heroicon"
gem "simple_form"
gem "tailwindcss-rails"

gem_group :development, :test do
  gem 'byebug', platform: :mri
  gem 'dotenv-rails'
  gem "pry-rails"
  gem "rspec-rails"
end

run "bundle install"

run "rails generate simple_form:install"
run "./bin/rails tailwindcss:install"
run "rails generate ui_engine:install"

run "rails g scaffold user first_name last_name twitter gender:integer bio:text admin:boolean"
run "rails db:migrate"
route 'root "users#index"'

