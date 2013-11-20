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
    "button marked:'Save'"
  end

  def trait
    "button marked:'Add Task'"
  end

  def done_checkbox
    "checkbox marked:'Done'"
  end

  def create_task(name, note)
    enter_text(name_field, note[:name])
    enter_text(notes_field, note[:notes])
    touch(save_button)

    assignments = page(TaskyProScreen)

  end


end