# encoding: utf-8
require 'rubygems'
require 'rake'


# Run a single test with:
# rake android['android/element/generic']
#
# Run all tests with:
# rake android
desc 'Run the Android tests'
task :android, :args, :test_file do |args, test_file|
  # rake android['ok']
  # args = android
  # test_file = {:args=>"ok"}
  test_file = test_file[:args]
  path = File.expand_path('appium.txt', Rake.application.original_dir)
  ENV['APPIUM_TXT'] = path
  puts "Rake appium.txt path is: #{path}"
  cmd = 'bundle exec ruby ./lib/run.rb android'
  cmd += %Q( "#{test_file}") if test_file
  sh cmd
end

desc 'Run bundle install'
task :install do
  sh 'bundle install'
end