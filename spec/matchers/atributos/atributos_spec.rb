require 'pessoa'

describe 'Atributos' do

    before(:context) do
      puts ">>>>>>>>>>> ANTES DE TODOS OS TESTES"
    end

    after(:all) do
      puts ">>>>>>>>>>> DEPOIS DE TODOS OS TESTES"
    end

  # before(:each) do
  #   puts "ANTES"
  #   @pessoa = Pessoa.new
  # end

  # after(:each) do
  #   @pessoa.nome = "Sem nome!"
  #   puts "DEPOIS >>>>>>>> #{@pessoa.inspect}"
  # end

    around(:each) do |teste|
      puts "ANTES"
      @pessoa = Pessoa.new

        teste.run # roda o teste

      @pessoa.nome = "Sem nome!"
      puts "DEPOIS >>>>>>>> #{@pessoa.inspect}"
    end

  it 'have_attributes' do
    @pessoa.nome = "Rodolfo"
    @pessoa.idade = 35

    expect(@pessoa).to have_attributes(nome: starting_with("R"), idade: (be >= 20))
  end

  it 'have_attributes' do
    @pessoa.nome = "Roberto"
    @pessoa.idade = 25

    expect(@pessoa).to have_attributes(nome: starting_with("R"), idade: (be >= 20))
  end
end
