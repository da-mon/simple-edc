require 'rails_helper'

RSpec.describe ParticipantEventFormsController, type: :controller do
  # pending "add some examples to (or delete) #{__FILE__}"
  describe "GET index" do
    it "renders the index template" do
      get :index
      expect(response).to render_template("index")
    end
  end
end
