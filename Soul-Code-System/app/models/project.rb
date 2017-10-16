class Project < ActiveRecord::Base
  belongs_to :client
  enum status: [:active,:inactive]
  has_many :categorizations
  has_many :members, through: :categorizations
end
