namespace :db do
  desc 'Fill database with interviewees that have videos'
  task populate_interviewees_with_videos: :environment do

    50.times do
      name = Faker::Name.name
      twitter_handle = '@' + Faker::Name.name
      weblink = Faker::Internet.url
      about_text = Faker::Lorem.paragraph(5)
      interviewee = create_interviewee

      30.times do
        quote = '“' + Faker::Company.catch_phrase + '”'
        category = 'Some Example Category'
        description = Faker::Lorem.paragraph(5)

        video = create_video
        interviewee.videos << video
      end
    end
  end

    def create_interviewee
      Interviewee.create!(name: name, twitter_handle: twitter_handle, weblink: weblink, about_text: about_text)
		end

		def create_video
      Video.create!(quote: quote, category: category, description: description)
		end

end
