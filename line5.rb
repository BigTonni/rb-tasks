require "./line1.rb"
require "./line2.rb"
require "./line3.rb"
require "./line4.rb"

class Line
  def initialize
    puts '---------Список задач-------'
    Line1.task
    Line2.task
    Line3.task
    Line4.task
    print "Введите номер задачи для выполнения: "
    choice = gets.to_i
    case choice
    when 1
      Line1.work
    when 2
      Line2.work
    when 3
      Line3.work
    when 4
      Line4.work
    else
    puts "Такой задачи нет! Повторите ввод."
    end
  end
end
Line.new