# encoding: utf-8
describe 'common/helper.rb' do
  # wait is a success unless an error is raised
  # max_wait=0 is infinity to use 0.1
  t 'wait' do
    # successful wait should not error
    message = nil
    begin
      wait(0.1,0) { true }
    rescue Exception => e
      message = e.message
    end
    message.must_equal nil

    # failed wait should error
    begin
      wait(0.1,0) { raise 'error' }
    rescue Exception => e
      message = e.message
    end
    message.must_equal 'execution expired'
  end

  # wait_true is a success unless the value is not true
  t 'wait_true' do
    # successful wait should not error
    message = nil
    begin
      wait_true(0.1,0) { true }
    rescue Exception => e
      message = e.message
    end
    message.must_equal nil

    # failed wait should error
    begin
      wait_true(0.1,0) { false }
    rescue Exception => e
      message = e.message
    end
    message.must_equal 'execution expired'
  end

  # t 'id' # id is for Selendroid
=begin
  t 'back' do

  end

  t 'session_id' do

  end

  t 'xpath' do

  end

  t 'xpaths' do

  end

  t 'ele_index' do

  end

  t 'find_eles' do

  end

  t 'find_ele_by_text' do

  end

  t 'find_eles_by_text' do

  end

  t 'find_ele_by_attr_include' do

  end

  t 'find_eles_by_attr_include' do

  end

  t 'find_ele_by_text_include' do

  end

  t 'find_eles_by_text_include' do

  end

  t 'first_ele' do

  end

  t 'last_ele' do

  end

  t 'source' do

  end

  t 'get_source' do

  end

  t 'find_name' do

  end

  t 'find_names' do

  end
=end
end