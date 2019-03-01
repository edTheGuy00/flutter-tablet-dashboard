class StatisticsInfo {
  final InfoType type;
  final String totalCount;
  final String weekChange;
  final String dayChange;
  final String dayCount;

  String get typeString {
    switch (type) {
      case InfoType.views:
        return "Views";
      case InfoType.likes:
        return "Likes";
      case InfoType.comments:
        return "Comments";
      case InfoType.followers:
        return "Followers";
      default:
        return "";
    }
  }

  StatisticsInfo(this.type, this.totalCount, this.weekChange, this.dayChange,
      this.dayCount);
}

enum InfoType { likes, views, comments, followers }
