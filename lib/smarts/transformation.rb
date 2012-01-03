require_relative 'support'

module Smarts

  module Converting

    include Support

    def convert_to(target)
      converter_class_name = name_for(:converting, target)
      converter_class = resolve_for(converter_class_name, self.class)
      converter = converter_class.new(target)
      with(converter, :convert)
    end

  end

end
