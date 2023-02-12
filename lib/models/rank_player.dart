class Players {
  String playerImage;
  String playerName;
  int playerPoints;
  String currentRank;

  Players(
      {required this.playerImage,
      required this.playerName,
      required this.playerPoints,
      required this.currentRank});

  factory Players.fromJson(Map<String, dynamic> json) {
    return Players(
      playerImage: json['playerImage'] ?? '',
      playerName: json['playerName'] ?? '',
      playerPoints: json['playerPoints'] ?? 0,
      currentRank: json['currentRank'] ?? 0,
    );
  }
}
