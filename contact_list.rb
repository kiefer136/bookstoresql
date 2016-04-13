require_relative './contact'
require 'pg'


def search_name_email(term)
  Contact.search(term)
end

def find_by_id(id)
  found_con = Contact.find(id)
  name = found_con.name
  email = found_con.email
  puts "#{name} #{email}"
end

def show_all_contact 
  Contact.all
end 

def update(id)
  Contact.update(id)
end

def delete(id)
  Contact.delete(id)
end


if ARGV == []
  puts "Here is a list of available commands"
  puts "new - Create a new contact"
  puts "list - List all contacts"
  puts "search - Search contacts"
  puts "update - Update contact"
  puts "delete - Delete contact"
elsif ARGV[0] == "list" 
  show_all_contact
elsif ARGV[0] == "new"
  print "Enter first name and last name of the contact you would like to enter:"
  name = STDIN.gets.chomp 
  print "Enter email address of the contact you would like to enter:"
  email = STDIN.gets.chomp
  Contact.create(name: name, email: email)
elsif ARGV[0] == "find" 
  puts "Enter the ID of the person you would like to seach for:"
  id = STDIN.gets.chomp
  find_by_id(id)
elsif ARGV[0] == "search"
  term = ARGV[1]
  search_name_email(term)
elsif ARGV[0] == 'update'
  id = ARGV[1]
  update(id)
elsif ARGV[0] == 'delete'
  id = ARGV[1]
  delete(id)
end
