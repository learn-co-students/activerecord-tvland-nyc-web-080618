class AddUpdates2 < ActiveRecord::Migration[5.1]
  #define a change method in which to do the migration
  def change
    add_column :characters, :catchphrase, :text
  end
end
