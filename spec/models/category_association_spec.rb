require 'rails_helper'
RSpec.describe Category,User , type: :model do
    it { should have_many(:tasks) }
end