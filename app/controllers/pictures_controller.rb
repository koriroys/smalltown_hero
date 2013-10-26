class PicturesController < ApplicationController
  def new
    @picture = Picture.new
  end

  def create
    if params[:hero_id]
      campaign = Campaign.find(params[:campaign_id])
      hero = campaign.heroes.find(params[:hero_id])
      hero.pictures.create(params[:picture].permit(:image))
      redirect_to campaign_hero_path(campaign, hero)
    else
      campaign = Campaign.find(params[:campaign_id])
      campaign.pictures.create(params[:picture].permit(:image))
      redirect_to campaign_hero_path(campaign)
    end
  end
end
