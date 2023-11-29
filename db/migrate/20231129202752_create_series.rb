class CreateSeries < ActiveRecord::Migration[7.0]
  def change
    create_table :series do |t|
      t.references :user, null: false, foreign_key: true
      t.string :title
      t.integer :release_year

      t.timestamps
    end
  end
end
