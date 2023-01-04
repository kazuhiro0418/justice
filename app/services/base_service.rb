class BaseService
  attr_accessor :message

  def self.call(*args)
    new(*args).call
  end

  def success?
    message.blank?
  end

  private

  def log_error(exception)
    Rails.logger.error exception.message
    Rails.logger.error exception.backtrace.join("\n")
    Raven.capture_exception exception
  end
end
