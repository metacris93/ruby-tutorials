module School
  NAME = 'Mi escuela'
  YEAR = 1950

  class Teacher
    def initialize
      puts 'Creando objeto Teacher'
    end
  end
  class Student
    def initialize
      puts 'Creando objeto Student'
    end
  end
end

#puts School::NAME
include School
p NAME
p YEAR