class DndLogsController < ApplicationController
  http_basic_authenticate_with name: "shitake", password: "z3751021", except: [:index, :show]

  def new
    @dnd_log = DndLog.new
  end

  def index
    @dnd_log = DndLog.all
  end

  def create
    @dnd_log = DndLog.new(article_params)
    if @dnd_log.save
      redirect_to @dnd_log
    else
      render 'new'
    end
  end

  def show
    @dnd_log = DndLog.find(params[:id])
  end

  def edit
    @dnd_log = DndLog.find(params[:id])
  end

  def update
    @dnd_log = DndLog.find(params[:id])
    if @dnd_log.update(article_params)
      redirect_to @dnd_log
    else
      render 'edit'
    end
  end

  def destroy
    @dnd_log = DndLog.find(params[:id])
    @dnd_log.destroy

    redirect_to dnd_logs_path
  end

  private
  def article_params
    params[:dnd_log][:date] = Date.new(*params[:dnd_log][:date].split('-').map(&:to_i))
    params.require(:dnd_log).permit(:title, :date, :text)
  end

end
