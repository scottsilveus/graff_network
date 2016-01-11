class CrewController < ApplicationController
  def index
    @crews = Crews.all
  end
end
