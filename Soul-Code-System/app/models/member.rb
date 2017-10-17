class Member < ActiveRecord::Base
  belongs_to :department
  has_many :categorizations
  has_many :projects, through: :categorizations

  mount_uploader :photo, PhotoUploader
  mount_uploader :document_one, DocumentOneUploader
  mount_uploader :document_two, DocumentTwoUploader
end
