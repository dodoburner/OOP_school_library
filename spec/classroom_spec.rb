require_relative '../classrom'

describe Classrom do
  let(:classroom) { Classrom.new('Classroom A') }

  describe '#new' do
    it 'creates a new classroom' do
      expect(classroom).to be_a(Classrom)
    end

    it 'has a label' do
      expect(classroom.label).to eq('Classroom A')
    end
  end
end
