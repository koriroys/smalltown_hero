class StoriesController < ApplicationController
  def new
  	@campaign = Campaign.find(params[:campaign_id])
    @hero = Hero.find(params[:hero_id])
    @story = @hero.stories.new
  end

  def create
    hero = Hero.find(params[:hero_id])
    hero.stories.create(params[:story].permit(:body))
    redirect_to campaign_hero_path(hero.campaign, hero)
  end
end
