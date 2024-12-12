import 'package:ecommerce_task/model/category_model.dart';

class ProductModel {
  String? code;
  String? name;
  Stock? stock;
  Price? price;
  List<Images>? images;
  List<CategoryModel>? categories;
  String? pk;
  Price? whitePrice;
  List<Articles>? articles;
  bool? visible;
  List<String>? concept;
  int? numbersOfPieces;
  Articles? defaultArticle;
  bool? sale;
  List<VariantSizes>? variantSizes;
  List<dynamic>? swatches;
  List<String>? articleCodes;
  String? ticket;
  String? searchEngineProductId;
  bool? dummy;
  String? linkPdp;
  String? categoryName;
  List<String>? rgbColors;
  List<String>? articleColorNames;
  double? ecoTaxValue;
  int? swatchesTotal;
  bool? showPriceMarker;
  bool? redirectToPdp;
  String? mainCategoryCode;
  bool? comingSoon;
  String? brandName;
  List<GalleryImages>? galleryImages;
  List<String>? allArticleCodes;
  List<String>? allArticleImages;
  List<String>? allArticleBaseImages;

  ProductModel(
      {this.code,
        this.name,
        this.stock,
        this.price,
        this.images,
        this.categories,
        this.pk,
        this.whitePrice,
        this.articles,
        this.visible,
        this.concept,
        this.numbersOfPieces,
        this.defaultArticle,
        this.sale,
        this.variantSizes,
        this.swatches,
        this.articleCodes,
        this.ticket,
        this.searchEngineProductId,
        this.dummy,
        this.linkPdp,
        this.categoryName,
        this.rgbColors,
        this.articleColorNames,
        this.ecoTaxValue,
        this.swatchesTotal,
        this.showPriceMarker,
        this.redirectToPdp,
        this.mainCategoryCode,
        this.comingSoon,
        this.brandName,
        this.galleryImages,
        this.allArticleCodes,
        this.allArticleImages,
        this.allArticleBaseImages});

  ProductModel.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    stock = json['stock'] != null ? Stock.fromJson(json['stock']) : null;
    price = json['price'] != null ? Price.fromJson(json['price']) : null;
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    if (json['categories'] != null) {
      categories = <CategoryModel>[];
      json['categories'].forEach((v) {
        categories!.add( CategoryModel.fromJson(v));
      });
    }
    pk = json['pk'];
    whitePrice = json['whitePrice'] != null
        ? Price.fromJson(json['whitePrice'])
        : null;
    if (json['articles'] != null) {
      articles = <Articles>[];
      json['articles'].forEach((v) {
        articles!.add(Articles.fromJson(v));
      });
    }
    visible = json['visible'];
    concept = json['concept']?.cast<String>();
    numbersOfPieces = json['numbersOfPieces'];
    defaultArticle = json['defaultArticle'] != null
        ? Articles.fromJson(json['defaultArticle'])
        : null;
    sale = json['sale'];
    if (json['variantSizes'] != null) {
      variantSizes = <VariantSizes>[];
      json['variantSizes'].forEach((v) {
        variantSizes!.add(VariantSizes.fromJson(v));
      });
    }
    if (json['swatches'] != null) {
      swatches = <dynamic>[];
      json['swatches'].forEach((v) {
        swatches!.add(v);
      });
    }
    articleCodes = json['articleCodes']?.cast<String>();
    ticket = json['ticket'];
    searchEngineProductId = json['searchEngineProductId'];
    dummy = json['dummy'];
    linkPdp = json['linkPdp'];
    categoryName = json['categoryName'];
    rgbColors = json['rgbColors']?.cast<String>();
    articleColorNames = json['articleColorNames']?.cast<String>();
    ecoTaxValue = json['ecoTaxValue'] != null ?double.parse(json['ecoTaxValue'].toString()):null;
    swatchesTotal = json['swatchesTotal'];
    showPriceMarker = json['showPriceMarker'];
    redirectToPdp = json['redirectToPdp'];
    mainCategoryCode = json['mainCategoryCode'];
    comingSoon = json['comingSoon'];
    brandName = json['brandName'];
    if (json['galleryImages'] != null) {
      galleryImages = <GalleryImages>[];
      json['galleryImages'].forEach((v) {
        galleryImages!.add(GalleryImages.fromJson(v));
      });
    }
    allArticleCodes = json['allArticleCodes']?.cast<String>();
    allArticleImages = json['allArticleImages']?.cast<String>();
    allArticleBaseImages = json['allArticleBaseImages']?.cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    if (stock != null) {
      data['stock'] = stock!.toJson();
    }
    if (price != null) {
      data['price'] = price!.toJson();
    }
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    if (categories != null) {
      data['categories'] = categories!.map((v) => v.toJson()).toList();
    }
    data['pk'] = pk;
    if (whitePrice != null) {
      data['whitePrice'] = whitePrice!.toJson();
    }
    if (articles != null) {
      data['articles'] = articles!.map((v) => v.toJson()).toList();
    }
    data['visible'] = visible;
    data['concept'] = concept;
    data['numbersOfPieces'] = numbersOfPieces;
    if (defaultArticle != null) {
      data['defaultArticle'] = defaultArticle!.toJson();
    }
    data['sale'] = sale;
    if (variantSizes != null) {
      data['variantSizes'] = variantSizes!.map((v) => v.toJson()).toList();
    }
    if (swatches != null) {
      data['swatches'] = swatches!.map((v) => v.toJson()).toList();
    }
    data['articleCodes'] = articleCodes;
    data['ticket'] = ticket;
    data['searchEngineProductId'] = searchEngineProductId;
    data['dummy'] = dummy;
    data['linkPdp'] = linkPdp;
    data['categoryName'] = categoryName;
    data['rgbColors'] = rgbColors;
    data['articleColorNames'] = articleColorNames;
    data['ecoTaxValue'] = ecoTaxValue;
    data['swatchesTotal'] = swatchesTotal;
    data['showPriceMarker'] = showPriceMarker;
    data['redirectToPdp'] = redirectToPdp;
    data['mainCategoryCode'] = mainCategoryCode;
    data['comingSoon'] = comingSoon;
    data['brandName'] = brandName;
    if (galleryImages != null) {
      data['galleryImages'] =
          galleryImages!.map((v) => v.toJson()).toList();
    }
    data['allArticleCodes'] = allArticleCodes;
    data['allArticleImages'] = allArticleImages;
    data['allArticleBaseImages'] = allArticleBaseImages;
    return data;
  }
}

class Stock {
  int? stockLevel;

  Stock({this.stockLevel});

  Stock.fromJson(Map<String, dynamic> json) {
    stockLevel = json['stockLevel'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['stockLevel'] = stockLevel;
    return data;
  }
}

class Price {
  String? currencyIso;
  double? value;
  String? priceType;
  String? formattedValue;
  String? type;

  Price(
      {this.currencyIso,
        this.value,
        this.priceType,
        this.formattedValue,
        this.type});

  Price.fromJson(Map<String, dynamic> json) {
    currencyIso = json['currencyIso'];
    value = json['value'];
    priceType = json['priceType'];
    formattedValue = json['formattedValue'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['currencyIso'] = currencyIso;
    data['value'] = value;
    data['priceType'] = priceType;
    data['formattedValue'] = formattedValue;
    data['type'] = type;
    return data;
  }
}

class Images {
  String? url;
  String? baseUrl;

  Images({this.url, this.baseUrl});

  Images.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    baseUrl = json['baseUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['baseUrl'] = baseUrl;
    return data;
  }
}

class Articles {
  String? code;
  String? name;
  List<Images>? images;
  String? pk;
  Price? whitePrice;
  List<GalleryImages>? logoPicture;
  List<GalleryImages>? normalPicture;
  bool? visible;
  int? numbersOfPieces;
  String? ticket;
  bool? dummy;
  double? ecoTaxValue;
  bool? redirectToPdp;
  bool? comingSoon;
  Color? color;
  String? rgbColor;
  String? genArticle;
  List<String>? damStyleWith;
  String? turnToSku;
  String? videoId;
  bool? plpVideo;

  Articles(
      {this.code,
        this.name,
        this.images,
        this.pk,
        this.whitePrice,
        this.logoPicture,
        this.normalPicture,
        this.visible,
        this.numbersOfPieces,
        this.ticket,
        this.dummy,
        this.ecoTaxValue,
        this.redirectToPdp,
        this.comingSoon,
        this.color,
        this.rgbColor,
        this.genArticle,
        this.damStyleWith,
        this.turnToSku,
        this.videoId,
        this.plpVideo});

  Articles.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
    if (json['images'] != null) {
      images = <Images>[];
      json['images'].forEach((v) {
        images!.add(Images.fromJson(v));
      });
    }
    pk = json['pk'];
    whitePrice = json['whitePrice'] != null
        ? Price.fromJson(json['whitePrice'])
        : null;
    if (json['logoPicture'] != null) {
      logoPicture = <GalleryImages>[];
      json['logoPicture'].forEach((v) {
        logoPicture!.add(GalleryImages.fromJson(v));
      });
    }
    if (json['normalPicture'] != null) {
      normalPicture = <GalleryImages>[];
      json['normalPicture'].forEach((v) {
        normalPicture!.add(GalleryImages.fromJson(v));
      });
    }
    visible = json['visible'];
    numbersOfPieces = json['numbersOfPieces'];
    ticket = json['ticket'];
    dummy = json['dummy'];
    ecoTaxValue = json['ecoTaxValue'] != null ? double.parse(json['ecoTaxValue'].toString()):null;
    redirectToPdp = json['redirectToPdp'];
    comingSoon = json['comingSoon'];
    color = json['color'] != null ? Color.fromJson(json['color']) : null;
    rgbColor = json['rgbColor'];
    genArticle = json['genArticle'];
    damStyleWith = json['damStyleWith']?.cast<String>();
    turnToSku = json['turnToSku'];
    videoId = json['videoId'];
    plpVideo = json['plpVideo'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['name'] = name;
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    data['pk'] = pk;
    if (whitePrice != null) {
      data['whitePrice'] = whitePrice!.toJson();
    }
    if (logoPicture != null) {
      data['logoPicture'] = logoPicture!.map((v) => v.toJson()).toList();
    }
    if (normalPicture != null) {
      data['normalPicture'] =
          normalPicture!.map((v) => v.toJson()).toList();
    }
    data['visible'] = visible;
    data['numbersOfPieces'] = numbersOfPieces;
    data['ticket'] = ticket;
    data['dummy'] = dummy;
    data['ecoTaxValue'] = ecoTaxValue;
    data['redirectToPdp'] = redirectToPdp;
    data['comingSoon'] = comingSoon;
    if (color != null) {
      data['color'] = color!.toJson();
    }
    data['rgbColor'] = rgbColor;
    data['genArticle'] = genArticle;
    data['damStyleWith'] = damStyleWith;
    data['turnToSku'] = turnToSku;
    data['videoId'] = videoId;
    data['plpVideo'] = plpVideo;
    return data;
  }
}

class Color {
  String? code;
  String? text;
  String? filterName;
  String? hybrisCode;

  Color({this.code, this.text, this.filterName, this.hybrisCode});

  Color.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    text = json['text'];
    filterName = json['filterName'];
    hybrisCode = json['hybrisCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['code'] = code;
    data['text'] = text;
    data['filterName'] = filterName;
    data['hybrisCode'] = hybrisCode;
    return data;
  }
}

class VariantSizes {
  int? orderFilter;
  String? filterCode;

  VariantSizes({this.orderFilter, this.filterCode});

  VariantSizes.fromJson(Map<String, dynamic> json) {
    orderFilter = json['orderFilter'];
    filterCode = json['filterCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['orderFilter'] = orderFilter;
    data['filterCode'] = filterCode;
    return data;
  }
}

class GalleryImages {
  String? url;
  String? baseUrl;

  GalleryImages({this.url, this.baseUrl});

  GalleryImages.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    baseUrl = json['baseUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['url'] = url;
    data['baseUrl'] = baseUrl;
    return data;
  }
}
