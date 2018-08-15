class RemoveColumnFromShow < ActiveRecord::Migration[4.2]

  def self.up
    remove_column :shows, :call_letters
end


end
