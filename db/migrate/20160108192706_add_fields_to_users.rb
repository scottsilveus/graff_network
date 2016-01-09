class AddFieldsToUsers < ActiveRecord::Migration
  def change
  	add_column :users, :type,       :string
  	add_column :users, :first_name, :string
  	add_column :users, :last_name, 	:string
  	add_column :users, :tag_name, 	:string
  	add_column :users, :gender, 	:string
  	add_column :users, :dob, 		:date
  	add_column :users, :summary, 	:string
  	add_column :users, :status, 	:string
  	add_column :users, :instagram, 	:string
  end
end
