class Role < ApplicationRecord
	has_many :user_roles
	has_many :users, through: :user_roles

	Admin = 'admin'
	StudyManger = 'study_manager'
	StudyContributor = 'study_contributor'
	SurveyContributor = 'survey_contributor'
	SiteManager = 'site_manager'

	AllRoles = [Admin, StudyManger, StudyContributor, SurveyContributor, SiteManager]
end
