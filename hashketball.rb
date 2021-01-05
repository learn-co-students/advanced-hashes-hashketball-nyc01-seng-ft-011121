# Write your code below game_hash
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

def team_colors(team_name)
    case team_name
    when "Brooklyn Nets"
        return ["Black", "White"]
    when "Charlotte Hornets"
        return ["Turquoise", "Purple"]
    end
end

def team_names()
    data = game_hash
    return [data[:home][:team_name], data[:away][:team_name]]
end

def player_numbers(team_name)
    data = game_hash
    jersey = []
    if team_name == "Brooklyn Nets"
        data[:home][:players].each { |each_player|
            jersey.push(each_player[:number])
        }
        return jersey
    end
    if team_name == "Charlotte Hornets"
        data[:away][:players].each { |each_player|
            jersey.push(each_player[:number])
        }
        return jersey
    end
end

def player_stats(name)
    data = game_hash
    data[:home][:players].each { |each_player|
        if each_player[:player_name] == name
            return each_player
        end
    }
    data[:away][:players].each { |each_player|
        if each_player[:player_name] == name
            return each_player
        end
    }
end

def shoe_size(name)
    data = game_hash
    data[:home][:players].each { |each_player|
        if each_player[:player_name] == name
            return each_player[:shoe]
        end
    }
    data[:away][:players].each { |each_player|
        if each_player[:player_name] == name
            return each_player[:shoe]
        end
    }
end

def num_points_scored(name)
    data = game_hash()
    data[:home][:players].each { |each_player|
        if each_player[:player_name] == name
            return each_player[:points]
        end
    }
    data[:away][:players].each { |each_player|
        if each_player[:player_name] == name
            return each_player[:points]
        end
    }
end

def big_shoe_rebounds()
    data = game_hash()
    largest_at_home = nil
    largest_away = nil
    rebounds_at_home = 0
    rebounds_away = 0

    data[:home][:players].each { |each_player|
        if largest_at_home == nil || each_player[:shoe] > largest_at_home
            largest_at_home = each_player[:shoe]
            rebounds_at_home = each_player[:rebounds]
        end
    }
    data[:away][:players].each { |each_player|
        if largest_away == nil || each_player[:shoe] > largest_away
            largest_away = each_player[:shoe]
            rebounds_away = each_player[:rebounds]
        end
    }
    rebounds_at_home > rebounds_away ? rebounds_at_home : rebounds_away
end