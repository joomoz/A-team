class AddManyToReferences < ActiveRecord::Migration
  def change
    add_column :references, :annote, :text
    add_column :references, :chapter, :text
    add_column :references, :crossref, :text
    add_column :references, :howpublished, :text
    add_column :references, :institution, :text
    add_column :references, :school, :text
    add_column :references, :type, :text
  end
end
