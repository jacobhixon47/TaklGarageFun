describe Garage, type: :model do
  subject { FactoryGirl.create(:garage) }

  it { should respond_to(:name) }
  it { should respond_to(:cars) }
  it { should respond_to(:limit) }

  it 'requires limit to be valid' do
    subject.limit = nil
    expect(subject).to_not be_valid
  end
end
