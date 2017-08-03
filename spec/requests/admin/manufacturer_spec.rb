describe Manufacturer, type: :feature do
  with_authentication { FactoryGirl.create(:user) }

  let(:manufacturer) { FactoryGirl.create(:manufacturer) }
  let(:subject) { visit path }

  describe 'Show page' do
    let(:path) { admin_manufacturer_path(manufacturer) }

    it 'displays the name' do
      subject
      expect(page).to have_content manufacturer.name
    end
  end

  describe 'Index page' do
    let(:path) { admin_manufacturers_path }

    it 'displays the name' do
      FactoryGirl.create(:manufacturer)
      subject
      expect(page).to have_content manufacturer.name
    end
  end
end
