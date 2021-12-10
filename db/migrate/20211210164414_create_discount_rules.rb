class CreateDiscountRules < ActiveRecord::Migration[6.1]
  def change
    create_table :discount_rules do |t|
      t.references :program, null: false, foreign_key: true, index: true
      t.string :name

      t.timestamps
    end
  end
end
