# encoding: utf-8

=begin
  Skip:
    status # status patches are already tested in driver.rb
    raw_execute # debug output for Pry
=end

=begin
# Attributes are busted in Android.
# Blocked on https://github.com/appium/appium/issues/628
describe 'Selenium::WebDriver::Element methods' do
  element = s_first_text
  t 'value' do

  end

  t 'name' do

  end

  t 'tag_name' do

  end

  # location_rel # iOS Only. Android is blocked on https://github.com/appium/appium/issues/627
end
=end

describe 'common patch' do
  # By default, the webdriver gem will return message instead of origValue
  # {"message":"An unknown server-side error occurred while processing the command.","origValue":"Strategy id is not valid."}
  t 'error_message' do
    value = ''
    begin
      set_wait 0
      find_element(:id, 'ok')
    rescue Exception => e;
      value = e.message
    end
    value.must_equal 'Strategy id is not valid.'
  end
end