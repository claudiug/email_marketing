User.destroy_all
EmailTemplate.destroy_all
TemplateHolder.destroy_all

10.times do |t|
  User.create!(name: "name#{t}", email: "email_#{t}@example.com")
end

User.all.each do |user|
  10.times do |t|
    EmailTemplate.create!(body: "amazing text will be here_#{t}", subject: "a subject_#{t}", user_id: user.id)
  end
end

EmailTemplate.all.each do |template|
  10.times do |t|
    TemplateHolder.create!(email_template_id: template.id, holder: "holder_#{t}" )
  end
end
