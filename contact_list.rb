require 'active_record'
require 'pg'
require_relative './contact'
require_relative './db' 


def search_name_email(term)
  contacts = Contact.where("name LIKE '%#{term}%' OR email LIKE '%#{term}%'")
  contacts.each {|contact| puts "#{contact.id}: #{contact.name}, #{contact.email}"}
end

def find_by_id(id)
  contact = Contact.find(id)
  puts "#{id}: #{contact.name}, #{contact.email}"
end

def create(name, email)
  Contact.create(name: name, email: email)
end

def show_all_contact 
  contacts = Contact.all
  contacts.each {|contact| puts "#{contact.id}: #{contact.name}, #{contact.email}"}
end 

def update(id)
  puts id
  hombre = Contact.find_by_id(id)
  puts "Enter new name for #{hombre.name}"
  name = STDIN.gets.chomp
  hombre.name = name 
  hombre.save
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
  print "Enter the name of the contact you would like to enter:"
  name = STDIN.gets.chomp 
  print "Enter email address of the contact you would like to enter:"
  email = STDIN.gets.chomp
  create(name, email)

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
