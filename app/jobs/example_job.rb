class ExampleJob
  include Sidekiq::Job

  def perform(name = "World")
    Rails.logger.info "Hello, #{name}! This Sidekiq job ran successfully."
  end
end
