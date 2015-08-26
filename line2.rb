module Line2
  def self.task
    puts 'Задача 2. Описание: вывести в консоли:
    2         1
    3         3
    4         6
    5         10
    6         15
    7         21
    8         28
    9         36
    10         45
    11         55
    12         66
    13         78
    14         91
    15         105
    16         120
    17         136
    18         153
    19         171
    20         190'
  end
  def self.work
    i=2
    sum=1
    while i<21
      puts "#{i}\t#{sum}"
      sum+=i
      i+=1
    end
  end
end
