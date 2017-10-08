
require "Date"
fields = []
data =[]
column_unpack_format = ""
file='metadata.txt'
f = File.open(file, "r")
f.each_line do |line|
  name, length, type = line.split(',')
  fields.push({
  name: name, 
  length: length,
  type: type.chomp
  })
  column_unpack_format += "A#{length}"
end
puts fields
puts column_unpack_format
f.close

file='data.txt'
f = File.open(file, "r")
f.each_line do |line|
  birthDate,firstName,lastName,weight = line.unpack( column_unpack_format )
  data.push({
  birthDate: Date.strptime(birthDate), 
  firstName: firstName,
  lastName: lastName,
  weight: weight.to_f
  })
end
puts data
f.close


require 'csv'
CSV.open("myfile.csv", "w") do |csv|
  
end