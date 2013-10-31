# config/unicorn.rb
APP_PATH = "/Users/aris/Proiecte/rails/kanria/test-ka-api"

worker_processes 2
timeout 30
preload_app true

working_directory APP_PATH

listen APP_PATH + "/tmp/sockets/.unicorn.sock", :backlog => 64
listen 2007, :tcp_nopush => true

stderr_path APP_PATH + "/log/unicorn.stderr.log"
stdout_path APP_PATH + "/log/unicorn.stdout.log"

before_fork do |server, worker|
  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.connection.disconnect!
end 

after_fork do |server, worker|
  defined?(ActiveRecord::Base) and
    ActiveRecord::Base.establish_connection
end