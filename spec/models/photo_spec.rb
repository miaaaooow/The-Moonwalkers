# -*- encoding : utf-8 -*-
require 'spec_helper'

describe Photo do
  it { should validate_presence_of(:photo) }
end
