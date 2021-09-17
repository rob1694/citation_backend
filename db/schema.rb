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

ActiveRecord::Schema.define(version: 2021_09_17_175718) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "citations", force: :cascade do |t|
    t.bigint "offender_id", null: false
    t.bigint "enforcer_id", null: false
    t.string "violation"
    t.integer "amount"
    t.string "due_date"
    t.boolean "summons"
    t.string "summons_date"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["enforcer_id"], name: "index_citations_on_enforcer_id"
    t.index ["offender_id"], name: "index_citations_on_offender_id"
  end

  create_table "enforcers", force: :cascade do |t|
    t.string "name"
    t.integer "badge_number"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "offenders", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "citations", "enforcers"
  add_foreign_key "citations", "offenders"
end
