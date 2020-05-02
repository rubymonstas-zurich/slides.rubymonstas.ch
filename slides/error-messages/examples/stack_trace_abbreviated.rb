def execute_quit_command
  puts "Goodbye!"
  ext
end

def execute_command(command, todos)
  if command == "quit"
    execute_quit_command
  elsif command == "list"
    # ...
  end
end

puts "Welcome to the to the todo list"

todos = ["Buy milk", "Workout"]

loop do
  puts "Please enter your command:"
  command = gets.chomp
  execute_command(command, todos)
end
