require_relative 'spec_helper'

describe Smarts do
  describe 'tranformation' do

    class Example

      add_smarts

      def convert_using(converter)
      end

    end

    describe 'converting' do
      subject { Example.new }
      it { subject.convert_to('').should == 'an Example' }
    end

  end
end
