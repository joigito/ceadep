class CreateDatospers < ActiveRecord::Migration[6.0]
  def change
    create_table :datospers do |t|
      t.integer :docum
      t.text :apellido
      t.text :nombres

      t.timestamps
    end
  end
end
