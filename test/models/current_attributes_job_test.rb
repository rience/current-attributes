class CurrentAttributesJobTest < ActiveSupport::TestCase
  include ActiveJob::TestHelper

  def test_resetting_attributes
    Current.text = "Hello World!"

    perform_enqueued_jobs do
      DemoJob.perform_later
    end
    
    assert_equal "Hello World!", Current.text
  end
end