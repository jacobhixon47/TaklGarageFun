describe Car, type: :model do

  subject { FactoryGirl.create(:car) }

  it { should respond_to(:manufacturer) }
  it { should respond_to(:car_model) }
  it { should respond_to(:color) }
  it { should respond_to(:vin) }
  it { should respond_to(:mileage) }
    it { should respond_to(:garage) }

  it 'requires vin to be valid' do
    subject.vin = nil
    expect(subject).to_not be_valid
  end

  it 'requires car_model to be valid' do
    subject.car_model = nil
    expect(subject).to_not be_valid
  end
end
