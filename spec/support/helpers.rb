require 'support/helpers/session_helpers'
require 'support/helpers/study_helpers'
RSpec.configure do |config|
  config.include Features::SessionHelpers, type: :feature
  config.include Features::StudyHelpers, type: :feature
end
