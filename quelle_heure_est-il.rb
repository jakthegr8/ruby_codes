# Solution to 'Quelle Heure Est-Il?' on rubeque.com
# by jakthegr8
# http://www.rubeque.com/problems/quelle-heure-est-il-ques-

def pretty_date(date)
  months = ["January","February","March","April","May","June","July","August","Sepetember","October","November","December"]
  mon_to_mon3 = {}
  mon_nbr_to_mon3 = {}
  months.each_with_index {|m,i| mon_to_mon3[m] = m[0...3]; mon_nbr_to_mon3[i+1] = mon_to_mon3[m]}

  case date
  when /^\d*\d-\d*\d-\d{4}/ # mm-dd-yyyy
    a = date.split('-')
    "" << mon_nbr_to_mon3[a[0].to_i] << " " << a[1] << ", " << a[2] 
  when /^[a-zA-Z]+ \d*\d, \d{4}/ # MONTH dd, yyyy
    a = date.split
    mon_to_mon3[a[0]] << " " << a[1] << " " << a[2]
  when /^\d{4}-\d*\d-\d*\d/ # yyyy-mm-dd
    a = date.split('-')
     mon_nbr_to_mon3[a[1].to_i] << " " << a[2] << ", " << a[0]
  when /^\d*\d\/\d*\d\/\d{4}/ # mm/dd/dddd
    a = date.split(/\//)
    mon_nbr_to_mon3[a[0].to_i] << " " << a[1] << ", " << a[2]
  else
    puts "no match"
  end
end

assert_equal pretty_date("11-30-1835"), "Nov 30, 1835"
assert_equal pretty_date("July 20, 1933"), "Jul 20, 1933"
assert_equal pretty_date("1922-11-11"), "Nov 11, 1922"
assert_equal pretty_date("9/20/1978"), "Sep 20, 1978"