# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database

# 1. insert new rows in the contacts table with relationship to a company
puts "Companies: #{Company.all.count}"
puts "Contacts: #{Contact.all.count}"

apple = Company.find_by({ "name" => "Apple" })
puts apple.inspect

cook = Contact.new
cook["first_name"] = "Tim"
cook["last_name"] = "Cook"
cook["email"] = "tim@apple.com"
cook["company_id"] = apple["id"]
cook.save

#puts cook.inspect

craig = Contact.new
craig["first_name"] = "Craig"
craig["last_name"] = "Federighi"
craig["email"] = "craig@apple.com"
craig["company_id"] = apple["id"]
craig.save

amazon = Company.find_by({ "name" => "Amazon" })

bezos = Contact.new
bezos["first_name"] = "Jeff"
bezos["last_name"] = "Bezos"
bezos["email"] = "jeff@blue.com"
bezos["company_id"] = amazon["id"]
bezos.save

puts "There are #{Company.all.count} companies"
puts "There are #{Contact.all.count} contacts"


# 2. How many contacts work at Apple?

# 3. What is the full name of each contact who works at Apple?
