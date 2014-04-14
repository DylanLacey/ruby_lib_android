# encoding: utf-8

describe 'accessibility_id' do
  t 'single_elements' do
    element = find_element(:accessibility_id, 'Animation')
    element.name.must_equal 'Animation'
  end

  t 'groups_of_elements' do
    elements = find_elements(:accessibility_id, 'Animation')
    elements.length.must_be :>=, 1
  end
end