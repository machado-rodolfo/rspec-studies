describe 'satisfy' do
  it {expect(10).to satisfy('be a multiple of 2') { |x| x % 2 == 0 }}
  it {expect(9).to satisfy('be a multiple of 3') { |x| x % 3 == 0 }}
end
