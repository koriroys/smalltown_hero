class Story < ActiveRecord::Base
  belongs_to :hero

  after_create :increase_hero_like_count

  def increase_hero_like_count
    self.hero.like_count += 1
    self.hero.save
  end
end
