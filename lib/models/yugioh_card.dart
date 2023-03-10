class WidgetCardType {
  static const monsterCard = 'monsterCard';
  static const spellCard = 'spellCard';
  static const trapCard = 'trapCard';
}

class YugiohCard {
  String name;
  String cardType;
  //what tipe of de monster, and will not be required because exist card with out a attribute
  String attribute;
  int level;
  String cardImage;
  String backgroundTexture;
  String typeOfMonster;
  String description;
  String atk;
  String def;
  String noLevelSubTittle;

  YugiohCard({
    required this.name,
    required this.cardType,
    required this.attribute,
    this.level = 0,
    required this.cardImage,
    required this.backgroundTexture,
    this.typeOfMonster = '',
    required this.description,
    this.atk = '',
    this.def = '',
    this.noLevelSubTittle = '',
  });

  factory YugiohCard.fromJson(Map<String, dynamic> json) {
    return YugiohCard(
      name: json['name'] ?? '',
      cardType: json['cardType'] ?? '',
      attribute: json['attribute'] ?? '',
      level: json['level'] ?? 0,
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
