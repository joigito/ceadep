class CreateMatCargos < ActiveRecord::Migration[6.0]
  def change
    create_table :mat_cargos do |t|
      t.string :nombre
      t.string :escuela

      t.timestamps
    end
  end
end
