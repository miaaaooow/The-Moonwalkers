# -*- encoding : utf-8 -*-
require 'spec_helper'

describe GotIt do
  it { should validate_presence_of(:user_id) }
  it { should validate_presence_of(:dashboard_entry_id) }
end
