def get_first_name_of_season_winner(data, season)
  # code here
  # set a string variable
  winner = " "
  # go through each season
  data[season].each do |x|
    # go through each contestant and their info
    x.each do |key, value|
      # if that contestant is a winner
      if value == "Winner"
        # we apply the winners name to the "winner" variable
        winner = x["name"]
        # then return the winners name
        return winner.split(" ").first
      end
    end
  end
end

def get_contestant_name(data, occupation)
  # code here
  # go through each season and the elements
  data.each do |season, hashes|
    # iterate through each element
    hashes.each do |x|
      # check the contestants and their info
      x.each do |key, value|
        # we check for their occupation
        if value == occupation
          # and return their name 
          return x["name"]
        end
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  # set a counter for each hometown
  home = 0
  # go through each season and its elements
  data.each do |season, hashes|
    # go through each individual element
    hashes.each do |x|
      # go through the contestants and their data
      x.each do |key, value|
        # if the value is their hometown
      if value == hometown
        # increment the counter by 1
        home += 1
      end
    end
  end
end
# return the counter value
home
end

def get_occupation(data, hometown)
  # code here
  # go through each season and its hashes
  data.each do |season, hashes|
    # go to the next level which is the individual hashes
    hashes.each do |x|
      # access the contestants and their data
      x.each do |key, value|
        #if the value is their home town
        if value == hometown
          # return their occupation
          return x["occupation"]
        end
      end
    end
  end
end

def get_average_age_for_season(data, season)
  # code here
  # set a total sum of ages counter
  age = 0
  # set a counter for contestants
  contestants = 0
  # go through each season
    data[season].each do |x|
      # go through each contestant and their data
      x.each do |key, values|
        # if the key is age
        if key == "age"
          # increment by 1
          contestants += 1
          # add the ages
          age += values.to_f
        end
      end
    end
    # calculate for the average age divided by the number of contestants
    (age/contestants).round
end
