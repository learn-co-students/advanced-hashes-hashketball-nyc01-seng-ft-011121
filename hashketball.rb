require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [
        {
          player_name: "Alan Anderson",
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        {
          player_name: "Reggie Evans",
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        {
          player_name: "Brook Lopez",
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        {
          player_name: "Mason Plumlee",
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        {
          player_name: "Jason Terry",
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      ]
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: [
        {
          player_name: "Jeff Adrien",
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        {
          player_name: "Bismack Biyombo",
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        {
          player_name: "DeSagna Diop",
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        {
          player_name: "Ben Gordon",
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        {
          player_name: "Kemba Walker",
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      ]
    }
  }
end

def num_points_scored(thisPlayerName)
  teams = game_hash
  #check home first
  home_team_players = teams[:home][:players]
  home_team_players.each do |playa|
    if playa[:player_name]==thisPlayerName
      return playa[:points]
    end
  end
  #check away next
  away_team_players = teams[:away][:players]
  away_team_players.each do |playa|
    if playa[:player_name]==thisPlayerName
      return playa[:points]
    end
  end
  "#{thisPlayerName} is not on either team."
end

def shoe_size(thisPlayerName)
  teams = game_hash
  #check home first
  home_team_players = teams[:home][:players]
  home_team_players.each do |playa|
    if playa[:player_name]==thisPlayerName
      return playa[:shoe]
    end
  end
  #check away next
  away_team_players = teams[:away][:players]
  away_team_players.each do |playa|
    if playa[:player_name]==thisPlayerName
      return playa[:shoe]
    end
  end
  "Sorry, #{thisPlayerName} is not on either team."
end

def  team_colors(thisTeamName)
  teams = game_hash
  if teams[:home][:team_name] == thisTeamName
    return teams[:home][:colors]
  elsif teams[:away][:team_name] == thisTeamName
    return teams[:away][:colors]
  else
    return "Sorry, #{thisTeamName} is not in this game."
  end
end

def team_names
  teams = game_hash
  [teams[:home][:team_name],teams[:away][:team_name]]
end

def player_numbers(thisTeamName)
  teams = game_hash
   if teams[:home][:team_name] == thisTeamName
    return teams[:home][:players].map {|playa| playa[:number]}
  elsif teams[:away][:team_name] == thisTeamName
    return teams[:away][:players].map {|playa| playa[:number]}
  else
    return "Sorry, #{thisTeamName} is not in this game."
  end
end

def player_stats(thisPlayerName)
  teams = game_hash
  #check home first
  home_team_players = teams[:home][:players]
  home_team_players.each do |playa|
    if playa[:player_name]==thisPlayerName
      return playa
    end
  end
  #check away next
  away_team_players = teams[:away][:players]
  away_team_players.each do |playa|
    if playa[:player_name]==thisPlayerName
      return playa
    end
  end
  "Sorry, #{thisPlayerName} is not on either team."
end

def big_shoe_rebounds
  biggestshoe = -1  #default, will easily be exceeded
  associated_rebounds_num = -1  #the rebounds number that goes with this player
  teams = game_hash
  
  teams.each do |h_a|
    teams[h_a[0]][:players].each do |playa|
      if playa[:shoe]>biggestshoe
        biggestshoe = playa[:shoe]
        associated_rebounds_num = playa[:rebounds]
      end
    end
  end
  associated_rebounds_num
end



