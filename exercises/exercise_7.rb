require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: { only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200 }
  validates :store_id, presence: true
end

class Store
validates :name, length: { minimum: 3}
validates :annual_revenue, numericality: { only_integer: true, greater_than: 0 }
validate :must_have_apparel
        def must_have_apparel
          unless mens_apparel || womens_apparel
            errors.add(:base, "Must have either mens or womens apparel")
          end
        end
end

newStoreName = gets.chomp

newStore = Store.create(name: newStoreName, annual_revenue: 80000)
puts "Errors:"
  newStore.errors.full_messages.each do |message|
    puts "- #{message}"
  end
