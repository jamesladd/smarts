require_relative 'support'

module Smarts

  module Writing

    include Support

    def store_on(target)
      writer_class_name = name_for(:writing, target)
      writer_class = resolve_for(writer_class_name, self.class)
      writer = writer_class.new(target)
      with(writer, :write)
    end

  end

  module Reading

    include Support

    def from(source)
      reader_class_name = name_for(:reading, source)
      reader_class = resolve_for(reader_class_name, self)
      reader = reader_class.new(source)
      with(reader, :read)
    end

  end

end
