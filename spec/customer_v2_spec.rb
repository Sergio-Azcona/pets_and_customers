require './lib/pet_v2'
require './lib/customer_v2'

RSpec.describe Customer do
  before do
    @joel = Customer.new("Joel", 2)
    @lucy = Pet.new({name: "Lucy", type: :cat, age: 12})
    @samson = Pet.new({name: "Samson", type: :dog, age: 3})
    #why is samson variable again if already in pet?

  end
  
  it 'should exist' do
    expect(@joel).to be_an_instance_of Customer
  end
  
  it 'should have a name, id and pets array' do
    expect(@joel.name).to eq ('Joel')
    expect(@joel.id).to eq (2)
    expect(@joel.pets).to eq ([])
  end

  it 'customer should be able to adopt pet' do
    @joel.adopt(@samson)
    @joel.adopt(@lucy)
    @joel.pets
  end

  it 'should track customers outstanding balance' do
    @joel.charge(15)
    @joel.charge(7) 
    expect(@joel.outstanding_balance).to eq 22
  end

end