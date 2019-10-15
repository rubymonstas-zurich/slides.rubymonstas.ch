task default: 'new'

task :new, [:name] do |task, args|
  task_name, slide_name, _rest = ARGV
  ruby "lib/tasks/new.rb #{slide_name}"

  exit
end
