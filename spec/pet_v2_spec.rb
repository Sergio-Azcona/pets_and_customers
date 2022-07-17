require 'rspec'
require './lib/pet_v2'

RSpec.describe Pet do
  before do
    @samson = Pet.new({name: "Samson", type: :dog, age: 3})
  end

  it 'should be a class' do
    expect(@samson).to be_an_instance_of Pet
  end

  it 'should have attributes' do
    expect(@samson.name).to eq("Samson")
    expect(@samson.type).to eq(:dog)
    expect(@samson.age).to eq(3)
  end

  it 'should know if it is fed'do
  require 'pry';
    expect(@samson.fed?).to eq false
  end

  it 'should can feeds' do
    @samson.feed
    expect(@samson.fed?).to eq false
    binding.pry
  end
end