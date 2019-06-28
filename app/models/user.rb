class User < ActiveRecord::Base
  validates_presence_of :name, :email, :password
  
  def up
    create_table :users do |t| 
      t.string :name 
      t.string :email 
      t.string :password 
  end 
  
  def down 
    drop_table :users 
  end 
  
  
end