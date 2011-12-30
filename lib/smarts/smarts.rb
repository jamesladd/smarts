require_relative 'persistence'

module Smarts
  def self.add_smarts a_class
    a_class.send(:include, Smarts::Writing)
    a_class.send(:extend, Smarts::Reading)
  end
end
