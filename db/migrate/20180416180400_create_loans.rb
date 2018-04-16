class CreateLoans < ActiveRecord::Migration[5.2]
  def change
    create_table :loans do |t|
      t.references :item, foreign_key: true
      t.belongs_to :borrower
      t.datetime :loaned
      t.datetime :returned
    end
  end
end