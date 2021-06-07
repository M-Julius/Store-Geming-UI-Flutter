class GamesItem {
  String name;
  String description;
  String productBy;
  String rate;
  String downloaded;
  String price;
  String image;

  GamesItem({
    required this.name,
    required this.description,
    required this.productBy,
    required this.rate,
    required this.downloaded,
    required this.price,
    required this.image,
  });
}

var gamesItemList = [
    GamesItem(
    name: 'GTA V',
    description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit, urna consequat felis vehicula class ultricies mollis dictumst, aenean non a in donec nulla. Phasellus ante pellentesque erat cum risus consequat imperdiet aliquam, integer placerat et turpis mi eros nec lobortis taciti, vehicula nisl litora tellus ligula porttitor metus.',
    productBy: 'Rockstar Games',
    rate: '4.7',
    downloaded: '10k',
    price: '\$50.00',
    image:
        'https://assets.gamepur.com/images/gta-v/cheats.jpg',
  ),
  GamesItem(
    name: 'Read dead redempion ',
    description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit, urna consequat felis vehicula class ultricies mollis dictumst, aenean non a in donec nulla. Phasellus ante pellentesque erat cum risus consequat imperdiet aliquam, integer placerat et turpis mi eros nec lobortis taciti, vehicula nisl litora tellus ligula porttitor metus.',
    productBy: 'Rockstar Games',
    rate: '4.5',
    downloaded: '120',
    price: '\$20.00',
    image:
        'https://gamespot1.cbsistatic.com/uploads/screen_kubrick/1575/15759911/3455089-reddeadredemption2-review-thumb-nologo.jpg',
  ),
  GamesItem(
    name: 'The elder scrolls IV',
    description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit, urna consequat felis vehicula class ultricies mollis dictumst, aenean non a in donec nulla. Phasellus ante pellentesque erat cum risus consequat imperdiet aliquam, integer placerat et turpis mi eros nec lobortis taciti, vehicula nisl litora tellus ligula porttitor metus.',
    productBy: 'Bethesda Softworks',
    rate: '4.5',
    downloaded: '1k',
    price: '\$12.00',
    image: 'https://wallpapercave.com/wp/wp2526927.jpg',
  ),
  GamesItem(
    name: 'AC Odyssey',
    description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit, urna consequat felis vehicula class ultricies mollis dictumst, aenean non a in donec nulla. Phasellus ante pellentesque erat cum risus consequat imperdiet aliquam, integer placerat et turpis mi eros nec lobortis taciti, vehicula nisl litora tellus ligula porttitor metus.',
    productBy: 'Ubisoft Montreal',
    rate: '4.5',
    downloaded: '1k',
    price: '\$15.00',
    image:
        'https://media.comicbook.com/2018/07/assassins-creed-odyssey-header-10-1120606.jpeg',
  ),
  GamesItem(
    name: 'AC Origins',
    description: 'Lorem ipsum dolor sit amet consectetur adipiscing elit, urna consequat felis vehicula class ultricies mollis dictumst, aenean non a in donec nulla. Phasellus ante pellentesque erat cum risus consequat imperdiet aliquam, integer placerat et turpis mi eros nec lobortis taciti, vehicula nisl litora tellus ligula porttitor metus.',
    productBy: 'Ubisoft Montreal',
    rate: '4.6',
    downloaded: '2k',
    price: '\$32.00',
    image:
        'https://vignette.wikia.nocookie.net/steamtradingcards/images/f/fc/Assassin%E2%80%99s_Creed_Origins_Artwork_01.jpg/revision/latest?cb=20180509132330',
  ),
];