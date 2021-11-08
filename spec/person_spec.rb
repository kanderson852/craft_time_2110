require "rspec"
require "./lib/person"

describe Person do
  let (:person) {Person.new({name: 'Hector', interests: ['sewing', 'millinery', 'drawing']})}
  it 'exists' do
    expect(person).to be_an_instance_of(Person)
  end

  it 'attributes' do
    expect(person.name).to eq("Hector")
    expect(person.interests).to eq(['sewing', 'millinery', 'drawing'])
    expect(person.supplies).to eq({})
  end
end
