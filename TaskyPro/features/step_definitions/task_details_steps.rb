Given(/^I am on the Task Details screen$/) do

  tasks_page = page(TaskyProScreen).await

  @current_page = tasks_page.tap_add_task_button

end

When(/^I name the Task "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^notes are "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

When(/^tap the Save button$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be on the TaskyPro screen$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see "(.*?)" in the list$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end