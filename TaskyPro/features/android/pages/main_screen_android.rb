require 'calabash-android/abase'

class MainScreen < Calabash::ABase
  include TaskyPro::AndroidHelpers

  def add_task_button
    "button marked:'Add Task'"
  end

  def add_new_task
    touch(add_task_button)
  end
end