describe CarModel, type: :feature do
  with_authentication { FactoryGirl.create(:user) }

  let(:car_model) { FactoryGirl.create(:car_model) }
  let(:subject) { visit path }

  describe 'Show page' do
    let(:path) { admin_car_model_path(car_model) }

    it 'displays the name' do
      subject
      expect(page).to have_content car_model.name
    end

    it 'displays the manufacturer' do
      subject
      expect(page).to have_content car_model.manufacturer.name
    end
  end

  describe 'Index page' do
    let(:path) { admin_car_models_path }
    it 'displays the name' do
      car_model
      subject
      expect(page).to have_content car_model.name
    end
    it 'displays the manufacturer' do
      car_model
      subject
      expect(page).to have_content car_model.manufacturer.name
    end
  end
end
