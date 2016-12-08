module EventsHelper

  def cancellation_policy_collection
    [['Flexible: No charge if attendee cancels RSVP 24 hours prior the event', 'Flexible'], ['Moderate: No charge if attendee cancels RSVP 2 days prior the event', "Moderate"], ['Strict: No charge will apply if attendee cancels RSVP 7 days prior the event', 'Strict'] ]
  end
end
