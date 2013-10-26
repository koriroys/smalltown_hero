class HeroesController < ApplicationController
  def new
    @campaign = Campaign.find(params[:campaign_id])
    @hero = @campaign.heroes.new
  end

  def create
    campaign = Campaign.find(params[:campaign_id])
    hero = campaign.heroes.create(params[:hero])
    redirect_to new_campaign_hero_story_path(hero)
  end

  def show
    @hero = Hero.find(params[:hero_id])
  end
end
