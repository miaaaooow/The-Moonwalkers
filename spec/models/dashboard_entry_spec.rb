# -*- encoding : utf-8 -*-
require 'spec_helper'

describe DashboardEntry do
  it { should validate_presence_of(:content) }

end
