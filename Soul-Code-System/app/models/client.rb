class Client < ActiveRecord::Base
	enum status: [:active,:inactive]
	has_many :addresses
	has_many :projects

	mount_uploader :photo, PhotoUploader
	mount_uploader :document_one, DocumentOneUploader
	mount_uploader :document_two, DocumentTwoUploader
	mount_uploader :document_three, DocumentThreeUploader
end
