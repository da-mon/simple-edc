RSpec.describe ParticipantEventFormsHelper, :type => :helper do
  # describe "#peff_id" do
  #   it "provides the correct participant event form field id" do
  #     pef = ParticipantEventForm.new()
  #     expect(helper.peff_id(pef, 1)).to match /1/
  #   end
  # end

  describe "#peff_id" do
    it "provides a tag for a given participant event form field" do
      pef = ParticipantEventForm.new()
      peff = ParticipantEventFormField.new()
      pef.participant_event_form_fields[0] = peff
      expect(helper.peff_id(pef, 1)).to match /1/
    end
  end
end