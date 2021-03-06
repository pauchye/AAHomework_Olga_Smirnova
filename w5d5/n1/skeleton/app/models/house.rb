class House < ApplicationRecord
  has_many :gardeners,
    class_name: 'Gardener',
    foreign_key: :house_id,
    primary_key: :id

  has_many :plants,
    through: :gardeners,
    source: :plants

  def n_plus_one_seeds
    plants = self.plants
    seeds = []
    plants.each do |plant|
      seeds << plant.seeds
    end

    seeds
  end

  def better_seeds_query
    # TODO: your code here
    # plants = self.plants
    # .select('plants.*, COUNT(*) AS seeds_count')
    # .joins(:seeds)
    # .group('plants.id')

    # seeds = []
    # plants.each do |plant|
    #   seeds << plant.seeds_count
    # end

    # seeds
    plants = self.plants.includes(:seeds)
    seeds = []
    plants.each do |plant|
      seeds << plant.seeds
    end

    seeds


  end
end
