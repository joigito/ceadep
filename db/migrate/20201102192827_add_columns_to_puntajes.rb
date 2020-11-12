class AddColumnsToPuntajes < ActiveRecord::Migration[6.0]
  def change
    add_column :puntajes, :total, :decimal
    add_column :puntajes, :fecha_ins, :datetime
    add_column :puntajes, :periodo, :string
    add_reference :puntajes, :mat_cargo, null: true, foreign_key: true
  end
end
