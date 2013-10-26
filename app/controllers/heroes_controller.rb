class HeroesController < ApplicationController
  def new
    @campaign = Campaign.find(params[:campaign_id])
    @hero = @campaign.heroes.new
  end

  def create
    campaign = Campaign.find(params[:campaign_id])
    hero = campaign.heroes.create(params[:hero].permit(:name))
    redirect_to new_campaign_hero_story_path(campaign, hero)
  end

  def show
    @hero = Hero.find(params[:id])
  end

  def update
    @hero = Hero.find(params[:id])
    @hero.like_count += 1 if params[:hero][:like_count]
    @hero.save
    redirect_to campaign_hero_path(@hero.campaign, @hero)
  end
end
