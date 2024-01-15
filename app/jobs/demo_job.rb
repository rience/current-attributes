class DemoJob < ApplicationJob
  def perform
    puts "DemoJob is running"
  end
end