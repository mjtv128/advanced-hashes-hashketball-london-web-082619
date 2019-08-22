# Write your code here!
require 'pry'

def game_hash 
  game_hash = {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: [{
        name: "Alan Anderson",
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
        name: "Reggie Evans",
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
        name: "Brook Lopez",
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
        name: "Mason Plumlee",
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
        name: "Jason Terry",
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
      players: [{
        name: "Jeff Adrien",
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
        name: "Bismack Biyombo",
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
        name: "DeSagna Diop",
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
        name: "Ben Gordon",
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
        name: "Kemba Walker",
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

def num_points_scored(player_name)
  game_hash.each{|team, details|
  details[:players].each{|player_details|
  if player_details[:name] == player_name
    return player_details[:points]
  end 
  }
  }
   end
  
def shoe_size(player_name)
  game_hash.each{|team, details|
  details[:players].each{|player_details|
  if player_details[:name] == player_name
    return player_details[:shoe]
  end 
  }
  }
end 

def team_colors(teamname)
  game_hash.each{|team, details|
  if details[:team_name] == teamname
    return details[:colors]
  end
  }
end 

def team_names
  game_hash.map{|team, details|
  details[:team_name]}
end 
  
def player_numbers(teamname)
  jersey_array = []
  game_hash.each{|team, details|
  if details[:team_name] == teamname 
    details[:players].each{|player| jersey_array << player[:number]}
    #jersey_array << details[:team_name][:players][:number]
  end 
  }
  return jersey_array
end 

def player_stats(player_name)
  new_array= {}
  game_hash.each{|team, details|
  details[:players].each{|player|
  if player[:name] == player_name
    player.delete(:name)
    new_array = player
  end 
  }
  }
  return new_array 
end 

def big_shoe_rebounds
  shoesize = 0
  rebound = 0
  game_hash.each{|team, details|
  details[:players].each{|player|
  
  if player[:shoe] > shoesize 
    shoesize = player[:shoe] 
    rebound = player[:rebounds]
  end 
  }
  }
  return rebound
  
end 
  