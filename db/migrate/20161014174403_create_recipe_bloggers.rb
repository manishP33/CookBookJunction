class CreateRecipeBloggers < ActiveRecord::Migration[5.0]
  def change
    create_table :recipebloggers do |t|
      t.string :name
      t.text :img_url
      t.string :location

      t.timestamps
    end
  end
end
