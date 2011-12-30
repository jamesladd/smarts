require_relative 'support'

module Smarts

  module Writing

    include Support

    def store_on(target)
      writer_class_name = name_for(:writing, self.class, target)
      writer_class = eval(writer_class_name)
      writer = writer_class.new(target)
      with(writer, :write)
    end

  end

  module Reading

    include Support

    def from(source)
      reader_class_name = name_for(:reading, self, source)
      reader_class = eval(reader_class_name)
      reader = reader_class.new(source)
      with(reader, :read)
    end

  end

end
