class Employee
    attr_accessor :name, :salary, :title, :boss
    def initialize(name, salary, title, boss = nil)
        @name = name
        @salary = salary 
        @title = title 
        @boss = boss 
    end

    def bonus(multiplier)
        @salary * multiplier
    end
end

class Manager < Employee
    attr_reader :employees
    def initialize(name, salary, title, boss = nil)
        super(name, salary, title, boss)
        @employees = []
    end

    def add_employee(employee)
        @employees << employee
        employee.boss = self 
    end
    
    def bonus(multiplier)
        sum = 0
        queue = @employees
        until queue.empty?
            ele = queue.shift
            sum += ele.salary
            queue += ele.employees if ele.is_a?(Manager)
        end
        sum * multiplier
    end
end

david = Employee.new("David", 10000, "TA")
shauna = Employee.new("Shauna", 12000, "TA")
darren = Manager.new("Darren", 78000, "TA Manager")
ned = Manager.new("Ned", 1000000, "Founder")

darren.add_employee(david)
darren.add_employee(shauna)
ned.add_employee(darren)

p ned.bonus(5)
p darren.bonus(4)
p david.bonus(3)
