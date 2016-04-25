class ParticipantEventFormCondition
  def initialize(fields)
    @fields = fields
  end

  def call
    @fields.map do |f|
      "$('##{f.name}').condition();"
    end.join(' ')
  end
end
