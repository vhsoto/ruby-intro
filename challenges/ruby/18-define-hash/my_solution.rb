# Define a Hash
my_info = {
  first_name: "Víctor",
  last_name: "Soto",
  hometown: "Bogotá",
  age: 30
}
# Tu solucion abajo:



# Pruebas NO LAS BORRES


describe 'my_info' do
  REQUIRED_KEYS = [:first_name, :last_name, :hometown, :age]

  it "is defined as a local variable" do
    expect(defined?(my_info)).to eq 'local-variable'
  end

  it "is a Hash" do
    expect(my_info).to be_a Hash
  end

  REQUIRED_KEYS.each do |key|
    it "has a :#{key} key" do
      expect(my_info).to have_key key
    end
  end

  (REQUIRED_KEYS - [:age]).each do |key|
    it "#{key} is a String" do
      expect(my_info[key]).to be_a String
    end

    it "#{key} is not empty" do
      expect(my_info[key]).to_not be_empty
    end
  end

  it ":age is an integer" do
    expect(my_info[:age]).to be_a Fixnum
  end

  it ":age is positive" do
    expect(my_info[:age]).to be > 0
  end
end
