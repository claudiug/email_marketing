class TemplateHolder < ActiveRecord::Base
  belongs_to :email_template
  belongs_to :user
end
