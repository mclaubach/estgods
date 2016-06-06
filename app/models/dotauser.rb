class Dotauser < ActiveRecord::Base
  has_many :matches

 class << self
  def from_omniauth(auth)
    info = auth['info']
    # Convert from 64-bit to 32-bit
    dotauser = find_or_initialize_by(uid: (auth['uid'].to_i - 76561197960265728).to_s)
    dotauser.nickname = info['nickname']
    dotauser.avatar_url = info['image']
    dotauser.profile_url = info['urls']['Profile']
    dotauser.save!
    dotauser
  end
 end

  def load_matches!(count)
    matches_arr = Dota.api.matches(player_id: self.uid, limit: count)
    if matches_arr && matches_arr.any?
      matches_arr.each do |match|
        unless self.matches.where(uid: match.id).any?
          match_info = Dota.api.matches(match.id)
          new_match = self.matches.create({
                                            uid: match.id,
                                            match_type: match_info.type
                                          })
        end
      end
    end
  end

 private

  def parse_duration(d)
  hr = (d / 3600).floor
  min = ((d - (hr * 3600)) / 60).floor
  sec = (d - (hr * 3600) - (min * 60)).floor

  hr = '0' + hr.to_s if hr.to_i < 10
  min = '0' + min.to_s if min.to_i < 10
  sec = '0' + sec.to_s if sec.to_i < 10

  hr.to_s + ':' + min.to_s + ':' + sec.to_s
  end

end