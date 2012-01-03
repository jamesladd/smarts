module Support

  private

  def name_for(action, target)
    "#{target.class.name}#{to_verb(action)}"
  end

  def resolve_for(aClassName, aClass)
    Module.const_get(aClass.name).const_get(aClassName)
  end

  def to_verb(action)
    @to_verb_map ||= { :writing => 'Writer', :reading => 'Reader', :printing => 'Printer', :converting => 'Converter'}
    @to_verb_map[action]
  end

  def with(implementation, action)
    implementation.start
    implementation.send(action, self)
    implementation.finish
  end
end
