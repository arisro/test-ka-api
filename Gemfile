source 'https://rubygems.org'

gem 'rails', '4.0.0'

gem 'rails-api'

# Use sqlite3 as the database for Active Record
# gem 'sqlite3'

# To use ActiveModel has_secure_password
gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
gem 'jbuilder'

# Use unicorn as the app server
gem 'unicorn'

if ENV["MODS_SRC"] == "local"
	gem 'ka_mod_users', :path => '/var/www/kanria-front/ka-mod-users'
	gem 'ka_ext_users', :path => '/var/www/kanria-front/ka-ext-users'
else
	gem 'ka_mod_users', :github => 'arisro/test-ka-mod-users'
	gem 'ka_ext_users', :github => 'arisro/test-ka-ext-users'
end