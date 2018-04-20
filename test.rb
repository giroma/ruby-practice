def fizz
  (1..100).each do |n|
    x = ''
    if n%3 == 0
      x += 'fizz '
    end
    if n%5 == 0
      x += 'buzz'
    end
    puts(x.empty? ? n : x)
  end
end


def check_for_seven
  (1..100).each do |i|
    unless i % 7 == 0 || (i.to_s.include? "7")
      puts i
    end

  end
end

class Human
  def initialize(name)
    @name = name
  end
  def name3times
    return @name
  end
end

human = Human.new("ari")

puts human.name3times

a = [3,6,8,0]

a.map! {|n| n*n}
p a
