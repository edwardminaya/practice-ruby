require "./employee.rb"
require "./manager.rb"
require "./intern.rb"
require "./email_reportable.rb"

# Represent employee data as an array
employee1 = ["Majora", "Carter", 80000, true]
employee2 = ["Danilo", "Campos", 70000, true]

# This is too tedious and difficult to manage
puts employee1[0] + " " + employee1[1] + " makes " + employee1[2].to_s + " a year"

#Use interpolation, but it not the best way to read
puts "#{employee2[0]} #{employee2[1]} makes #{employee2[2]} a year."

# Representing employee data as a hash
employee1 = { :first_name => "Majora", :last_name => "Carter", :salary => 80000, :active => true }
employee2 = { :first_name => "Danil", :last_name => "Campos", :salary => 70000, :active => true }

puts "#{employee1[:first_name]} #{employee1[:last_name]} makes #{employee1[:salary]} a year."

employee1 = Employee.new({ first_name: "Majora", last_name: "Carter", salary: 80000, active: true })
employee2 = Employee.new(first_name: "Danilo", last_name: "Campos", salary: 70000, active: true)

employee1.print_info
employee2.print_info

manager = Manager.new(first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2])

manager.print_info
manager.send_report
manager.give_all_raises
manager.fire_all_employees

intern = Intern.new({ first_name: "Adrienne", last_name: "Lowe", salary: "50000", active: true })
intern.print_info
intern.send_report
