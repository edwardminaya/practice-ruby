# employee should have the following: id, first_name, last_name, salary, active
# below are the first two employees that should be in the initial table.
entry1 = { Xid: 1, first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true }
entry2 = { id: 2, first_name: "Majora", last_name: "Carter", salary: 70000, active: false }

# Class created for an instances for each employee.
class Employee
  attr_accessor :id, :first_name, :last_name, :salary, :active

  def initialize(input_options)
    @id = input_options[:id]
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end
end

# Two instances of employees using the class
employee1 = Employee.new(entry1)
employee2 = Employee.new(entry2)
# array to hold the two employee instances
employees = []
employees << employee1
employees << employee2
puts "EMPLOYEES (#{employees.length} TOTAL)"
p employees

# First prompt to ask user what they would like to do
# Create, Read, Update, Delete or Quit
puts "[C]reate [R]ead [U]pdate [D]elete [Q]uit: "
