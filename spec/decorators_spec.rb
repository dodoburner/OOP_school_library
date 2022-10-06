require_relative '../decorators'
require_relative '../person'

describe Decorator do
  person = Person.new(18, 'desmond@Code360')
  capitalize = CapitalizeDecorator.new(person)
  trimmer = TrimmerDecorator.new(person)

  describe '#capitalize name' do
    it 'returns the first 10 characters of the name' do
      expect(capitalize.correct_name).to eq('Desmond@code360')
    end
  end

  describe '#trim name' do
    it 'returns the first 10 characters of the name' do
      expect(trimmer.correct_name).to eq('desmond@Co')
    end
  end
end
