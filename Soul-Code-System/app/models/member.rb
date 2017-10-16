class Member < ActiveRecord::Base
  belongs_to :department
  has_many :categorizations
  has_many :projects, through: :categorizations
end
