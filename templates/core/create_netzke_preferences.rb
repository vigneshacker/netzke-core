class CreateNetzkePreferences < ActiveRecord::Migration
  def self.up
    drop_table(:netzke_preferences) if table_exists?(:netzke_preferences)

    create_table :netzke_preferences do |t|
      t.string  :key
      t.text    :value
      t.integer :user_id
      t.integer :role_id

      t.timestamps
    end
  end

  def self.down
    drop_table :netzke_preferences
  end
end
