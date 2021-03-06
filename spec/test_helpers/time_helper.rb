# frozen_string_literal: true

require 'rails_helper'

module TimeHelper
  def default_time(time)
    time.strftime('%Y-%m-%dT%H:%M:%S%z')
  end
end
