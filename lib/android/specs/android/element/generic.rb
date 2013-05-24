# encoding: utf-8

describe 'android/element/generic' do
  def m method
    r = method(method).call 'tent'
    r = r.first if r.kind_of? Array
    r.class.must_equal Selenium::WebDriver::Element
    r.text.must_equal 'Content'
  end

  t 'find' do
    m :find
  end

  t 'text' do
    m :text
  end

  t 'texts' do
    m :texts
  end

  t 'name' do
    m :name
  end

  t 'names' do
    names('a').length.must_equal 5
  end

  t 'scroll_to' do
    text('Views').click
    e = scroll_to 'rotating button'
    e.text.must_equal 'Rotating Button'
    # back to start activity
    back; sleep 0.5
  end
end