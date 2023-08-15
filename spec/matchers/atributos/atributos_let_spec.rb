require 'pessoa'

describe 'Atributos' do

  # before(:each) do
  #   @pessoa = Pessoa.new
  # end

  let(:pessoa) { Pessoa.new }

  it 'have_attributes' do
    pessoa.nome = "Rodolfo"
    pessoa.idade = 35

    expect(pessoa).to have_attributes(nome: starting_with("R"), idade: (be >= 20))
  end

  it 'have_attributes' do
    pessoa.nome = "Roberto"
    pessoa.idade = 25

    expect(pessoa).to have_attributes(nome: starting_with("R"), idade: (be >= 20))
  end
end
