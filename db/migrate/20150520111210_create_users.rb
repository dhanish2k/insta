class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :uid
      t.string :name
      t.string :picture
      t.string :token
      t.string :secret
      t.string :expires
      t.datetime :expires_at

      t.timestamps
    end
  end
end
