class Item{
  final String icon;
  final String title;

  Item({this.icon, this.title});
}

final List<Item> itemList = [
  Item(title: 'Home', icon: 'lib/features/bottom_bar_screens/assets/icons/home.svg'),
  Item(title: 'Search', icon: 'lib/features/bottom_bar_screens/assets/icons/search.svg'),
  Item(title: 'Your Library', icon: 'lib/features/bottom_bar_screens/assets/icons/music-book.svg'),
  Item(title: 'More', icon: 'lib/features/bottom_bar_screens/assets/icons/app.svg'),
];