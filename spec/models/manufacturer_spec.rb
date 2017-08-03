describe Manufacturer, type: :model do
  subject { FactoryGirl.create(:manufacturer) }

  it { should respond_to(:name) }
  it { should respond_to(:car_models) }

  it 'requires name to be valid' do
    subject.name = nil
    expect(subject).to_not be_valid
  end
end
