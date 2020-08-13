# Creating array for Employee Names
employeeNames = Array.new()
# Creating array for Hourly Pay
hourlyPay = Array.new()
# Creating array for Total Hours Worked
totalHoursWorked = Array.new()

# Method for filling the Employee Names array, limited to 50
def get_employee_names (employeeNames)
  i = 0
  while i < 50
    puts "Enter an employee's first name:"
    firstName = gets.chomp
    break if firstName.downcase == "quit"

    puts "Enter the employee's last name:"
    lastName = gets.chomp
    # Concatenating the entries
    employeeNames[i] = firstName + " " + lastName
    i += 1
  end
  # Printing the employee's full names
  puts employeeNames
end

# Method for filling the Hourly Pay array
def get_hourly_pay (employeeNames, hourlyPay, n)
  i = 0
  while i < n
    puts "Enter #{employeeNames[i]}'s hourly pay:"
    hourlyPay[i] = gets.chomp
    i += 1
  end
end

# Method for displaying the final calculations
# for total hours worked and gross pay
def print_summary(num_employees, employeeNames, totalHoursWorked, grossPay)
  i = 0
  while i < num_employees
    puts "#{employeeNames[i]} worked #{totalHoursWorked[i]} hours this week and earned $#{grossPay[i]} this week."
    i += 1
  end
end


# Calling method to fill the Employee Names array
get_employee_names(employeeNames)

# Setting the number of employees based on the Employee Names array
# Which will be used later to create the Hours Worked array
num_employees = employeeNames.count
puts "The total number of employees is #{num_employees}"

get_hourly_pay(employeeNames, hourlyPay, num_employees)

hoursWorked = Array.new(num_employees) {Array.new(7)}
grossPay = Array.new()
i = 0

hoursWorked.each do |each_employee|
  totalHoursSum = 0
  puts "Enter #{employeeNames[i]}'s hours worked for 7 days (0 if day off)"
  puts "Press Enter after each day's entry:"
  each_employee.each do |get_daily_hours|
    totalHoursSum += gets.chomp.to_i
  end
  totalHoursWorked[i] = totalHoursSum
  grossPay[i] = totalHoursWorked[i].to_i * hourlyPay[i].to_i
  i += 1
end


print_summary(num_employees, employeeNames, totalHoursWorked, grossPay)
