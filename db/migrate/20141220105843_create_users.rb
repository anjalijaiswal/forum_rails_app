class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :password
      t.text :about_me
      t.string :dp
      t.boolean :admin

      t.timestamps
    end
  end
end
