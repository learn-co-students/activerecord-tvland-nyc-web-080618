class AddUpdates4 < ActiveRecord::Migration[5.1]
  #define a change method in which to do the migration
  def change
    add_column :shows, :day, :text
    add_column :shows, :season, :text
  end
end
