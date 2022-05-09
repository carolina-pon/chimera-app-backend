class Api::V1::AnimalsController < ApplicationController

  def index
    @animals = Animal.all.pluck(:name).sample(2)
    @formulation = @animals.join
    @chimera = @formulation.split(//).shuffle.join
    puts "『#{@chimera}』爆誕！！！！"
    puts "#{@animals}のキメラです"
    render json: { status: 'success', data: @animals }
  end
  
end
