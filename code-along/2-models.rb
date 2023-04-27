# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all #delete all rows in companies while still keeping the table (reset everytime we run)
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

# 1a. check out the schema file
# 1b. check out the model file

puts "There are #{Company.all.count} companies" #this is actually running a SELECT COUNT from SQL

# 2. insert new rows in companies table
new_company = Company.new

puts new_company.inspect

new_company["name"] = "Apple"
new_company["city"] = "Cupertino"
new_company["state"] = "CA"
new_company["url"] = "https://www.apple.com"
new_company.save # insert into table

puts new_company.inspect

puts "There are #{Company.all.count} companies" #result is 2 because we deleted everything when we started and program never repeats

company2 = Company.new

puts company2.inspect

    company2["name"] = "Amazon"
    company2["city"] = "Seattle"
    company2["state"] = "WA"
    company2.save # insert into table

puts company2.inspect

puts "There are #{Company.all.count} companies"

company3 = Company.new

puts company3.inspect

    company3["name"] = "Twitter"
    company3["city"] = "San Francisto"
    company3["state"] = "CA"
    company3.save # insert into table

puts company3.inspect

puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company

all_companies = Company.all
puts all_companies.inspect

cali_companies = Company.where({"state" => "CA"})
puts cali_companies.inspect

puts "CA companies: #{cali_companies.count}"

# 4. query companies table to find single row for Apple
apple = Company.find_by({"name" => "Apple"})
puts apple.inspect

# 5. read a row's column value
puts apple["url"]

# 6. update a row's column value
amazon = Company.find_by({"name" => "Amazon"})
puts amazon["url"]
amazon["url"] = "https://amazon.com"
amazon.save # update row in table

#cali_companies.update_all({"state" => "California"})

# 7. delete a row
twitter = Company.find_by({"name" => "Twitter"})
twitter.destroy

#OR Company.find_by({"name" => "Twitter"}).destroy

puts "There are #{Company.all.count} companies"
