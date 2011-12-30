
class Writer
  def write(source)
    source.store_using(self)
  end
end

class Reader
  def read(source)
    source.read_using(self)
  end
end

class ExampleStringWriter < Writer
  def initialize(target)
  end
  def start
  end
  def finish
    'Example'  # this isnt a proper Writer implementation, just an Example.
  end
end

class ExampleStringReader < Reader
  def initialize(source)
  end
  def start
  end
  def finish
    Example.new # this isnt a proper Reader implementation, just an Example.
  end
end

class Printer
  def print(source)
    source.print_using(self)
  end
end

class ExampleStringPrinter < Printer
  def initialize(source)
  end
  def start
  end
  def finish
    'an Example' # this isnt a proper Reader implementation, just an Example.
  end
end
