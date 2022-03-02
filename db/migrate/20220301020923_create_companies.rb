class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :nombre
      t.string :rif
      t.integer :telefono
      t.references :City, null: false, foreign_key: true

      t.timestamps
    end
  end
end
