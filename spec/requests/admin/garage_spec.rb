describe Garage, type: :feature do
  with_authentication { FactoryGirl.create(:user) }

  let(:garage) { FactoryGirl.create(:garage) }
  let(:subject) { visit path }

  describe 'Show page' do
    let(:path) { admin_garage_path(garage) }

    it 'displays the name' do
      subject
      expect(page).to have_content garage.name
    end
    it 'displays the limit' do
      subject
      expect(page).to have_content garage.limit
    end
    it 'displays the car count' do
      subject
      expect(page).to have_content garage.cars.count
    end
  end

  describe 'Index page' do
    let(:path) { admin_garages_path }
    it 'displays the name' do
      garage
      subject
      expect(page).to have_content garage.name
    end
    it 'displays the limit' do
      garage
      subject
      expect(page).to have_content garage.limit
    end
    it 'displays the car count' do
      garage
      subject
      expect(page).to have_content garage.cars.count
    end
    it 'displays "No" if the garage is not full' do
      garage
      subject
      expect(page).to have_content 'No'
    end
    it 'displays "Yes" if the garage is full' do
      garage
      garage.update(full: true)
      subject
      expect(page).to have_content 'Yes'
    end
  end
end
