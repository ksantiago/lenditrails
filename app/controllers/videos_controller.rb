class VideosController < ApplicationController

  def index
    @conferences = if params[:conference_id] then
      Conference.where(id:params[:conference_id])
    else
      Conference.all
    end

    @featured_videos = @conferences.order(created_at: :desc).map do |c|
      { c => c.videos.where(featured: true) }
    end.reduce(&:merge).reject{|c,v|v.empty?}

    # eu14 = Conference.where(title: 'LendIt Europe 2014').first
    # @eu14_videos = eu14.videos.where(featured: true)

    # us14 = Conference.where(title: 'LendIt USA 2014').first
    # @usa14_videos = us14.videos.where(featured: true)

    # us15 = Conference.where(title: 'LendIt USA 2015').first
    # @usa15_videos = us15.videos.where(featured: true)

    # china15 = Conference.where(title: 'LendIt China 2015').first
    # @china15_videos = china15.videos.where(featured: true)
  end

  def show
    @video = Video.friendly.find params[:id]
  end

  def live
  end

  def china15
    china15 = Conference.where(title: 'LendIt China 2015').first
    @webinar = china15.videos.where(track: 'Webinar')
  end

  def show_china15
    @video = Video.friendly.find(params[:id])
  end

  def usa15
    usa15 = Conference.where(title: 'LendIt USA 2015').first
    @usa15_main = usa15.videos.where(track: 'Main')
    @usa15_track2 = usa15.videos.where(track: 'Track 2')
    @usa15_china = usa15.videos.where(track: 'China')
    @usa15_realestate = usa15.videos.where(track: 'Real Estate')
    @usa15_demo = usa15.videos.where(track: 'Company Demo')
  end

  def show_usa15
    @video = Video.friendly.find(params[:id])
  end

  def eu14
    eu = Conference.where(title: 'LendIt Europe 2014').first
    @eu14videos = eu.videos
  end

  def show_eu14
    @video = Video.friendly.find(params[:id])
  end

  def go_to_eu14
    redirect_to ('/europe/2014/videos'), :status => 301
  end

  def usa14
    usa14 = Conference.where(title: 'LendIt USA 2014').first
    @usa14videos = usa14.videos
  end

  def show_usa14
    @video = Video.friendly.find(params[:id])
  end


end
