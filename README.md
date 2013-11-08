## KA public API application
--------------
This is a basic rails-api configuration, with only one small adjustment in /config/application.rb:
```ruby
module KaApi
    def self.root
        File.expand_path(File.join(File.dirname(__FILE__),'../'))
    end
end
```
This allows us to have the application root path in rake tasks inside the gems.

#### Installation
- include in the Gemfile the extensions and moules that you want to mount on this instance:

```ruby
gem 'ka_mod_users', :github => 'arisro/test-ka-mod-users'

gem 'ka_ext_users', :github => 'arisro/test-ka-ext-users'
```
- *bundle install*  
- *rake ka:install* - will copy the extensions & modules configuration files to the main application's /config folder and will mount the modules' engines in /config/routes.rb .  
- edit the config files (especially the extension's one that might have database settings)  
- *rake ka:db:migrate* - will run the migrations (from the start if this is a new install) for every extension and module, for their own database
- start your server

#### Updating
- edit the Gemfile to include or remove any extensions or modules
- *bundle update*  
- *rake ka:install* - will add any new extensions/modules configuration files. It won't overwrite existing modules configurations files.
- edit the config files.  If there are any new configuration options for existing modules/extension, they have to be added by hand in the existing config files.
- *rake ka:db:migrate* - run migrations for existing modules/extensions and setup the tables for the new modules/extensions
- start your server
