Rails.logger.info("Initializers initialization")

ConsoleAccessCheck.configure do |config|
  Rails.logger.info("Initializing Console Access check...")
  config.raise_error = true
  config.sensitive_tables = ["users"]
end