# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_11_02_192827) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "datospers", force: :cascade do |t|
    t.integer "docum"
    t.text "apellido"
    t.text "nombres"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "mat_cargos", force: :cascade do |t|
    t.string "nombre"
    t.string "escuela"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "puntajes", force: :cascade do |t|
    t.bigint "datosper_id", null: false
    t.decimal "titulo"
    t.decimal "antig_tit"
    t.decimal "antig_doc"
    t.decimal "concepto"
    t.decimal "prom_tit"
    t.decimal "public"
    t.decimal "becas_otros"
    t.decimal "concursos"
    t.decimal "antec_doc"
    t.decimal "red_fed"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.decimal "total"
    t.datetime "fecha_ins"
    t.string "periodo"
    t.bigint "mat_cargo_id"
    t.index ["datosper_id"], name: "index_puntajes_on_datosper_id"
    t.index ["mat_cargo_id"], name: "index_puntajes_on_mat_cargo_id"
  end

  add_foreign_key "puntajes", "datospers"
  add_foreign_key "puntajes", "mat_cargos"
end
