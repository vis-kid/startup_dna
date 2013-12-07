###  INTERVIEWEE

def interviewee_named(name)
	create :interviewee, name: name
end

def basic_interviewee
	create :interviewee
end

#####  VIDEO

def basic_video
	create :video
end

def video_has_a_quote
	video_with_quote 'Some quote'
end

def video_with_quote(quote)
	create :video, quote: quote
end

def video_has_category
  video_with_category 'Some awesome category'
end

def video_with_category(category)
	create :video, category: category
end

def video_has_description
	video_with_description 'Some awesome description'
end

def video_with_description(description)
	create :video, description: description
end
