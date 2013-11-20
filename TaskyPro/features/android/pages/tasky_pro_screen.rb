require 'calabash-android/abase'

class TaskyProScreen < Calabash::ABase
  include TaskyPro::AndroidHelpers

  def add_task_button
    trait
  end

  def tap_add_task_button
    touch(add_task_button)
  end

  def trait
    "button marked:'Add Task'"
  end

end