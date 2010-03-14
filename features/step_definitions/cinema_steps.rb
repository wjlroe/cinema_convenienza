require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

Scenes::load

Scenes::Scene.list.each do |scene_name|
  Given /^the scene #{scene_name}$/i do
    Scenes::Scene[scene_name].play
  end
end

Before do
  Scenes::Character.clear
end

After do
  Net::HTTP.rspec_reset
  Time.rspec_reset
  #GuiController.rspec_reset
end

Given /debugger/ do
  debugger
end

Given /^debug page*$/ do
  save_and_open_page
  debugger
end

Given /^there are (\d+) (.*)$/ do |num, model_name|
    model_name.classify.constantize.count.should == num.to_i
end

When /^I fill in "([^\"]*)" in the "([^\"]*)" field$/ do |arg1, arg2|
  pending
end

When /^I click "([^\"]*)"$/ do |arg1|
  pending
end

Then /^there should be (\d+) (.*)$/ do |num, model_name|
  model_name.classify.constantize.count.should == num.to_i
end
