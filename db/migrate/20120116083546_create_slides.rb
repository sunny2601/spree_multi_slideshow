class CreateSlides < ActiveRecord::Migration
  def change
    create_table :spree_slides do |t|
      t.string :title, :url
      t.text :presentation
      t.boolean :enabled, :default => true
      
      t.string   :attachment_content_type, :attachment_file_name
      t.datetime :attachment_updated_at
      t.integer  :attachment_size, :position
      
      t.references :slideable, :polymorphic => true
      t.references :slideshow
      
      t.timestamps
    end
  end
end
