module HourlyPayable
	def calculate_hourly_salary
		 @hourly_rate*@hours_worked
	end
end




class Employee
    attr_reader :name, :email
    def initialize(name, email)
      @name = name
      @email = email
    end
end


class HourlyEmployee < Employee
	include HourlyPayable

    def initialize(name, email, hourly_rate, hours_worked)
        @name = name
        @email = email
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
		calculate_hourly_salary
    end
end

class SalariedEmployee < Employee
    def initialize(name, email, yearly_salary)
        @name = name
        @email = email
        @yearly_salary = yearly_salary
    end

    def calculate_salary
    	total = @yearly_salary/52
    	total
    end
end

class MultiPaymentEmployee < Employee

    def initialize(name, email, base_salary, hourly_rate, hours_worked)
        @name = name
        @email = email
        @base_salary = base_salary
        @hourly_rate = hourly_rate
        @hours_worked = hours_worked
    end

    def calculate_salary
    	if @hours_worked>40
    		total = @base_salary/52 + (@hourly_rate*(@hours_worked-40)) 
    	else
    		total = @base_salary/52
    	end
    	 total
    end

end


class Payroll
    def initialize(employees)
        @employees = employees
    end

  def pay_employees
  	total = 0
      # Should output how much we're paying each employee for this week and the total amount spent on payroll this week. 
     @employees.each do |employee|
     	total += employee.calculate_salary
     	puts employee.calculate_salary

     end
     total/1.18


  end
	 def notify_employee(employee)
	 	send_email_to = employee.email
	 	puts "This week you're gonna earn you weekly salary #{send_email_to}"
	 end
end

edu = MultiPaymentEmployee.new("Edu", "eduhand92@gmail.com", 40000, 30, 65)
josh = HourlyEmployee.new('Josh', 'nachoemail@example.com', 35, 50)
nizar = SalariedEmployee.new('Nizar', 'starcraftrulez@gmail.com', 1000000)
ted = MultiPaymentEmployee.new('Ted', 'fortranr0x@gmail.com', 60000, 275, 55)
steven = MultiPaymentEmployee.new("Edu", "eduhand92@gmail.com", 55000, 30, 55)

employees = [josh, nizar, ted, edu, steven]
payroll = Payroll.new(employees)
payroll.pay_employees
payroll.notify_employee(josh)

edu.calculate_salary


