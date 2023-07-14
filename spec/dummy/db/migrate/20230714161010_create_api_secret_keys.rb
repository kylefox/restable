class CreateApiSecretKeys < ActiveRecord::Migration[7.0]
  def change
    create_table :api_secret_keys do |t|
      t.string :token, null: false
      t.references :account, null: false, foreign_key: true

      t.timestamps
    end
    add_index :api_secret_keys, :token, unique: true
  end
end
