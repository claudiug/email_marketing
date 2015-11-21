class FixNameOfTemplateId < ActiveRecord::Migration
  def change
    rename_column :template_holders, :template_id, :email_template_id
  end
end
