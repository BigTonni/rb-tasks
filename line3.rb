module Line3
  def self.task
    puts 'Задача 3. Описание: вывести в консоли окружность с возможностью задать диаметр.'
  end

  def self.work
    print "Введите диаметр круга: "
    diametr = gets.to_i
    @radius=(diametr/2).to_i
    @pi=Math::PI

    i=0
    arr=[]
    while i<2*@pi
     arr << calc_circle_xy(i)
     i+=0.04
    end
    coords=arr

    result = Array.new diametr do
      Array.new(diametr,"--")
    end

    coords.each do|coord|
     result[coord[:x]][coord[:y]] = "++"
    end
    result.each do |arr|
      puts arr.join("")
    end
  end

  def self.calc_circle_xy(fi)
    {:x=>(@radius*Math.sin(fi)).to_i+@radius, :y=>(@radius*Math.cos(fi)).to_i+@radius}
  end
end