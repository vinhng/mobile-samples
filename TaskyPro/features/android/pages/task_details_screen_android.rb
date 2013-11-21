require 'calabash-android/abase'

class TaskDetailsScreen < Calabash::ABase
  include TaskyPro::AndroidHelpers

  def name_field
    "edittext id:'txtName'"
  end

  def notes_field
    "edittext id:'txtNotes'"
  end

  def cancel_button
    "button marked:'Cancel'"
  end

  def save_button
    trait
  end

  def trait
    "button marked:'Save'"
  end

  def done_checkbox
    "checkbox marked:'Done'"
  end

  def enter_new_task(new_task)
    enter_text(name_field, new_task[:name])
    enter_text(notes_field, new_task[:notes])
  end

  def add_new_task(new_task)

    enter_new_task(new_task)

    touch(save_button)

    page(TaskyProScreen).await()

  end

  def mark_as_done
    touch(done_checkbox)
  end

  def is_done?
    query_results = query("#{done_checkbox} checked:true")
    return !query_results.empty?
  end

  def tap_cancel_button
    touch(cancel_button)
  end

end