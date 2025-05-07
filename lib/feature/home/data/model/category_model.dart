class CategoryModel {
  final String title;
  final String imagePath;
  final String id;

  CategoryModel({
    required this.title,
    required this.imagePath,
    required this.id,
  });

  static List<CategoryModel> getCategory() {
    return [
      CategoryModel(title: 'Planets', imagePath: 'assets/splash.jpg', id: '1'),
      CategoryModel(title: 'Stars', imagePath: 'assets/sky_space.jpg', id: '2'),
      CategoryModel(
        title: 'Galaxies',
        imagePath: 'assets/space_view.jpg',
        id: '3',
      ),
    ];
  }

  static List<CategoryModel> getSuggested() {
    return [
      CategoryModel(
        title: 'Black Holes',
        imagePath: 'assets/suggested_two.jpg',
        id: '4',
      ),
      CategoryModel(
        title: 'Nebulae',
        imagePath: 'assets/suggested_one .jpg',
        id: '5',
      ),
      CategoryModel(
        title: 'Comets',
        imagePath: 'assets/suggested_three.jpg',
        id: '6',
      ),
    ];
  }

  static List<CategoryModel> getBestArticles() {
    return [
      CategoryModel(
        title: 'Exoplanets',
        imagePath: 'assets/best_one.jpg',
        id: '7',
      ),
      CategoryModel(
        title: 'Cosmic Rays',
        imagePath: 'assets/best_two.jpg',
        id: '8',
      ),
      CategoryModel(
        title: 'Dark Matter',
        imagePath: 'assets/best_three.jpg',
        id: '9',
      ),
    ];
  }
}
