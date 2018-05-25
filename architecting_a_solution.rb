# Solution to 'Architecting a Solution' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/architecting-a-solution

Architect = Struct.new(:name, :works)

flr = Architect.new("frank loyd wright")
imp = Architect.new("I. M. Pei", ["new college dorms", "jfk library"])

flr.works = ["Guggenheim", "fallingwater"]

assert_equal flr.name, "frank loyd wright"
assert_equal imp.works, ["new college dorms", "jfk library"]