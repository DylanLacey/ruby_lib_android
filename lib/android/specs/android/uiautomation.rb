# encoding: utf-8

describe 'uiautomator' do
  t 'single_elements' do
    element = find_element(:uiautomator, 'new UiSelector().description("Animation")')
    element.name.must_equal "Animation"
  end

  t 'groups_of_elements' do
    elements = find_elements(:uiautomator, 'new UiSelector().clickable(true)')
    elements.length.must_be :>=, 11
  end
end