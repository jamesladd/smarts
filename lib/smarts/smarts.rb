require_relative 'persistence'
require_relative 'representation'
require_relative 'transformation'
require_relative 'support'

module Smarts
  def self.add_smarts a_class
    a_class.send(:include, Smarts::Writing)
    a_class.send(:include, Smarts::Printing)
    a_class.send(:include, Smarts::Converting)
    a_class.send(:extend, Smarts::Reading)
  end
end
