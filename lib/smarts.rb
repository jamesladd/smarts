require_relative 'smarts/smarts'
require_relative 'smarts/storing'

class Class
  def add_smarts
    Smarts.add_smarts self
  end
end
