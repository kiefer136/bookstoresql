class Contact < ActiveRecord::Base
  

end
  # attr_accessor :name, :email
  
  # def initialize(id, name, email)
  #   @id = id
  #   @name = name
  #   @email = email
  # end

  # def save
  #   @@conn.exec('UPDATE contacts SET name = $2 WHERE id = $1::int;',[@id, @name])
  # end

  # def destroy
  #   @@conn.exec('DELETE FROM contacts WHERE id = $1::int;', [@id])
  # end

  #   def self.connection
  #     @@conn = PG::Connection.new(dbname: 'contacts', host: 'localhost', user: 'kiefer', password: 'pass')
  #   end
    

  #   # def self.all
  #   #   @@conn = self.connection
  #   #   result = @@conn.exec('SELECT * FROM contacts;')
  #   #   total_ids = 0
  #   #   result.each_row do |row| 
  #   #     id = row[0]
  #   #     name = row[1] 
  #   #     email = row[2 ]
  #   #     total_ids += 1
  #   #     puts "#{id}: #{name} (#{email})"
  #   #   end
  #   #   puts "---"
  #   #   puts "#{total_ids} records total"
  #   # end

  #   def self.create(attributes)

  #     # @@conn = self.connection
  #     # result = @@conn.exec_params("INSERT INTO contacts (name, email) VALUES ($1, $2)", [attributes[:name], attributes[:email]])

  #     # result.each_row do |row|
  #     #   id = row.readlines.size
  #     #   row << "#{(id).to_s},#{name},#{email}\n"
  #       puts "Contact succesfully created"
  #     end
  #   end
    
  #   def self.find(id_in)
  #     @@conn = self.connection
  #     contact = @@conn.exec("SELECT * FROM contacts WHERE id = $1::int;", [id_in])
  #     a_contact = contact[0]
  #     return Contact.new(a_contact['id'], a_contact['name'], a_contact['email'])
  #   end

  #   def self.search(term)
  #     @@conn = self.connection
  #     res = @@conn.exec("SELECT * FROM contacts WHERE name LIKE '%#{term}%' OR email LIKE '%#{term}%';")
  #     total_ids = 0
  #     res.each_row do |row|
  #       id = row[0]
  #       name = row[1].downcase
  #       email = row[2].downcase
  #       if /#{term}/ix.match(name) || /#{term}/ix.match(email)
  #        puts "#{id}: #{name} (#{email})"
  #        total_ids += 1
  #      end
  #    end
  #    puts "---"
  #    puts "#{total_ids} records total"
  #  end


  #  def self.update(id)
  #   @@conn = self.connection
  #   up_contact = Contact.find(id)
  #   puts up_contact.name
  #   puts "Enter a new name for #{up_contact.name}"
  #   name_new = STDIN.gets.chomp
  #   up_contact.name = name_new
  #   up_contact.save
  #   puts "Changed name to #{up_contact.name}"
  #  end

  #  def self.delete(id)
  #   @@conn = self.connection
  #   contact = Contact.find(id)
  #   puts "Do you wish to delete this contact?"
  #   answ = STDIN.gets.chomp
  #   if answ == 'yes'
  #     contact.destroy
  #     puts 'contact deleted'
  #   else
  #     return nil
  #   end
  #  end
