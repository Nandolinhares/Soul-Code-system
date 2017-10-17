class AddDocumentTwoToMembers < ActiveRecord::Migration
  def change
    add_column :members, :document_two, :string
  end
end
