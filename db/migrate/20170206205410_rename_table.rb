class RenameTable < ActiveRecord::Migration
	def change
		rename_table :storage, :urls
	end
end
