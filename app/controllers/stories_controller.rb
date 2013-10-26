class StoriesController < ApplicationController
  def new
    @hero = Hero.find(params[:hero_id])
    @story = @hero.stories.new
  end

  def create
    hero = Hero.find(params[:hero_id])
    hero.stories.create(params[:story])
    redirect_to campaign_hero_path(hero)
  end
end
