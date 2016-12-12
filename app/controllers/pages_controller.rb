class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    if params[:search]
      @public_events = PgSearch.multisearch(params[:search]).all.order("created_at DESC")
    else
      # TODO Add pagination or some kind of filtering: geolocated, popular...
      @public_events = Event.all.where(public: true).last(20)
    end

  end
end
