require 'calabash-android/abase'

class TaskyProScreen < Calabash::ABase
  include TaskyPro::AndroidHelpers

  def add_task_button
    "button marked:'Add Task'"
  end

  def tap_add_task_button
    touch(add_task_button)
  end

  def trait
    "textview id:'title' marked:'TaskyPro'"
  end

end