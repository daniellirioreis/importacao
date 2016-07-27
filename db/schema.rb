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

ActiveRecord::Schema.define(version: 20160726185216) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "arquivos", force: :cascade do |t|
    t.string   "caminho_do_arquivo"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.string   "arquivo"
    t.string   "xml"
    t.integer  "orcamento_id"
  end

  add_index "arquivos", ["orcamento_id"], name: "index_arquivos_on_orcamento_id", using: :btree

  create_table "orcamento_produtos", force: :cascade do |t|
    t.integer  "orcamento_id"
    t.string   "sequencia"
    t.string   "quant"
    t.string   "descricao"
    t.string   "vend_prod"
    t.string   "cf"
    t.string   "valor_unit"
    t.string   "valor_total"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "orcamento_produtos", ["orcamento_id"], name: "index_orcamento_produtos_on_orcamento_id", using: :btree

  create_table "orcamentos", force: :cascade do |t|
    t.string   "numero_orcamento"
    t.string   "data_emissao"
    t.string   "data_validade"
    t.string   "cpf_emitente"
    t.string   "inscest_emitente"
    t.string   "nome_emitente"
    t.string   "endereco_emitente"
    t.string   "bairro_emitente"
    t.string   "cidade_emitente"
    t.string   "uf_emitente"
    t.string   "cep_emitente"
    t.string   "telefone_emitente"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.string   "cpf_cnpj_cliente"
    t.string   "inscest_cliente"
    t.string   "nome_cliente"
    t.string   "endereco_cliente"
    t.string   "bairro_cliente"
    t.string   "cidade_cliente"
    t.string   "uf_cliente"
    t.string   "cep_cliente"
    t.string   "telefone_cliente"
    t.string   "email_cliente"
    t.integer  "arquivo_id"
  end

  add_index "orcamentos", ["arquivo_id"], name: "index_orcamentos_on_arquivo_id", using: :btree

  add_foreign_key "arquivos", "orcamentos"
  add_foreign_key "orcamento_produtos", "orcamentos"
  add_foreign_key "orcamentos", "arquivos"
end
