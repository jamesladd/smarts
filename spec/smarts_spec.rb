require_relative 'spec_helper'

describe Smarts do
  describe 'mixin' do

    class Example
      add_smarts
    end

    subject { Example.new }

    it { subject.should respond_to(:store_on) }
    it { subject.class.should respond_to(:from) }

  end
end
