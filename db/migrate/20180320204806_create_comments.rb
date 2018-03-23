class CreateComments < ActiveRecord::Migration[5.1]
  def change
    create_table :comments do |t|
      t.string :name
      t.text :doby
      t.references :post, index: true, foreign_key: true

      t.timestamps
    end
  end
end
