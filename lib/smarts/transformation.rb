require_relative 'support'

module Smarts

  module Converting

    include Support

    def convert_to(target)
      converter_class_name = name_for(:converting, self.class, target)
      converter_class = eval(converter_class_name)
      converter = converter_class.new(target)
      with(converter, :convert)
    end

  end

end
