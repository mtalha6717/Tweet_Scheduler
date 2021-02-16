class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :email ,:null => false
      #Ex:- :null => false
      t.string :password_digest, :null => false
      #Ex:- :null => false

      t.timestamps
    end
  end
end