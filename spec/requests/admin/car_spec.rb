describe Car, type: :feature do
  with_authentication { FactoryGirl.create(:user, email: 'admin@example.com') }

  let(:car) { FactoryGirl.create(:car) }
  let(:subject) { visit path }

  describe 'Show page' do
    let(:path) { admin_car_path(car) }

    it 'displays the manufacturer' do
      subject
      expect(page).to have_content car.manufacturer.name
    end
    it 'displays the model' do
      subject
      expect(page).to have_content car.car_model.name
    end
    it 'displays the garage' do
      subject
      expect(page).to have_content car.garage.name
    end
    it 'displays the owner' do
      subject
      expect(page).to have_content car.user.name
    end
    it 'displays the color' do
      subject
      expect(page).to have_content car.color
    end
    it 'displays the year' do
      subject
      expect(page).to have_content car.year
    end
    it 'displays the mileage' do
      subject
      expect(page).to have_content car.mileage
    end
    it 'displays the vin' do
      subject
      expect(page).to have_content car.vin
    end
  end

  describe 'Index page' do
    let(:path) { admin_cars_path }
    it 'displays the manufacturer' do
      car
      subject
      expect(page).to have_content car.manufacturer.name
    end
    it 'displays the car_model' do
      car
      subject
      expect(page).to have_content car.car_model.name
    end
    it 'displays the garage' do
      car
      subject
      expect(page).to have_content car.garage.name
    end
    it 'displays the user' do
      car
      subject
      expect(page).to have_content car.user.name
    end
    it 'displays the color' do
      car
      subject
      expect(page).to have_content car.color
    end
    it 'displays the year' do
      car
      subject
      expect(page).to have_content car.year
    end
    it 'displays the mileage' do
      car
      subject
      expect(page).to have_content car.mileage
    end
    it 'displays the vin' do
      car
      subject
      expect(page).to have_content car.vin
    end
  end
end
