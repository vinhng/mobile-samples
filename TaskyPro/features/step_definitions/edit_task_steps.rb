When(/^I change the name to "(.*?)"$/) do |new_name|
  clear_text(@current_page.name_field)
  enter_text(@current_page.name_field, new_name)
  touch(@current_page.save_button)
  @current_page = page(TaskyProScreen).await
end

When(/^I change the note to "(.*?)"$/) do |new_note|
  clear_text(@current_page.name_field)
  enter_text(@current_page.notes_field, new_note)
  touch(@current_page.save_button)
  @current_page = page(TaskyProScreen).await
end

When(/^I mark the task as Done and save it$/) do
  @current_page.mark_as_done
  touch(@current_page.save_button)
  @current_page = page(TaskyProScreen).await
end
