require 'yard'
require 'yard/rake/yardoc_task'

YARD::Rake::YardocTask.new do |task|
  task.files = ['app/controllers/**/*.rb', 'app/helpers/**/*.rb', 'app/mailers/**/*.rb', 'app/models/**/*.rb', 'lib/**/*.rb']
  task.options = ['--no-private']
  task.options << '--debug' << '--verbose' if $trace
end
