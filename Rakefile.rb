$:.unshift File.dirname(__FILE__) + 'lib'

require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new
task :default => :spec

desc "Ejecutamos el test con documentacion"
task :spec do
	sh "rspec -Ilib spec/fracciones_spec.rb --format documentation"
end

desc ""
task :thtml do
	sh "rspec -Ilib spec/ppt_spec.rb --format html > index.html"
end

desc "Ejecutamos el main"
task :bin do
	sh "ruby -Ilib bin/fracciones_main.rb"
end
