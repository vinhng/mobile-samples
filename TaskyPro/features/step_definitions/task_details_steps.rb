Given(/^I am on the Task Details screen$/) do
  tasks_page = page(TaskyProScreen).await
  @current_page = tasks_page.tap_add_task_button
end

Given(/^I already have the task "(.*?)"$/) do |task_key|
  task = TASKS[task_key.downcase.to_sym]
  @current_page = @current_page.add_new_task(task) unless @current_page.has_in_list?(task[:name])
  @current_page = @current_page.select_task(task[:name])
end

When(/^I change the name to "(.*?)"$/) do |new_name|
  enter_text(@current_page.name_field, new_name)
  touch(@current_page.save_button)
  @current_page = page(TaskyProScreen).await
end

When(/^I add the "(.*?)" task$/) do |task_name|
  new_task = TASKS[task_name.downcase.to_sym]
  @current_page = @current_page.add_new_task(new_task)
end

Then(/^I should be on the TaskyPro screen$/) do
  assert_screen(TaskyProScreen)
end

Then(/^I should see the "(.*?)" task in the list$/) do |task_name|
  @current_page.assert_should_have_in_list(task_name)
end

When(/^I change the note to "(.*?)"$/) do |new_note|
  enter_text(@current_page.notes_field, new_note)
  touch(@current_page.save_button)

  @current_page = page(TaskyProScreen).await
end

Given(/^I look at the details for the task "(.*?)"$/) do |task_name|
  @current_page = @current_page.select_task(task_name)
end

Then(/^I should see "(.*?)" for the note$/) do |arg1|
  element_exists("edittext marked:'#{arg1}'")
end

When(/^I mark the task as Done and save it$/) do
  @current_page.mark_as_done
  touch(@current_page.save_button)
  @current_page = page(TaskyProScreen).await
end

Then(/^the task "(.*?)" should be checked$/) do |arg1|
  @current_page.is_checked(arg1)
end

Then(/^Done should be checked$/) do
  raise "This task should be marked as done." unless @current_page.is_done?
end

When(/^I start to add the "(.*?)" task$/) do |task_key|
  task = TASKS[task_key.downcase.to_sym]
  @current_page.enter_new_task(task)
end

When(/^I press the Cancel button$/) do
  @current_page.tap_cancel_button
  @current_page = page(TaskyProScreen).await
end

Then(/^I should not see the "(.*?)" task in the list$/) do |arg1|
  element_exists("edittext marked:'#{arg1}'")
end