class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :imageUrl
      t.string :summary
      t.string :publishedAt

      t.timestamps
    end
  end
end
