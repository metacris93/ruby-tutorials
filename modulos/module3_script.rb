module Player
  module InstanceMethods
    def play
      @status = 'En reproduccion'
    end
    def stop
      @status = 'Detenido'
    end
    def pause
      @status = 'Pausado'
    end
    def status
      @status
    end
  end
  module ClassMethods
    def new_with_play_status
      instance = new
      instance.play
      instance
    end
    def types
      ['mp4', 'mpeg', 'webm']
    end
  end
end

class Video
  include Player::InstanceMethods
  extend Player::ClassMethods
end

#video_player = Video.new
#p video_player.play
#p video_player.stop
#p video_player.pause
#p Video.types

other_player = Video.new_with_play_status
p other_player.status
