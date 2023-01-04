class InstallCustomDbType < ActiveRecord::Migration[7.0]
  def up
    CipherStash::Protect::DatabaseExtensions.install
  end

  def down
    CipherStash::Protect::DatabaseExtensions.remove
  end
end
