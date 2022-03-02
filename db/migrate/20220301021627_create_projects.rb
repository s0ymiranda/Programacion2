class CreateProjects < ActiveRecord::Migration[7.0]
  def change
    create_table :projects do |t|
      t.integer :codigo
      t.date :fecha_inicio
      t.string :nombre
      t.float :valor
      t.text :descripcion
      t.references :Client, null: false, foreign_key: true
      t.references :Status, null: false, foreign_key: true

      t.timestamps
    end
  end
end
