class AddEncryptedEmailColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :email_ciphertext, :text
    add_column :users, :email_secure_search, :ore_64_8_v1
    add_column :users, :email_secure_text_search, :integer, limit: 2, array: true
  end
end
