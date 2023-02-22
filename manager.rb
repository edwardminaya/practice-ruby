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

#Represent employee data as a class

class Employee
  # Easier way to do reader and writer methods.
  attr_accessor :first_name, :last_name, :active, :salary

  def initialize(input_options)
    @first_name = input_options[:first_name]
    @last_name = input_options[:last_name]
    @salary = input_options[:salary]
    @active = input_options[:active]
  end

  def active=(input_active)
    @active = input_active
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
end

employee1 = Employee.new({ first_name: "Majora", last_name: "Carter", salary: 80000, active: true })
employee2 = Employee.new({ first_name: "Danilo", last_name: "Campos", salary: 70000, active: true })
employee1.print_info
employee2.print_info
# Does not print out raise must use print_info to see raise.
employee1.give_annual_raise
employee2.give_annual_raise
employee1.print_info
employee2.print_info
p employee1.first_name
p employee2.last_name
employee2.active = false
p employee2.active

class Manager < Employee
  attr_accessor :employees

  def initialize(input_options)
    super
    @employees = input_options[:employees]
  end

  def send_report
    puts "sending emails..."
    #use emial sending library
    puts "emails sent!"
  end
end

manager = Manager.new({ first_name: "Saron", last_name: "Yitbarek", salary: 100000, active: true, employees: [employee1, employee2] })
manager.print_info
manager.send_report
p manager.give_annual_raise

p manager
