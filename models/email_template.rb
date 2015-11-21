class EmailTemplate < ActiveRecord::Base
  belongs_to :user
  has_many :template_holders
end
