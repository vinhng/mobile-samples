Given(/^I am on the Task Details screen$/) do
  tasks_page = page(TaskyProScreen).await
  @current_page = tasks_page.tap_add_task_button
end

Given(/^I already have the task "(.*?)"$/) do |task_key|
  task = TASKS[task_key.downcase.to_sym]

  @current_page = @current_page.add_new_task(task)
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
  @current_page.should_have_in_list(task_name)
end

