class PagesController < ApplicationController
  def home
  end

  def about
    @skills = Skill.by_position
  end

  def contact
  end
end
