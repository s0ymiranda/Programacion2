class CreateClients < ActiveRecord::Migration[7.0]
  def change
    create_table :clients do |t|
      t.string :nombre
      t.boolean :persona_juridica
      t.string :nro_doc
      t.string :telefono
      t.references :Company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
