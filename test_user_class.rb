require_relative 'User' 
require_relative 'Task'

user1 = User.new("Katti" , "mrinmayi@loxo.co")
user2 = User.new("Mrinmayi" , "mpk5@njit.edu")

puts user1.list_tasks
puts user2.list_tasks

task1_u1 = Task.new("1" , "Ruby Project", "High" , "In Progress" , "2025-09-30")
task2_u1 = Task.new("2" , "WO Help", "High" , "In Progress" , "2025-09-20")
task1_u2 = Task.new("1" , "Vanta Task", "Medium" , "Done" , "2025-10-30")

user1.add_tasks(task1_u1)
user1.add_tasks(task2_u1)
user2.add_tasks(task1_u2)

user1.list_tasks
user2.list_tasks
