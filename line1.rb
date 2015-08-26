module Line1
  def self.task
    puts 'Задача 1. Описание: вывести в консоли
    1)hello
    2)hello
    3)hello
    4)hello
    5)hello
    6)hello World
    7)hello
    8)hello
    9)hello
    10)hello
    11)hello
    12)hello'
  end

  def self.work
    12.times {|i| puts "#{i+1}) Hello #{"world" if i == 6}"}
  end
end
