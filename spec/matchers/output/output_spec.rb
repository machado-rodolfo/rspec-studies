describe 'Matcher output' do
    it { expect{ puts "Rodolfo"}.to output.to_stdout}
    it { expect{ print "Rodolfo"}.to output("Rodolfo").to_stdout}
    it { expect{ puts "Rodolfo Machado"}.to output(/Rodolfo/).to_stdout}

    it { expect{ warn "Rodolfo"}.to output.to_stderr}
    it { expect{ warn "Rodolfo"}.to output("Rodolfo\n").to_stderr}
    it { expect{ warn "Rodolfo Machado"}.to output(/Rodolfo/).to_stderr}
end
