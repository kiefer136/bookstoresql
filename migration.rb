class CreateTables < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name
      t.string :city
      t.timestamps
    end

    create_table :players do |t|
      t.references :team
      t.timestamps
    end
  end

  def up 

  end

  def down

  end
end



#^^^^^ RAKE ^^^^^
