class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    @public_events = Event.all.where(public: true).last(20)
  end
end
