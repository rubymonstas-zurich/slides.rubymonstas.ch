username = "Bill"

chores = [
  "Call mom ☎️",
  "Clean the bath 🫧",
  "Walk the dog 🐕",
  "Learn Spanish 🇪🇸"
]

require "erb"
template = File.read("./chores.html.erb")
result = ERB.new(template).result(binding)

File.write("./chores.html", result)
