class CreateEditorsPosts < ActiveRecord::Migration[8.0]
  def change
    create_table :editors_posts do |t|
      t.references :post, null: false, foreign_key: true
      t.references :editor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
