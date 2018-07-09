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

ActiveRecord::Schema.define(version: 20180709001412) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "artists", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at",                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             null: false
    t.datetime "updated_at",                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                             null: false
    t.string   "image_ref",   default: "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAOEAAADhCAMAAAAJbSJIAAAAUVBMVEW1tbX///+2trbR0dGvr6/MzMyysrL7+/v19fWkpKSoqKienp69vb3BwcHi4uLX19fs7OyUlJSLi4vn5+eHh4eampqSkpLHx8f29vbb29vU1NQBbJK+AAADJElEQVR4nO3c21bqMBSF4SSE9EipIFR5/wfdLQe3Cu2Va63OjPnfOOpN+EZ6IAF1IfdccHlHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOJHIX4U/n3pmt546sLdfmrQG1BbmC5+6hjVRlQXbq7CMnuh36mNaCXs1CbRSqg3iWbCUuuBYSb0nRLRTugvOpeiodBfVGbRUug/NYimQpVr0VboeyduNBb6opUmWgt9MQgTzYXeb2WJKxAKE+2EH/+JoieqnXAI3243giPaCbd10389NAQn0VAYQ7N9HGzkiJZCF+r2cVFmKnQhPi5GuQWxrXA8vs+i3Jtwa6GLt+3FspYa0VzoUnk9zFl4+43Ygt9e6FLuc+hin7swddNhI/U61iIsTrkLuypj4fU6HOqchcV4JHaSrkE4vW/r3zIWpmkJ1YqdpGsQHsc7qdwUrkDoxsvwIvY0XIHwepI2me5i3H7z4f1e8CS1F46L/OMhz93Eh7A6vUfJ12AudCEF0ZdgL5SOwr8uV+H9+5Zx/JGlMLnhsy/H+m7rMhSm0BX+q6LMTTj6/OsyEaahmAFmIkzbOZ/3Qw7CNMwD/S6Hb+61C0C1L5hKClO/JBQb9leSwt0S0MvtzPxMUDhtwCwkuer9nqRw9kEx1QluzfxIULh4n/G11pf1BYWLl2F31lrTCArDAvDjnMPfW8RyXtiIfdT0lOSd5jIPlPsg5inRJ/7MzbR/07qPTokKX99NN+96p6iTfucdnmfxWB1Et0efEl49Vb/Wv109TqDu3pfwCjg01f4xj8Vxd1D3ye9ihNScq9i2ITaHwymq+zR2okJIsa6qOqZg4FPaLw3X5Md5Pbjynrd+FOJHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOJHIX4U4kchfhTiRyF+FOIX7v+0IuP+AeAhGRGRvocjAAAAAElFTkSuQmCC"
  end

  create_table "services", force: :cascade do |t|
    t.string   "title"
    t.string   "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "tracks", force: :cascade do |t|
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "artist_id"
    t.integer  "post_id"
    t.index ["artist_id"], name: "index_tracks_on_artist_id", using: :btree
    t.index ["post_id"], name: "index_tracks_on_post_id", using: :btree
  end

  add_foreign_key "tracks", "artists"
  add_foreign_key "tracks", "posts"
end
