namespace :ka do
	namespace :db do
		desc "Run Ka extensions migrations."
		task :migrate do
			puts "Extensions database migrations:"
			Rake.application.tasks.each do |task|
				if /ka:ext.*?:migrate/ =~ task.name
					puts "\t- #{task.name}..."
					task.execute
				end
			end
		end
	end
	task :install do
		puts "Installing all extensions and modules:"
		Rake.application.tasks.each do |task|
			if /^ka:(ext|mod).*?:install$/ =~ task.name
				puts "\t- #{task.name}..."
				task.execute
			end
		end
	end
end