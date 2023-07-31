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

ActiveRecord::Schema[7.0].define(version: 2023_07_31_184922) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alembic_version", primary_key: "version_num", id: { type: :string, limit: 32 }, force: :cascade do |t|
  end

  create_table "diet_blogs", force: :cascade do |t|
    t.string "title"
    t.string "image"
    t.string "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "vehicle_make", id: :uuid, default: nil, force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "status", limit: 50, null: false
    t.index ["name"], name: "ix_vehicle_make_name", unique: true
  end

  create_table "vehicle_model", id: :uuid, default: nil, force: :cascade do |t|
    t.uuid "make_id", null: false
    t.string "name", limit: 255, null: false
    t.string "status", limit: 50, null: false
    t.index ["name"], name: "ix_vehicle_model_name", unique: true
  end

  create_table "vehicle_model_code", id: :uuid, default: nil, force: :cascade do |t|
    t.uuid "model_id", null: false
    t.string "name", limit: 255, null: false
    t.string "status", limit: 50, null: false
    t.index ["name"], name: "ix_vehicle_model_code_name", unique: true
  end

  create_table "vehicle_parts", id: :uuid, default: nil, force: :cascade do |t|
    t.string "name", limit: 255, null: false
    t.string "status", limit: 50, null: false
    t.uuid "model_code_id"
    t.index ["name"], name: "ix_vehicle_parts_name", unique: true
  end

  create_table "vehicle_parts_price", id: :uuid, default: nil, force: :cascade do |t|
    t.uuid "parts_id", null: false
    t.string "price", limit: 255, null: false
    t.string "country", limit: 50
    t.string "region", limit: 50
    t.string "currency", limit: 50
    t.string "status", limit: 50, null: false
    t.index ["price"], name: "ix_vehicle_parts_price_price", unique: true
  end

end
