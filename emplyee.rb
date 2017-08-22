#employee_1 = {"first_name" => "Jimmy", "last_name" => "stewart", "salary" => 70000, "active" => true}
#employee_2 = {"first_name" => "Susan", "last_name" => "Messing", "salary" => 80000, "active" => true}

#puts "#{employee_1["first_name"]} #{employee_1["last_name"]} makes #{employee_1["salary"]} a year."
#puts "#{employee_2["first_name"]} #{employee_2["last_name"]} makes #{employee_2["salary"]} a year."













class Employee
  def initialize(input_first_name, input_last_name, inout_salary, input_active)
    @first_name = input_first_name
    @last_name = input_last_name
    @salary = input_salary
    @active = input_active
  end
  def first_name
    @first_name
  end

  def print_info
    puts "#{@first_name} #{@last_name} makes #{@salary} a year"
  end

def give_annual_raise
  @salary = @salary * 1.05
end



    #employee_1 = Employee.new("Jimmy", "stewart", 70000, true)
    #employee_2 = Employee.new("Susan", "Messing", 80000, true)
    #p employee_1
    #p employee_2