class CreateUpcLists < ActiveRecord::Migration[6.1]
  def change
    create_table :upc_lists do |t|
      t.references :discount_rule, null: false, foreign_key: true, index: true
      t.string :name

      t.timestamps
    end
  end
end
