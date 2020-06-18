FILEPATH = "#{Rails.root}/db/psys.json"

serialized_psys = File.read(FILEPATH)
psy_array = JSON.parse(serialized_psys, symbolize_names: true)
count = 0
psy_array.each do |hash|
  user = User.new
  user.civility = hash[:civility]
  user.first_name = hash[:first_name]
  user.last_name = hash[:last_name]
  user.phone = hash[:phone]
  user.description = hash[:description]
  user.email = "docteur#{count += 1}@gmail.com"
  user.password = "123456"
  user.password_confirmation = "123456"
  user.is_pro = true
  unless hash[:workplace].empty?
    hash[:workplace].each do |address|
      office = Office.new
      if address[:address_name].nil?
        office.name = "Addresse"
      else
        office.name = address[:address_name]
      end
      office.address = "#{address[:street]}, #{address[:city]} #{address[:postal]}"
      office.save!
    end
  end
  unless hash[:avatar].nil?
    avatar = Down.download(hash[:avatar])
    user.avatar.attach(io: avatar, filename: "psy_id_#{user.id}.jpg", content_type: 'image/jpg')
  end
  hash[:job].each do |job|
    job = Job.new
    job.job_name = job
    job.user = user
    job.save!
  end
  user.save!
end
