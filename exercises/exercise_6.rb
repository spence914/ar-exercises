require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
  has_many :employees
end

class Employee
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store2.employees.create(first_name: "Benjamin", last_name: "Gibbard", hourly_rate: 20)
@store1.employees.create(first_name: "Chris", last_name: "Walla", hourly_rate: 45)
@store2.employees.create(first_name: "Nick", last_name: "Rutherford", hourly_rate: 30)
@store1.employees.create(first_name: "Terence", last_name: "Malick", hourly_rate: 90)
@store2.employees.create(first_name: "Giancarlo", last_name: "Esposito", hourly_rate: 200)