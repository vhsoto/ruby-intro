 #Defining Variables

# Tu solucion abajo

#Paso 0:
# Definir el nombre de las variables.
# Establecer que tipo de variable es cada una.
# Asignar valor a las variables.

#Paso 1:

first_name = "Víctor"
last_name = "Soto Calderón"
age = 30

# Pruebas NO LAS BORRES

describe 'first_name' do
  it "is defined as a local variable" do
    expect(defined?(first_name)).to eq 'local-variable'
  end

  it "is a String" do
    expect(first_name).to be_a String
  end
end

describe 'last_name' do
  it "is defined as a local variable" do
    expect(defined?(last_name)).to eq 'local-variable'
  end

  it "be a String" do
    expect(last_name).to be_a String
  end
end

describe 'age' do
  it "is defined as a local variable" do
    expect(defined?(age)).to eq 'local-variable'
  end

  it "is an integer" do
    expect(age).to be_a Fixnum
  end
end
