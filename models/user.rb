class User < ActiveRecord::Base
  has_many :email_templates
  has_many :template_holders
end
