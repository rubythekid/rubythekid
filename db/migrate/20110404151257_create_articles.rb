class CreateArticles < ActiveRecord::Migration
  def self.up
    create_table :articles do |t|
      t.references :category
      t.references :user
      t.string :title
      t.text :content
      t.boolean :publish
      t.boolean :font_page

      t.timestamps
    end
  end

  def self.down
    drop_table :articles
  end
end
