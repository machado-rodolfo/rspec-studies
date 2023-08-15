require 'string_nao_vazia'

describe 'Classes' do                               # Exatamente a classe
  it 'be_instance_of' do
      expect(10).to be_instance_of(Integer)
  end

  it 'be_kind_of' do                                # Pode ser por herança
    str = StringNaoVazia.new

    expect(str).to be_kind_of(String)
    expect(str).to be_kind_of(StringNaoVazia)
    expect(10).to be_kind_of(Integer)
  end

  it 'be_an / be_a' do
    str = StringNaoVazia.new

    expect(str).to be_an(String)
    expect(str).to be_an(StringNaoVazia)

    expect(str).to be_a(String)
    expect(str).to be_a(StringNaoVazia)
  end

  it 'respond_to' do
    expect("ruby").to respond_to(:size)
    expect("ruby").to respond_to(:count)
  end
end
