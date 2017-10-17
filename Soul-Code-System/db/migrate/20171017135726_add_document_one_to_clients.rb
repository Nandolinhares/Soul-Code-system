class AddDocumentOneToClients < ActiveRecord::Migration
  def change
    add_column :clients, :document_one, :string
  end
end
