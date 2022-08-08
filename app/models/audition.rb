class Audition < ActiveRecord::Base
  belongs_to :role

  # Audition#role given for free with role belongs_to association

  def call_back; update hired: true end
end
