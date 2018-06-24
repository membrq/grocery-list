require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) {create(:user)}

  describe 'validation' do
    it {is_expected.to validate_presence_of(:email)}
    it {is_expected.to validate_uniqueness_of(:email)} 
    it {is_expected.to validate_length_of(:email).is_at_least(3)}
  end
end
