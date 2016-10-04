class CreateKeyPairs < ActiveRecord::Migration[5.0]
  def change
    create_table :key_pairs do |t|
      t.string :key
      t.string :secret_key
      t.boolean :active

      t.timestamps
    end
  end
end
