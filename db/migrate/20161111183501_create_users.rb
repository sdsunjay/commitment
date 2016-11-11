class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name, limit: 255,   default: "",    null: false
      t.string :email, limit: 255,   default: "",    null: false
      t.integer :school_id

      t.timestamps null: false
    end
  end
end
