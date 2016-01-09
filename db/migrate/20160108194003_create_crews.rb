class CreateCrews < ActiveRecord::Migration
  def change
    create_table :crews do |t|
    	t.string :email
    	t.string :name
    	t.string :summary

      t.timestamps null: false
    end
  end
end
