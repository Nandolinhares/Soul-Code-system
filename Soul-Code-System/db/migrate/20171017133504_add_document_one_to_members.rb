class AddDocumentOneToMembers < ActiveRecord::Migration
  def change
    add_column :members, :document_one, :string
  end
end
