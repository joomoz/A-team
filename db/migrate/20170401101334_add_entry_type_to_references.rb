class AddEntryTypeToReferences < ActiveRecord::Migration
  def change
    add_column :references, :entry_type, :string
  end
end
