describe User do
  subject { FactoryGirl.create(:user) }

  it { should respond_to(:email) }
  it { should respond_to(:password) }
end
