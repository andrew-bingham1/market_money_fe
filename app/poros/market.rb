class Market 
  attr_reader :id, :name, :street, :city, :zip, :state

  def initialize(data)
    @id = data[:id]
    @name = data[:attributes][:name]
    @street = data[:attributes][:street]
    @city = data[:attributes][:city]
    @zip = data[:attributes][:zip]
    @state = data[:attributes][:state]
  end
end