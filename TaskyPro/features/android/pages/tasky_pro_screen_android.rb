require 'calabash-android/abase'

class TaskyProScreen < Calabash::ABase
  include TaskyPro::AndroidHelpers

  def add_task_button
    trait
  end

  def tap_add_task_button
    touch(add_task_button)
    page(TaskDetailsScreen).await
  end

  def trait
    "button marked:'Add Task'"
  end

  def should_have_in_list(task_name)
    item = query("CheckedTextView marked:'#{task_name}'")
    raise "Could not find #{task_name} in the ListView." unless item.any?
  end

  def select_task(task_name)
    touch("CheckedTextView marked:'#{task_name}'")
    page(TaskDetailsScreen).await
  end

  def is_checked(task_name)
    item = query("CheckedTextView marked:'#{task_name}'", "isChecked")
    raise "Task #{task_name} is not checked, and it should be." unless item[0]
  end

end