class Query
  attr_reader :relation

  def self.call(*args)
    new.call(*args)
  end

  private

  def prefix
    "#{self.class.name.split('::').last.underscore}_"
  end
end
