module DomHelpers

	def user_sees_correct_page_title(page_title) 
		expect(page).to have_title page_title
	end

	def element_has_correct_data_role(data_role)
		expect(page).to have_css "[ data-role=#{data_role} ]"
	end

	def user_sees_content(content)
    expect(page).to have_content content
	end

	def user_does_not_see_content(content)
    expect(page).not_to have_content content
	end

	def interviewee_named(name)
		create :interviewee, name: name
	end

	def basic_interviewee
		create :interviewee
	end

	def basic_video
		create :video
	end

	def video_with_quote(quote)
    create :video, quote: quote
	end

	def video_with_category(category)
    create :video, category: category
	end

end

RSpec.configure do  |config| 
	config.include DomHelpers
end
