require 'rails_helper'
require 'sidekiq/testing'
Sidekiq::Testing.fake!

RSpec.describe ExampleJob, type: :job do
  it "enqueues a job" do
    expect {
      ExampleJob.perform_async("RSpec")
    }.to change(ExampleJob.jobs, :size).by(1)
  end
end
