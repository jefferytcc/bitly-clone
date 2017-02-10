class AddClickCountColumn < ActiveRecord::Migration
	def change
		add_column :urls, :clickCount , :integer
	end
end
