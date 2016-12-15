module EventsHelper

  def cancellation_policy_collection
    [['No charge if attendee cancels RSVP 24 hours prior the event', 'Flexible'], ['No charge if attendee cancels RSVP 2 days prior the event', "Moderate"], ['No charge will apply if attendee cancels RSVP 7 days prior the event', 'Strict'] ]
  end
end
