module MySchool
  SERVER_IP = '255.105.5.1'

  class Teacher
    def class_students
      p "Nos conectamos al servidor #{SERVER_IP}"
      p "Obtenemos los nombres"
      %w[Luis Jorge Carlos]
    end
  end
end

me = MySchool::Teacher.new
p me.class_students
p MySchool::SERVER_IP