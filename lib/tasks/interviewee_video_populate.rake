namespace :db do
	desc 'Fill database with interviewees that have videos'
	task populate_interviewees_with_videos: :environment do


		50.times do
			name = Faker::Name.name
			twitter_handle = Faker::Name.name
			weblink = Faker::Internet.url
			about_text = Faker::Lorem.paragraph(2)

			interviewee = Interviewee.create!(name: name, 
																				twitter_handle: twitter_handle,
																				weblink: weblink,
																				about_text: about_text)

			30.times do
				quote = Faker::Name.name
				category = Faker::Name.name
				description = Faker::Company.catch_phrase

				video = Video.create!(quote: quote,
															category: category,
															description: description)

			  interviewee.videos << video
			end
		end

	end
end
