describe User, type: :feature do
  with_authentication { FactoryGirl.create(:user) }

  let(:user_2) { FactoryGirl.create(:user, email: 'visitor@example.com') }
  let(:subject) { visit path }

  describe 'Show page' do
    let(:path) { admin_user_path(user_2) }

    it 'displays the name' do
      subject
      expect(page).to have_content user_2.name
    end
    it 'displays the email' do
      subject
      expect(page).to have_content user_2.email
    end
    it 'displays the current sign-in datetime' do
      subject
      expect(page).to have_content user_2.current_sign_in_at
    end
    it 'displays the sign-in count' do
      subject
      expect(page).to have_content user_2.sign_in_count
    end
  end

  describe 'Index page' do
    let(:path) { admin_users_path }
    it 'displays the name' do
      user_2
      subject
      expect(page).to have_content user_2.name
    end
    it 'displays the email' do
      user_2
      subject
      expect(page).to have_content user_2.email
    end
    it 'displays the current sign-in datetime' do
      user_2
      subject
      expect(page).to have_content user_2.current_sign_in_at
    end
    it 'displays the sign-in count' do
      user_2
      subject
      expect(page).to have_content user_2.sign_in_count
    end
  end
end
