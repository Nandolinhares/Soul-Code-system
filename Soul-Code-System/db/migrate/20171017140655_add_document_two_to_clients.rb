class AddDocumentTwoToClients < ActiveRecord::Migration
  def change
    add_column :clients, :document_two, :string
  end
end
