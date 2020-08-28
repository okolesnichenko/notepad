class CreateArticle < ActiveRecord::Migration[6.0]
  def up
    create_table :articles do |t|
      t.string :name
      t.timestamps
    end
  end

  def down
    drop_table :articles
  end
end
