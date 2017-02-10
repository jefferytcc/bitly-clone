class CreateUrls < ActiveRecord::Migration
	def change
		create_table :storage do |t|
      	t.string :longUrl
      	t.string :shortUrl
  		end
	end
end
