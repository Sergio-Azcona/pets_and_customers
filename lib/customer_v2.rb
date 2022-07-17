
class Customer 
  attr_reader :name, :id, :pets, :outstanding_balance
  def initialize(name, id)
    @name = name
    @id = id
    @pets = []
    @outstanding_balance = 0
  end

  def adopt(animal)
    @pets << animal
  end
  
  def charge(cost)
    @outstanding_balance +=  cost
  end
end