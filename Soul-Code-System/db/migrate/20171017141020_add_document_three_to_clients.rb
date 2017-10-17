class AddDocumentThreeToClients < ActiveRecord::Migration
  def change
    add_column :clients, :document_three, :string
  end
end
