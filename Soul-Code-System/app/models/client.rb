class Client < ActiveRecord::Base
	enum status: [:active,:inactive]
	has_many :addresses
	has_many :projects
end
