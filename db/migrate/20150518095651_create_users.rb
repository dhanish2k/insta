class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :scoped_id
      t.string :first_name
      t.string :last_name
      t.string :middle_name
      t.string :name
      t.string :link
      t.string :picture
      t.string :cover
      t.datetime :updated_at

      t.timestamps
    end
  end
end
