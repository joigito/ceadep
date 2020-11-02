class CreatePuntajes < ActiveRecord::Migration[6.0]
  def change
    create_table :puntajes do |t|
      t.references :datosper, null: false, foreign_key: true
      t.decimal :titulo
      t.decimal :antig_tit
      t.decimal :antig_doc
      t.decimal :concepto
      t.decimal :prom_tit
      t.decimal :public
      t.decimal :becas_otros
      t.decimal :concursos
      t.decimal :antec_doc
      t.decimal :red_fed

      t.timestamps
    end
  end
end
