require_relative "lib/student"
require_relative "lib/teacher"

classroom = []

(1..100).each { |student_number| classroom << Student.new(student_number) }

teacher = Teacher.new

classroom.each { |student| puts teacher.ask_for_number student }
