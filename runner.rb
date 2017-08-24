module Actualize
    employee_1 = Actulaize::Employee.new{
                first_name: "Jimmy", 
                last_name: "stewart", 
                salary: 70000, 
                active: true}
  employee_2 = Actualize::Employee.new{
                first_name: "Susan", 
                last_name: "Messing", 
                salary: 80000, 
                active: true}
  manager = Actualize::Manager.new(
                        first_name: "Bob",
                        last_name: "Hoskins",
                        salary: 100000,
                        active: true
                        )
  intern = Actualize::Intern.new(
                      first_name: "Jimmy",
                      last_name: "Olsen",
                      salary: 30000,
                      active: true
                      )
end
employee_1.print_info
employee_2.print_info
manager.print_info
intern.print_info

manager.give_all_raises

employee_1.print_info

intern.send_reports

