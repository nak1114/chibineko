class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :name, null: false
      t.integer :user_id

      t.timestamps null: false
    end
    add_index :teams, :name
  end
end
