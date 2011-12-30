require_relative 'support'

module Smarts

  module Printing

    include Support

    def print_on(target)
      printer_class_name = name_for(:printing, self.class, target)
      printer_class = eval(printer_class_name)
      printer = printer_class.new(target)
      with(printer, :print)
    end

  end

end
