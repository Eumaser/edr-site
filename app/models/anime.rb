class Anime < ApplicationRecord
  validates  :name, presence: true

  def self.inquire(params)
    animes = all.order(:name) # for not existing params args
  #  animes = animes.where("name like ?", "%#{params[:ids]}%") if params[:ids]
  #
    animes = animes.where(id: params[:ids]) if params[:ids].present?
    animes = animes.where(location: params[:location]) if params[:location].present?
    animes
  end



  LOCATIONS = [
    'Kanon',
    'Hoshino Ai',
    'Ionassal',
  ]



end
