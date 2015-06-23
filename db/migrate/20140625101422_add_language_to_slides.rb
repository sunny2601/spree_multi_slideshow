class AddLanguageToSlides < ActiveRecord::Migration
	def change
    	add_column :spree_slides, :language, :string
    end
end