class Game
  def initialize(favored:, spread:, unfavored:)
    if favored.downcase == favored
      @away = favored.downcase
      @home = unfavored.downcase
      @spread = spread
    else
      @away = unfavored.downcase
      @home = favored.downcase
      @spread = -spread
    end
  end

  def return_as_row
    "#{translate(@away)}\t#{translate(@home)}\t#{@spread}"
  end

  private

  def translate(team)
    {
      "jaguars" => 'JAC',
      "eagles" => 'PHI',
      "49ers" => 'SF',
      "dolphins" => 'MIA',
      "ravens" => 'BAL',
      "lions" => 'DET',
      "panthers" => 'CAR',
      "saints" => 'NO',
      "packers" => 'GB',
      "steelers" => 'PIT',
      "patriots" => 'NE',
      "rams" => 'STL',
      "bills" => 'BUF',
      "cowboys" => 'DAL',
      "seahawks" => 'SEA',
      "broncos" => 'DEN',
      "titans" => 'TEN',
      "redskins" => 'WAS',
      "chargers" => 'SD',
      "vikings" => 'MIN',
      "texans" => 'HOU',
      "bears" => 'CHI',
      "browns" => 'CLE',
      "falcons" => 'ATL',
      "buccaneers" => 'TB',
      "chiefs" => 'KC',
      "jets" => 'NYJ',
      "giants" => 'NYG',
      "raiders" => 'OAK',
      "colts" => 'IND',
      "cardinals" => 'ARI',
      "bengals" => 'CIN'
    }[team]
  end
end