require_relative 'smarts/smarts'
require_relative 'smarts/persistence'
require_relative 'example'

class Class
  def add_smarts
    Smarts.add_smarts self
  end
end
