class ApplicationService
  # AuthenticateUser.call(arg)

  # def self.call(*arg)
  class << self
    def call(*arg)
      new(*arg).constructor
    end
  end

  attr_reader :result

  def constructor
    @result = call # references from the one in AuthenticateUser
    self
  end

  def success?
    !failure
  end

  def failure
    errors.any?
  end

  def errors
    @errors ||= Errors.new
  end

  def call
    # if the child class does not has a call method
    # then an exception will be raised
    fail NotImplementedError unless defined?(super)
  end
end
