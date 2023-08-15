require 'calculator'

describe Calculator, "Sobre a Calculadora" do

  context '#div' do
    it 'divide by 0' do
      expect{subject.div(3, 0)}.to raise_exception(ZeroDivisionError)
      expect{subject.div(3, 0)}.to raise_exception("divided by 0")
      expect{subject.div(3, 0)}.to raise_exception(ZeroDivisionError, "divided by 0")
      expect{subject.div(3, 0)}.to raise_exception(/divided/)
    end
  end

  context '#sum' do
    it 'with positive numbers' do
      result = subject.sum(5, 7)
      expect(result).to eql(12)
    end

    it 'with negative and positive numbers' do
      result = subject.sum(-5, 7)
      expect(result).to eql(2)
    end

    it 'with negative numbers' do
      result = subject.sum(-5, -7)
      expect(result).to eql(-12)
    end
  end
end
