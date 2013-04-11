source 'https://rubygems.org'
ruby '1.9.3'
gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'

gem 'delayed_job_active_record'
group :production do
  platforms :ruby do # linux
    gem 'unicorn'
  end
  gem 'pg'
  gem 'dalli'
  gem 'newrelic_rpm'
end

group :development do
  gem 'sqlite3'
  gem 'rspec-rails', '2.11.0'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'
gem 'spree', '~> 1.3.0'
gem 'spree_fancy', :branch => "customize_to_uniqteas", :git => 'git://github.com/mcaraway/spree_fancy.git'
gem 'spree_gateway', :github => 'spree/spree_gateway', :branch => '1-3-stable'
gem 'spree_auth_devise', :github => 'spree/spree_auth_devise', :branch => '1-3-stable'
gem 'spree_contact_us', :git => 'git://github.com/sbeam/spree_contact_us.git'
gem "recaptcha", :require => "recaptcha/rails" # if you are using reCAPTCHA
gem 'datashift'
gem 'datashift_spree'
