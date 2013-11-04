namespace :db do
	namespace :ext do
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
end