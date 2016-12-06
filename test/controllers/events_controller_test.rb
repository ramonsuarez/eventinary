require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { address: @event.address, address_2: @event.address_2, cancellation_policy: @event.cancellation_policy, city: @event.city, country: @event.country, description: @event.description, end: @event.end, image: @event.image, online: @event.online, online_event: @event.online_event, penalty_fee: @event.penalty_fee, postcode: @event.postcode, price: @event.price, public: @event.public, quantity: @event.quantity, references: @event.references, show_map: @event.show_map, start: @event.start, state: @event.state, ticket_name: @event.ticket_name, title: @event.title, venue: @event.venue } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { address: @event.address, address_2: @event.address_2, cancellation_policy: @event.cancellation_policy, city: @event.city, country: @event.country, description: @event.description, end: @event.end, image: @event.image, online: @event.online, online_event: @event.online_event, penalty_fee: @event.penalty_fee, postcode: @event.postcode, price: @event.price, public: @event.public, quantity: @event.quantity, references: @event.references, show_map: @event.show_map, start: @event.start, state: @event.state, ticket_name: @event.ticket_name, title: @event.title, venue: @event.venue } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
