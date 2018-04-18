require 'rails_helper'

describe Artist do
  it { should validate_presence_of :name }
  it { should validate_presence_of :genre }
end
