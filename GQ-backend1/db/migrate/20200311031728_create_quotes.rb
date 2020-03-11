class CreateQuotes < ActiveRecord::Migration[6.0]
  def change
    create_table :quotes do |t|
      t.text :content
      t.references :athlete, foreign_key: true
      t.references :sport, foreign_key: true
      t.timestamps
    end
  end
end
