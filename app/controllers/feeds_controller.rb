class FeedsController < ApplicationController
  before_action :authenticate_user!
  before_action :create_enricher

  def user
    feed = StreamRails.feed_manager.get_user_feed(current_user.id)
    results = feed.get()['results']
    @activities = @enricher.enrich_activities(results)
  end

  def index
    feed = StreamRails.feed_manager.get_news_feeds(current_user.id)[:timeline]
    results = feed.get()['results']
    @activities = @enricher.enrich_activities(results)
  end

  def create_enricher
    @enricher = StreamRails::Enrich.new
  end
end
