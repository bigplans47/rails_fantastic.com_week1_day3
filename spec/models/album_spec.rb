require 'rails_helper'

describe Album do
  it { should validate_presence_of :review }
  it { should validate_presence_of :year }
  it { should validate_presence_of :title }
  it { should belong_to :artist }
end
