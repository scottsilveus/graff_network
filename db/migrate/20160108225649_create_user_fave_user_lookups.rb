class CreateUserFaveUserLookups < ActiveRecord::Migration
  def change
    create_table :user_fave_user_lookups do |t|
    	t.belongs_to :follower
    	t.belongs_to :followee

      t.timestamps null: false
    end
    add_index :user_fave_user_lookups, :follower_id
    add_index :user_fave_user_lookups, :followee_id
    add_index :user_fave_user_lookups, [:follower_id, :followee_id], unique: true
  end
end
