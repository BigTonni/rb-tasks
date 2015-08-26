module Line4
  def self.task
    puts 'Задача 4. Описание: вывести в консоли значение хеша по его ключу.'
  end

  def self.work
    var = {}
    print "Введите хеш:\t\t"
    args=gets.to_i
    while args>0
      print "Введите ключ:\t\t"
      key = gets
      print "Введите значение:\t\t "
      value = gets
      var[key]=value
      args-=1
    end
    print "Выполнить поиск по ключу:\t\t"
    key = gets
    puts "Искомое значение: " + search_hash(var, key)
  end

  def self.search_hash(var, key)
    if var.is_a?(Hash) || var.is_a?(Array)
      var.each{|k,v|
        if v.is_a?(Array) || v.is_a?(Hash)
          search_hash(v, key)
        else k.is_a?(Array) || k.is_a?(Hash)
          search_hash(k, key)
        end
        if k == key
          return v
        end
      }
    end
  end
end
#hash = {"test"=>1,proc{}=>[[{:key=>"sss"},{"pass"=>{"a"=> [1,{:bsd => [[],[],[],[],[],[[proc{}] => {[7,1]=>{:rr=>111}}]]}] }}], [1,[:olol, {[1, {:trolo => "r"}] => 1}]]],"zero"=>7,"kuk"=>[{"tr"=>"jxp"},{:lx=>"xp"}]}
#puts Line4.search_hash(hash, :trolo)

