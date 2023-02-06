class CardType {
  static const monsterCard = 'monsterCard';
  static const speelCard = 'spellCard';
  static const trapCard = 'trapCard';
}

class LibratyCard {
  String name;
  String cardType;
  //what tipe of de monster, and will not be required because exist card with out a attribute
  String attribute;
  String level;
  String cardImage;
  String backgroundTexture;
  String typeOfMonster;
  String description;
  String atk;
  String def;
  String noLevelSubTittle;

  LibratyCard({
    required this.name,
    required this.cardType,
    required this.attribute,
    this.level = '1',
    required this.cardImage,
    required this.backgroundTexture,
    this.typeOfMonster = 'dark',
    required this.description,
    this.atk = '',
    this.def = '',
    this.noLevelSubTittle = '',
  });

  factory LibratyCard.fromJson(Map<String, dynamic> json) {
    return LibratyCard(
      name: json['name'] ?? '',
      cardType: json['cardType'] ?? '',
      attribute: json['attribute'] ?? '',
      level: json['level'] ?? '',
      cardImage: json['cardImage'] ?? '',
      backgroundTexture: json['backgroundTexture'] ?? '',
      typeOfMonster: json['typeOfMonster'] ?? '',
      description: json['description'] ?? '',
      atk: json['atk'] ?? '',
      def: json['def'] ?? '',
      noLevelSubTittle: json['noLevelSubTittle'] ?? '',
    );
  }
}
