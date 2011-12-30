require_relative 'spec_helper'

describe Smarts do
  describe 'persistence' do

    class Example

      add_smarts

      def store_using(writer)
      end

      def self.read_using(reader)
      end
    end

    describe 'writing' do
      subject { Example.new }
      it { subject.store_on('').should == 'Example' }
    end

    describe 'reading' do
      subject { Example }
      it { subject.from('').should be_instance_of Example }
    end

  end
end
