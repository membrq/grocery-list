require 'rails_helper'

RSpec.describe Item, type: :model do
    let(:my_item) {create(:item)}

    it {is_expected.to validate_presence_of(:name)}
end
