def num_points_scored(name) 
  points = ''
  game_hash.each do |location, team_data|

    team_data[:players].each do |player_data|

      if player_data[:player_name] == name
        points = player_data[:points]
      end
    end
  end
  points
end

def shoe_size(name)
  size = ''
  game_hash.each do |location, team_data|

    team_data[:players].each do |player_data|

      if player_data[:player_name] == name
        size = player_data[:shoe]
      end
    end
  end
  size
end

def team_colors(team)

  color_output = ''

  game_hash.each do |location, team_data|
    if team_data[:team_name] == team
     color_output = team_data[:colors]
    end
  end
  color_output
end

def team_names
  final_array = []
  game_hash.each do |location, team_data|

    final_array.push(team_data[:team_name])
  end
  final_array
end

def player_numbers(team)
  final_array = []

  game_hash.each do |location, team_data|

    if team_data[:team_name] == team
     team_data[:players].each do |category, data|

       final_array.push(category[:number])
    end
    end
  end
  final_array
end

def player_stats(player)
  final_hash = {}
  game_hash.each do |location, team_data|

    team_data[:players].each do |player_data|

      if player_data[:player_name] == player
        final_hash = player_data
      end
    end
  end
  final_hash
end

def big_shoe_rebounds
  current_big_shoe = 0
  corresponding_rebounds = ''

  game_hash.each do |location, team_data|

    team_data[:players].each do |player_data|

      if player_data[:shoe] > current_big_shoe
        current_big_shoe = player_data[:shoe]
        corresponding_rebounds = player_data[:rebounds]
      end
    end
  end
  corresponding_rebounds
end
