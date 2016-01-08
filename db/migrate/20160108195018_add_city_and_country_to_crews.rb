class AddCityAndCountryToCrews < ActiveRecord::Migration
  def change
  	add_column :crews, :city, :string
  	add_column :crews, :state, :string
  	add_column :crews, :country, :string
  end
end
