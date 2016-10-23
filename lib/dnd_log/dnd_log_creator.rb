require 'qmessage'

class DND::DndLogCreator

  attr_reader :info
  attr_reader :logs

  def initialize(log, players)
    @qm = QMsg.run(log)
    @players = players
    @info = OpenStruct.new
    @logs = []
    create
  end

  def create
    @qm.each do |qm|
      player_infos(qm)
    end
  end

  def player_infos(qm)
    u_code = qm.u_code
    @players.each do |player|
      if player._ucode == u_code

      end
    end
  end

end