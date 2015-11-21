class UpdateTemplateNamed < ActiveRecord::Migration
  def change
    rename_table :templates, :email_templates
    rename_table :placeholders, :template_holders
  end
end
