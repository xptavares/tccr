# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140514113834) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "itinerario_realizados", force: true do |t|
    t.float    "latitude"
    t.float    "longitude"
    t.datetime "date"
    t.integer  "viagem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "itinerario_realizados", ["viagem_id"], name: "index_itinerario_realizados_on_viagem_id", using: :btree

  create_table "ponto_passagems", force: true do |t|
    t.integer  "rot_id"
    t.string   "ponto"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "ponto_passagems", ["rot_id"], name: "index_ponto_passagems_on_rot_id", using: :btree

  create_table "rots", force: true do |t|
    t.string   "nome"
    t.integer  "viagem_id"
    t.integer  "ponto_passagem_id"
    t.string   "origem"
    t.string   "destino"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rots", ["ponto_passagem_id"], name: "index_rots_on_ponto_passagem_id", using: :btree
  add_index "rots", ["viagem_id"], name: "index_rots_on_viagem_id", using: :btree

  create_table "veiculos", force: true do |t|
    t.string   "marca"
    t.string   "placa"
    t.string   "tipo"
    t.integer  "viagem_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "veiculos", ["viagem_id"], name: "index_veiculos_on_viagem_id", using: :btree

  create_table "viagems", force: true do |t|
    t.datetime "date"
    t.integer  "rot_id"
    t.integer  "veiculo_id"
    t.integer  "itinerario_realizado_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "viagems", ["itinerario_realizado_id"], name: "index_viagems_on_itinerario_realizado_id", using: :btree
  add_index "viagems", ["rot_id"], name: "index_viagems_on_rot_id", using: :btree
  add_index "viagems", ["veiculo_id"], name: "index_viagems_on_veiculo_id", using: :btree

end
