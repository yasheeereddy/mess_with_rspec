require 'rails_helper'
RSpec.describe Task , type: :model do
    
    it { should belong_to(:user)}
    it { should belong_to(:category)}
end