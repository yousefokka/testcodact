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

ActiveRecord::Schema.define(version: 2020_08_09_014156) do

  create_table "employees", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "jobtybe"
    t.string "jobcategory"
    t.string "address"
    t.string "salary"
    t.string "Gander"
    t.string "Qualifcation"
    t.string "mobile"
    t.string "Degree"
    t.string "Indestry"
    t.integer "Exprense"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.text "employeeBio"
    t.string "Datafrom"
    t.string "Datato"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "funds", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "idea_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "Responce", default: "Waiting"
    t.index ["idea_id"], name: "index_funds_on_idea_id"
    t.index ["user_id"], name: "index_funds_on_user_id"
  end

  create_table "ideafavourits", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "idea_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["idea_id"], name: "index_ideafavourits_on_idea_id"
    t.index ["user_id"], name: "index_ideafavourits_on_user_id"
  end

  create_table "ideamakers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "addree"
    t.string "Gander"
    t.string "qualifiction"
    t.string "mobile"
    t.string "interstingfield"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.text "ideamakerBio"
    t.string "Website"
    t.integer "size"
    t.string "ownernaem"
    t.string "ownerphono"
    t.string "owneraddress"
    t.string "companyemail"
    t.index ["user_id"], name: "index_ideamakers_on_user_id"
  end

  create_table "ideas", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.string "Management"
    t.string "ideacatagory"
    t.string "address"
    t.string "funding"
    t.text "ideaDescription"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_ideas_on_user_id"
  end

  create_table "jobfavourits", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "job_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["job_id"], name: "index_jobfavourits_on_job_id"
    t.index ["user_id"], name: "index_jobfavourits_on_user_id"
  end

  create_table "jobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title"
    t.string "jtype"
    t.string "catagory"
    t.string "address"
    t.string "salary"
    t.string "gander"
    t.string "qualification"
    t.string "experience"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.index ["user_id"], name: "index_jobs_on_user_id"
  end

  create_table "sponsers", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name"
    t.string "Address"
    t.string "Catagory"
    t.string "Gander"
    t.string "Funding"
    t.string "Typemanagment"
    t.string "phone"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "user_id"
    t.string "exprience"
    t.text "sponcerBio"
    t.index ["user_id"], name: "index_sponsers_on_user_id"
  end

  create_table "submittings", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.bigint "job_id"
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "Responce", default: "Waiting"
    t.index ["job_id"], name: "index_submittings_on_job_id"
    t.index ["user_id"], name: "index_submittings_on_user_id"
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "auth_token"
    t.index ["auth_token"], name: "index_users_on_auth_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
