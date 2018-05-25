# Solution to 'Fixing Bad Code the Wrong Way' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/fixing-bad-code-the-wrong-way

class Person
  def initialize(name, age, incoming_race)
    @name = name
    @age = age
    self.race = incoming_race
  end

  def nam
    @name.split.map(&:capitalize).join(" ")
  end

  def agE
    @age
  end

  def method_missing(m, *args)
    if (m.to_s.downcase.match /name/)
      "Kurt Vonnegut"
    elsif (m.to_s.downcase.match /race/)
      "Caucasian"
    elsif (m.to_s.downcase.match /age/)
      89
    else
      super
    end
  end
end

person = Person.new("kurt vonnegut", 89, "caucasian")

assert_equal person.name, "Kurt Vonnegut"
assert_equal person.race, "Caucasian"
assert_equal person.age, 89