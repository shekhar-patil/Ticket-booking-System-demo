class ShowsController < ApplicationController
  before_action :set_show, only: [:show, :edit, :update, :destroy]
  before_action :set_theater
  before_action :set_movies, only: %i[new edit update]

  def index
    @shows = Show.includes(:movie, :theater).all
  end

  def show
  end

  def new
    if @theater.present?
      @show = Show.new(theater_id: params[:theater_id])
      @movies = Movie.select(:id, :name).all
    else
      flash[:error] = 'Theater does not exist'
      redirect_to root_path
    end
  end

  def edit
  end

  def create
    @show = Show.new(show_params)
    @show.theater = @theater
    respond_to do |format|
      if @show.save
        format.html { redirect_to theater_show_path(@theater, @show), notice: 'Show was successfully created.' }
        format.json { render :theater_show, status: :created, location: @show }
      else
        @movies = Movie.select(:id, :name).all
        format.html { render :new }
        format.json { render json: @show.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @show.update(show_params)
        format.html { redirect_to @show, notice: 'Show was successfully updated.' }
        format.json { render :show, status: :ok, location: @show }
      else
        format.html { render :edit }
        format.json { render json: @show.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @show.destroy
    respond_to do |format|
      format.html { redirect_to shows_url, notice: 'Show was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_show
      @show = Show.find(params[:id])
    end

    def set_theater
      @theater = Theater.find(params[:theater_id])
    end

    def set_movies
      @movies = Movie.select(:id, :name).all
    end

    def show_params
      params.require(:show).permit(:movie_id, :theater_id, :start_date, :available)
    end
end
