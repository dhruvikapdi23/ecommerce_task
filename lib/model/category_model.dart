
class CategoryModel {
  String? catName;
  String? categoryValue;
  List<CategoryModel>? categoriesArray;
  List<String>? tagCodes;

  CategoryModel(
      {this.catName, this.categoryValue, this.categoriesArray, this.tagCodes});

  CategoryModel.fromJson(Map<String, dynamic> json) {
    catName = json['CatName'];
    categoryValue = json['CategoryValue'];
    if (json['CategoriesArray'] != null) {
      categoriesArray = <CategoryModel>[];
      json['CategoriesArray'].forEach((v) {
        categoriesArray!.add(CategoryModel.fromJson(v));
      });
    }
    tagCodes = json['tagCodes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['CatName'] = catName;
    data['CategoryValue'] = categoryValue;
    if (categoriesArray != null) {
      data['CategoriesArray'] =
          categoriesArray!.map((v) => v.toJson()).toList();
    }
    data['tagCodes'] = tagCodes;
    return data;
  }
}

class CategoriesArray {
  String? catName;
  String? categoryValue;
  List<String>? tagCodes;

  CategoriesArray({this.catName, this.categoryValue, this.tagCodes});

  CategoriesArray.fromJson(Map<String, dynamic> json) {
    catName = json['CatName'];
    categoryValue = json['CategoryValue'];
    tagCodes = json['tagCodes'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['CatName'] = catName;
    data['CategoryValue'] = categoryValue;
    data['tagCodes'] = tagCodes;
    return data;
  }
}
