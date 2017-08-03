FactoryGirl.define do
  factory(:user) do
    name('Joe Dirt')
    email('joedirt@nascar.com')
    password('password')
  end
end
