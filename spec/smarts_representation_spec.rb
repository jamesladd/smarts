require_relative 'spec_helper'

describe Smarts do
  describe 'representation' do

    class Example

      add_smarts

      def print_using(printer)
      end

    end

    describe 'printing' do
      subject { Example.new }
      it { subject.print_on('').should == 'an Example' }
    end

  end
end
