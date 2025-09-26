require_relative 'User' 
require_relative 'Task'

user1 = User.new("Katti" , "mrinmayi@loxo.co")
user2 = User.new("Mrinmayi" , "mpk5@njit.edu")

puts user1.list_tasks
puts user2.list_tasks

task1_u1 = Task.new("1" , "Ruby Project", "High" , "In Progress")
task2_u1 = Task.new("2" , "WO Help", "High" , "Done")
task1_u2 = Task.new("1" , "Vanta Task", "Medium" , "Not Started")

user1.add_tasks(task1_u1)
user1.add_tasks(task2_u1)
user2.add_tasks(task1_u2)

user1.list_tasks
user2.list_tasks
