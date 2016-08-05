class Survey < ActiveRecord::Base
	has_many :questions
	validates :survey_type, uniqueness: true
end
