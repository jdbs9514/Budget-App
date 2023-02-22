class JoinTableCategoryPayment < ActiveRecord::Migration[7.0]
  def change
    create_table :join_table_category_payment do |t|
      t.references :category, null: false, foreign_key: true
      t.references :payment, null: false, foreign_key: true
      t.timestamps
    end
  end
end
