module DomHelpers

  def user_sees_correct_page_title(page_title)
    expect(page).to have_title page_title
  end

  def page_has_correct_data_role(data_role)
    expect(page).to have_css "[ data-role=#{data_role} ]"
  end

  def user_sees_content(content)
    expect(page).to have_content content
  end
  
  def user_does_not_see_content(content)
    expect(page).not_to have_content content
  end

end

RSpec.configure do  |config|
  config.include DomHelpers
end
