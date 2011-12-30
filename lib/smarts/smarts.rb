require_relative 'storing'

module Smarts
  def self.add_smarts a_class
    a_class.send(:include, Smarts::Storing)
  end
end
