require 'active_record'
ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'contactv3',
  username: 'kiefer',
  password: 'pass',
  host: 'localhost',
  port: 5432,
  pool: 5,
  encoding: 'unicode',
  min_messages: 'error'
)

# puts 'Setting up Database (recreating tables) ...'

# ActiveRecord::Schema.define do
#   drop_table :contacts if ActiveRecord::Base.connection.table_exists?(:contacts)
#   create_table :contacts do |t|
#     t.column :name, :string
#     t.column :email, :string
#     t.timestamps null: false
#   end
# end
# puts 'Setup DONE'