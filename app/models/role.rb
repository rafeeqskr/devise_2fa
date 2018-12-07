class Role < ApplicationRecord
	has_many :user_roles
	has_many :users, through: :user_roles

	DEFAULT_ROLES= %w(admin study_manager study_contributor survey_contributor site_manager).freeze
end
