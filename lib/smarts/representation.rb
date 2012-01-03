require_relative 'support'

module Smarts

  module Printing

    include Support

    def print_on(target)
      printer_class_name = name_for(:printing, target)
      printer_class = resolve_for(printer_class_name, self.class)
      printer = printer_class.new(target)
      with(printer, :print)
    end

  end

end
