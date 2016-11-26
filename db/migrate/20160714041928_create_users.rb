class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.integer :profile_id
      t.string  :profile_type

      t.timestamps
    end

    add_index :users, [:profile_id, :profile_type]
  end
end
