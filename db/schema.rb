# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2022_03_01_021627) do
  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "State_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["State_id"], name: "index_cities_on_State_id"
  end

  create_table "clients", force: :cascade do |t|
    t.string "nombre"
    t.boolean "persona_juridica"
    t.string "nro_doc"
    t.string "telefono"
    t.integer "Company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Company_id"], name: "index_clients_on_Company_id"
  end

  create_table "companies", force: :cascade do |t|
    t.string "nombre"
    t.string "rif"
    t.integer "telefono"
    t.integer "City_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["City_id"], name: "index_companies_on_City_id"
  end

  create_table "projects", force: :cascade do |t|
    t.integer "codigo"
    t.date "fecha_inicio"
    t.string "nombre"
    t.float "valor"
    t.text "descripcion"
    t.integer "Client_id", null: false
    t.integer "Status_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Client_id"], name: "index_projects_on_Client_id"
    t.index ["Status_id"], name: "index_projects_on_Status_id"
  end

  create_table "states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "statuses", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "cities", "States"
  add_foreign_key "clients", "Companies"
  add_foreign_key "companies", "Cities"
  add_foreign_key "projects", "Clients"
  add_foreign_key "projects", "Statuses"
end
