##
# IMPORTANT: Run `task docker:build` everytime any gem in `Gemfile` is changed.
##

source "https://rubygems.org"

ruby "3.3.3"

# Bundle edge Rails instead: gem "rails", github: "rails/rails", branch: "main"
gem "rails", "~> 7.1.3", ">= 7.1.3.2"

# The original asset pipeline for Rails [https://github.com/rails/sprockets-rails]
gem "sprockets-rails"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Use JavaScript with ESM import maps [https://github.com/rails/importmap-rails]
gem "importmap-rails"

# Hotwire's SPA-like page accelerator [https://turbo.hotwired.dev]
gem "turbo-rails"

# Hotwire's modest JavaScript framework [https://stimulus.hotwired.dev]
gem "stimulus-rails"

# Build JSON APIs with ease [https://github.com/rails/jbuilder]
gem "jbuilder"

# Use Redis adapter to run Action Cable in production
gem "redis", ">= 4.0.1"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[windows jruby]

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", require: false

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[mri windows]
end

group :development do
  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem "web-console"

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem "capybara"
  gem "selenium-webdriver"
end

##
# RSpec for Rails 6+.
# - https://github.com/rspec/rspec-rails
#
group :development, :test do
  gem "rspec-rails", "~> 6.1.0"
end

##
# Gherkin extension for RSpec.
# - https://github.com/jnicklas/turnip
#
group :test do
  gem "turnip", "~> 4.4.0"
end

##
# A pretty formatter for Turnip.
# - https://github.com/gongo/turnip_formatter
#
group :test do
  gem "turnip_formatter", "~> 0.8.0"
end

##
# Rake task that allows to verify whether schema.rb and migration files have been correctly committed.
# - https://github.com/kufu/db_schema_checker
#
group :test do
  gem "db_schema_checker", "~> 0.2.1"
end

##
# Annotate (aka AnnotateModels) - Add a comment summarizing the current schema to the bottom of each of ActiveRecord models, etc.
# - https://github.com/ctran/annotate_models
#
group :development do
  gem "annotate", "~> 3.2.0"
end

##
# Generate Entity-Relationship Diagrams for Rails applications.
# - https://github.com/voormedia/rails-erd
#
group :development do
  gem "rails-erd", "~> 1.6.1"
end

##
# SitePrism - A Page Object Model DSL for Capybara.
# - https://github.com/site-prism/site_prism
#
group :test do
  gem "site_prism", "~> 5.0.1"
end

##
# Byebug is a simple to use and feature rich debugger for Ruby.
# - https://github.com/deivid-rodriguez/byebug
#
group :development, :test do
  gem "byebug", "~> 11.1.3"
end

##
# Pry is a runtime developer console and IRB alternative with powerful introspection capabilities.
# - https://github.com/pry/pry
#
group :development, :test do
  gem "pry", "~> 0.14.2"
end

##
# Pretty print your Ruby objects with colors.
# - https://github.com/amazing-print/amazing_print
#
group :development, :test do
  gem "amazing_print", "~> 1.6.0"
end

##
# Ruby gem for ANSI terminal colors.
# - https://github.com/janlelis/paint
#
group :development, :test do
  gem "paint", "~> 2.3.0"
end

##
# Rouge is a pure Ruby syntax highlighter.
# - https://github.com/rouge-ruby/rouge
#
group :development, :test do
  gem "rouge", "~> 4.2.1"
end

##
# SuperDiff - A more helpful way to view differences between complex data structures in RSpec.
# - https://github.com/mcmire/super_diff
#
group :test do
  gem "super_diff", "~> 0.12.1"
end

##
# Rubocop - Ruby static code analyzer and formatter.
# - https://github.com/rubocop/rubocop
#
group :development do
  gem "rubocop", "~> 1.62.0"
end

##
# Rubocop cops for Rails.
# - https://github.com/rubocop/rubocop
#
group :development do
  gem "rubocop-rails", "~> 2.23.1"
end

##
# Rubocop cops for RSpec.
# - https://github.com/rubocop/rubocop-rspec
#
group :development do
  gem "rubocop-rspec", "~> 2.29.2"
end

##
# Standard - Predefined Rubocop config.
# - https://github.com/standardrb/standard
#
group :development do
  gem "standard", "~> 1.35.1"
end

##
# Standard Rails - Predefined Rubocop config for Rails.
# - https://github.com/standardrb/standard-rails
#
group :development do
  gem "standard-rails", "~> 1.0.2"
end

##
# Convenient Service - Service object pattern implementation in Ruby.
# - https://github.com/marian13/convenient_service
#
gem "convenient_service", "~> 0.19.0"

##
# dry-initializer - DSL for building class initializer with params and options.
# - https://github.com/dry-rb/dry-initializer
#
gem "dry-initializer", "~> 3.1.1"

##
# rubyzip - Rubyzip is a ruby library for reading and writing zip files.
# - https://github.com/rubyzip/rubyzip
#
gem "rubyzip", "~> 2.3.2"
