describe CarModel, type: :model do
  subject {FactoryGirl.create(:car_model)}
  
  it { should respond_to(:manufacturer) }
  it { should respond_to(:cars) }
  it { should respond_to(:name) }

  it 'requires name to be valid' do
    subject.name = nil
    expect(subject).to_not be_valid
  end

  it 'requires manufacturer to be valid' do
    subject.manufacturer = nil
    expect(subject).to_not be_valid
  end
end
