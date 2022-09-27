class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.boolean :featured
      t.string :title
      t.string :url
      t.string :imageUrl
      t.string :newsSite
      t.string :summary
      t.references :launch
      t.references :event

      t.timestamps
    end
  end
end
