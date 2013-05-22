# encoding: utf-8
require 'rubygems'
require 'rake'

desc 'Run the Android tests'
task :android do
  path = File.expand_path('appium.txt', Rake.application.original_dir)
  ENV['APPIUM_TXT'] = path
  puts "Rake appium.txt path is: #{path}"
  sh 'bundle exec ruby ./lib/run.rb android'
end

desc 'Run bundle install'
task :install do
  sh 'bundle install'
end