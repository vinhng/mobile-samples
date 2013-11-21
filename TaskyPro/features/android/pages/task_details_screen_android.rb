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

  def add_new_task(new_task)

    enter_text(name_field, new_task[:name])
    enter_text(notes_field, new_task[:notes])

    touch(save_button)

    page(TaskyProScreen).await()

  end

end