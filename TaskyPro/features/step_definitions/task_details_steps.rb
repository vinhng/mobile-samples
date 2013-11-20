Given(/^I am on the Task Details screen$/) do
  tasks_page = page(TaskyProScreen).await
  @current_page = tasks_page.tap_add_task_button

end

When(/^I add the "(.*?)" task$/) do |task_name|

  new_task = TASKS[task_name.downcase.to_sym]

  puts new_task

  @current_page.add_new_task(new_task)
end


When(/^tap the Save button$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should be on the TaskyPro screen$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the "(.*?)" task in the list$/) do |task_name|
  pending # express the regexp above with the code you wish you had
end