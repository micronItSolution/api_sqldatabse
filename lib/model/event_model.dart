class EventModel {
  List<Events>? events;
  String? restUrl;
  String? nextRestUrl;
  int? total;
  int? totalPages;

  EventModel(
      {this.events,
      this.restUrl,
      this.nextRestUrl,
      this.total,
      this.totalPages});

  EventModel.fromJson(Map<String, dynamic> json) {
    if (json['events'] != null) {
      events = <Events>[];
      json['events'].forEach((v) {
        events!.add(new Events.fromJson(v));
      });
    }
    restUrl = json['rest_url'];
    nextRestUrl = json['next_rest_url'];
    total = json['total'];
    totalPages = json['total_pages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.events != null) {
      data['events'] = this.events!.map((v) => v.toJson()).toList();
    }
    data['rest_url'] = this.restUrl;
    data['next_rest_url'] = this.nextRestUrl;
    data['total'] = this.total;
    data['total_pages'] = this.totalPages;
    return data;
  }
}

class Events {
  int? id;
  String? globalId;
  List<String>? globalIdLineage;
  String? author;
  String? status;
  String? date;
  String? dateUtc;
  String? modified;
  String? modifiedUtc;
  String? url;
  String? restUrl;
  String? title;
  String? description;
  String? excerpt;
  String? slug;
  Image? image;
  bool? allDay;
  String? startDate;
  StartDateDetails? startDateDetails;
  String? endDate;
  StartDateDetails? endDateDetails;
  String? utcStartDate;
  StartDateDetails? utcStartDateDetails;
  String? utcEndDate;
  StartDateDetails? utcEndDateDetails;
  String? timezone;
  String? timezoneAbbr;
  String? cost;
  CostDetails? costDetails;
  String? website;
  bool? showMap;
  bool? showMapLink;
  bool? hideFromListings;
  bool? sticky;
  bool? featured;
  List<Categories>? categories;
  // List<Null>? tags;
  // List<Null>? venue;
  // List<Null>? organizer;
  JsonLd? jsonLd;

  Events(
      {this.id,
      this.globalId,
      this.globalIdLineage,
      this.author,
      this.status,
      this.date,
      this.dateUtc,
      this.modified,
      this.modifiedUtc,
      this.url,
      this.restUrl,
      this.title,
      this.description,
      // this.excerpt,
      // this.slug,
      this.image,
      // this.allDay,
      // this.startDate,
      this.startDateDetails,
      // this.endDate,
      this.endDateDetails,
      // this.utcStartDate,
      // this.utcStartDateDetails,
      // this.utcEndDate,
      // this.utcEndDateDetails,
      // this.timezone,
      // this.timezoneAbbr,
      // this.cost,
      // this.costDetails,
      // this.website,
      // this.showMap,
      // this.showMapLink,
      // this.hideFromListings,
      // this.sticky,
      // this.featured,
      // this.categories,

      // this.tags,
      // this.venue,
      // this.organizer,
      this.jsonLd});

  Events.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    globalId = json['global_id'];
    globalIdLineage = json['global_id_lineage'].cast<String>();
    author = json['author'];
    status = json['status'];
    date = json['date'];
    dateUtc = json['date_utc'];
    modified = json['modified'];
    modifiedUtc = json['modified_utc'];
    url = json['url'];
    restUrl = json['rest_url'];
    title = json['title'];
    description = json['description'];
    // excerpt = json['excerpt'];
    // slug = json['slug'];
    // image = json['image'] != null ? new Image.fromJson(json['image']) : null;
    // allDay = json['all_day'];
    // startDate = json['start_date'];
    startDateDetails = json['start_date_details'] != null
        ? new StartDateDetails.fromJson(json['start_date_details'])
        : null;
    // endDate = json['end_date'];
    endDateDetails = json['end_date_details'] != null
        ? new StartDateDetails.fromJson(json['end_date_details'])
        : null;
    // utcStartDate = json['utc_start_date'];
    // utcStartDateDetails = json['utc_start_date_details'] != null
    //     ? new StartDateDetails.fromJson(json['utc_start_date_details'])
    //     : null;
    // utcEndDate = json['utc_end_date'];
    // utcEndDateDetails = json['utc_end_date_details'] != null
    //     ? new StartDateDetails.fromJson(json['utc_end_date_details'])
    //     : null;
    // timezone = json['timezone'];
    // timezoneAbbr = json['timezone_abbr'];
    // cost = json['cost'];
    // costDetails = json['cost_details'] != null
    //     ? new CostDetails.fromJson(json['cost_details'])
    //     : null;
    // website = json['website'];
    // showMap = json['show_map'];
    // showMapLink = json['show_map_link'];
    // hideFromListings = json['hide_from_listings'];
    // sticky = json['sticky'];
    // featured = json['featured'];
    // if (json['categories'] != null) {
    //   categories = <Categories>[];
    //   json['categories'].forEach((v) {
    //     categories!.add(new Categories.fromJson(v));
    //   });
    // }

    // if (json['tags'] != null) {
    //   tags = <Null>[];
    //   json['tags'].forEach((v) {
    //     tags!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['venue'] != null) {
    //   venue = <Null>[];
    //   json['venue'].forEach((v) {
    //     venue!.add(new Null.fromJson(v));
    //   });
    // }
    // if (json['organizer'] != null) {
    //   organizer = <Null>[];
    //   json['organizer'].forEach((v) {
    //     organizer!.add(new Null.fromJson(v));
    //   });
    // }
    jsonLd =
        json['json_ld'] != null ? new JsonLd.fromJson(json['json_ld']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['global_id'] = this.globalId;
    data['global_id_lineage'] = this.globalIdLineage;
    data['author'] = this.author;
    data['status'] = this.status;
    data['date'] = this.date;
    data['date_utc'] = this.dateUtc;
    data['modified'] = this.modified;
    data['modified_utc'] = this.modifiedUtc;
    data['url'] = this.url;
    data['rest_url'] = this.restUrl;
    data['title'] = this.title;
    data['description'] = this.description;
    data['excerpt'] = this.excerpt;
    data['slug'] = this.slug;
    if (this.image != null) {
      data['image'] = this.image!.toJson();
    }
    data['all_day'] = this.allDay;
    data['start_date'] = this.startDate;
    if (this.startDateDetails != null) {
      data['start_date_details'] = this.startDateDetails!.toJson();
    }
    data['end_date'] = this.endDate;
    if (this.endDateDetails != null) {
      data['end_date_details'] = this.endDateDetails!.toJson();
    }
    data['utc_start_date'] = this.utcStartDate;
    if (this.utcStartDateDetails != null) {
      data['utc_start_date_details'] = this.utcStartDateDetails!.toJson();
    }
    data['utc_end_date'] = this.utcEndDate;
    if (this.utcEndDateDetails != null) {
      data['utc_end_date_details'] = this.utcEndDateDetails!.toJson();
    }
    data['timezone'] = this.timezone;
    data['timezone_abbr'] = this.timezoneAbbr;
    data['cost'] = this.cost;
    if (this.costDetails != null) {
      data['cost_details'] = this.costDetails!.toJson();
    }
    data['website'] = this.website;
    data['show_map'] = this.showMap;
    data['show_map_link'] = this.showMapLink;
    data['hide_from_listings'] = this.hideFromListings;
    data['sticky'] = this.sticky;
    data['featured'] = this.featured;
    if (this.categories != null) {
      data['categories'] = this.categories!.map((v) => v.toJson()).toList();
    }
    // if (this.tags != null) {
    //   data['tags'] = this.tags!.map((v) => v.toJson()).toList();
    // }
    // if (this.venue != null) {
    //   data['venue'] = this.venue!.map((v) => v.toJson()).toList();
    // }
    // if (this.organizer != null) {
    //   data['organizer'] = this.organizer!.map((v) => v.toJson()).toList();
    // }
    if (this.jsonLd != null) {
      data['json_ld'] = this.jsonLd!.toJson();
    }
    return data;
  }
}

class Image {
  String? url;
  // int? id;
  // String? extension;
  // int? width;
  // int? height;
  // int? filesize;
  // Sizes? sizes;

  Image({
    this.url,
    // this.id,
    // this.extension,
    // this.width,
    // this.height,
    // this.filesize,
    // this.sizes
  });

  Image.fromJson(Map<String, dynamic> json) {
    url = json['url'];
    // id = json['id'];
    // extension = json['extension'];
    // width = json['width'];
    // height = json['height'];
    // filesize = json['filesize'];
    // sizes = json['sizes'] != null ? new Sizes.fromJson(json['sizes']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['url'] = this.url;
    // data['id'] = this.id;
    // data['extension'] = this.extension;
    // data['width'] = this.width;
    // data['height'] = this.height;
    // data['filesize'] = this.filesize;
    // if (this.sizes != null) {
    //   data['sizes'] = this.sizes!.toJson();
    // }
    return data;
  }
}

class Sizes {
  AlmThumbnail? almThumbnail;
  AlmThumbnail? postThumbnail;
  AlmThumbnail? plutoIndexWidth;
  AlmThumbnail? plutoFixedHeight;
  AlmThumbnail? plutoFixedHeightImage;
  AlmThumbnail? plutoTopFeaturedPost;
  AlmThumbnail? plutoCarouselPost;

  Sizes(
      {this.almThumbnail,
      this.postThumbnail,
      this.plutoIndexWidth,
      this.plutoFixedHeight,
      this.plutoFixedHeightImage,
      this.plutoTopFeaturedPost,
      this.plutoCarouselPost});

  Sizes.fromJson(Map<String, dynamic> json) {
    almThumbnail = json['alm-thumbnail'] != null
        ? new AlmThumbnail.fromJson(json['alm-thumbnail'])
        : null;
    postThumbnail = json['post-thumbnail'] != null
        ? new AlmThumbnail.fromJson(json['post-thumbnail'])
        : null;
    plutoIndexWidth = json['pluto-index-width'] != null
        ? new AlmThumbnail.fromJson(json['pluto-index-width'])
        : null;
    plutoFixedHeight = json['pluto-fixed-height'] != null
        ? new AlmThumbnail.fromJson(json['pluto-fixed-height'])
        : null;
    plutoFixedHeightImage = json['pluto-fixed-height-image'] != null
        ? new AlmThumbnail.fromJson(json['pluto-fixed-height-image'])
        : null;
    plutoTopFeaturedPost = json['pluto-top-featured-post'] != null
        ? new AlmThumbnail.fromJson(json['pluto-top-featured-post'])
        : null;
    plutoCarouselPost = json['pluto-carousel-post'] != null
        ? new AlmThumbnail.fromJson(json['pluto-carousel-post'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.almThumbnail != null) {
      data['alm-thumbnail'] = this.almThumbnail!.toJson();
    }
    if (this.postThumbnail != null) {
      data['post-thumbnail'] = this.postThumbnail!.toJson();
    }
    if (this.plutoIndexWidth != null) {
      data['pluto-index-width'] = this.plutoIndexWidth!.toJson();
    }
    if (this.plutoFixedHeight != null) {
      data['pluto-fixed-height'] = this.plutoFixedHeight!.toJson();
    }
    if (this.plutoFixedHeightImage != null) {
      data['pluto-fixed-height-image'] = this.plutoFixedHeightImage!.toJson();
    }
    if (this.plutoTopFeaturedPost != null) {
      data['pluto-top-featured-post'] = this.plutoTopFeaturedPost!.toJson();
    }
    if (this.plutoCarouselPost != null) {
      data['pluto-carousel-post'] = this.plutoCarouselPost!.toJson();
    }
    return data;
  }
}

class AlmThumbnail {
  int? width;
  int? height;
  String? mimeType;
  int? filesize;
  String? url;

  AlmThumbnail(
      {this.width, this.height, this.mimeType, this.filesize, this.url});

  AlmThumbnail.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
    mimeType = json['mime-type'];
    filesize = json['filesize'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['width'] = this.width;
    data['height'] = this.height;
    data['mime-type'] = this.mimeType;
    data['filesize'] = this.filesize;
    data['url'] = this.url;
    return data;
  }
}

class StartDateDetails {
  String? year;
  String? month;
  String? day;
  String? hour;
  String? minutes;
  String? seconds;

  StartDateDetails(
      {this.year, this.month, this.day, this.hour, this.minutes, this.seconds});

  StartDateDetails.fromJson(Map<String, dynamic> json) {
    year = json['year'];
    month = json['month'];
    day = json['day'];
    hour = json['hour'];
    minutes = json['minutes'];
    seconds = json['seconds'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['year'] = this.year;
    data['month'] = this.month;
    data['day'] = this.day;
    data['hour'] = this.hour;
    data['minutes'] = this.minutes;
    data['seconds'] = this.seconds;
    return data;
  }
}

class CostDetails {
  String? currencySymbol;
  String? currencyCode;
  String? currencyPosition;
  List<String>? values;

  CostDetails(
      {this.currencySymbol,
      this.currencyCode,
      this.currencyPosition,
      this.values});

  CostDetails.fromJson(Map<String, dynamic> json) {
    currencySymbol = json['currency_symbol'];
    currencyCode = json['currency_code'];
    currencyPosition = json['currency_position'];
    values = json['values'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['currency_symbol'] = this.currencySymbol;
    data['currency_code'] = this.currencyCode;
    data['currency_position'] = this.currencyPosition;
    data['values'] = this.values;
    return data;
  }
}

class Categories {
  String? name;
  String? slug;
  int? termGroup;
  int? termTaxonomyId;
  String? taxonomy;
  String? description;
  int? parent;
  int? count;
  String? filter;
  int? id;
  Urls? urls;

  Categories(
      {this.name,
      this.slug,
      this.termGroup,
      this.termTaxonomyId,
      this.taxonomy,
      this.description,
      this.parent,
      this.count,
      this.filter,
      this.id,
      this.urls});

  Categories.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    slug = json['slug'];
    termGroup = json['term_group'];
    termTaxonomyId = json['term_taxonomy_id'];
    taxonomy = json['taxonomy'];
    description = json['description'];
    parent = json['parent'];
    count = json['count'];
    filter = json['filter'];
    id = json['id'];
    urls = json['urls'] != null ? new Urls.fromJson(json['urls']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['slug'] = this.slug;
    data['term_group'] = this.termGroup;
    data['term_taxonomy_id'] = this.termTaxonomyId;
    data['taxonomy'] = this.taxonomy;
    data['description'] = this.description;
    data['parent'] = this.parent;
    data['count'] = this.count;
    data['filter'] = this.filter;
    data['id'] = this.id;
    if (this.urls != null) {
      data['urls'] = this.urls!.toJson();
    }
    return data;
  }
}

class Urls {
  String? self;
  String? collection;

  Urls({this.self, this.collection});

  Urls.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    collection = json['collection'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    data['collection'] = this.collection;
    return data;
  }
}

class JsonLd {
  String? context;
  String? type;
  String? name;
  String? description;
  String? image;
  String? url;
  String? eventAttendanceMode;
  String? eventStatus;
  String? startDate;
  String? endDate;
  Offers? offers;
  String? performer;

  JsonLd(
      {this.context,
      this.type,
      this.name,
      this.description,
      this.image,
      this.url,
      this.eventAttendanceMode,
      this.eventStatus,
      this.startDate,
      this.endDate,
      this.offers,
      this.performer});

  JsonLd.fromJson(Map<String, dynamic> json) {
    context = json['@context'];
    type = json['@type'];
    name = json['name'];
    description = json['description'];
    image = json['image'];
    url = json['url'];
    eventAttendanceMode = json['eventAttendanceMode'];
    eventStatus = json['eventStatus'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    offers =
        json['offers'] != null ? new Offers.fromJson(json['offers']) : null;
    performer = json['performer'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['@context'] = this.context;
    data['@type'] = this.type;
    data['name'] = this.name;
    data['description'] = this.description;
    data['image'] = this.image;
    data['url'] = this.url;
    data['eventAttendanceMode'] = this.eventAttendanceMode;
    data['eventStatus'] = this.eventStatus;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    if (this.offers != null) {
      data['offers'] = this.offers!.toJson();
    }
    data['performer'] = this.performer;
    return data;
  }
}

class Offers {
  String? type;
  String? price;
  String? priceCurrency;
  String? url;
  String? category;
  String? availability;
  String? validFrom;

  Offers(
      {this.type,
      this.price,
      this.priceCurrency,
      this.url,
      this.category,
      this.availability,
      this.validFrom});

  Offers.fromJson(Map<String, dynamic> json) {
    type = json['@type'];
    price = json['price'];
    priceCurrency = json['priceCurrency'];
    url = json['url'];
    category = json['category'];
    availability = json['availability'];
    validFrom = json['validFrom'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['@type'] = this.type;
    data['price'] = this.price;
    data['priceCurrency'] = this.priceCurrency;
    data['url'] = this.url;
    data['category'] = this.category;
    data['availability'] = this.availability;
    data['validFrom'] = this.validFrom;
    return data;
  }
}

/*class Events {
int? id;
String? globalId;
List<String>? globalIdLineage;
String? author;
String? status;
String? date;
String? dateUtc;
String? modified;
String? modifiedUtc;
String? url;
String? restUrl;
String? title;
String? description;
String? excerpt;
String? slug;
Image? image;
bool? allDay;
String? startDate;
StartDateDetails? startDateDetails;
String? endDate;
StartDateDetails? endDateDetails;
String? utcStartDate;
StartDateDetails? utcStartDateDetails;
String? utcEndDate;
StartDateDetails? utcEndDateDetails;
String? timezone;
String? timezoneAbbr;
String? cost;
CostDetails? costDetails;
String? website;
bool? showMap;
bool? showMapLink;
bool? hideFromListings;
bool? sticky;
bool? featured;
List<Categories>? categories;


Events({this.id, this.globalId, this.globalIdLineage, this.author, this.status, this.date, this.dateUtc, this.modified, this.modifiedUtc, this.url, this.restUrl, this.title, this.description, this.excerpt, this.slug, this.image, this.allDay, this.startDate, this.startDateDetails, this.endDate, this.endDateDetails, this.utcStartDate, this.utcStartDateDetails, this.utcEndDate, this.utcEndDateDetails, this.timezone, this.timezoneAbbr, this.cost, this.costDetails, this.website, this.showMap, this.showMapLink, this.hideFromListings, this.sticky, this.featured, this.categories});

Events.fromJson(Map<String, dynamic> json) {
id = json['id'];
globalId = json['global_id'];
globalIdLineage = json['global_id_lineage'].cast<String>();
author = json['author'];
status = json['status'];
date = json['date'];
dateUtc = json['date_utc'];
modified = json['modified'];
modifiedUtc = json['modified_utc'];
url = json['url'];
restUrl = json['rest_url'];
title = json['title'];
description = json['description'];
excerpt = json['excerpt'];
slug = json['slug'];
image = json['image'] != null ? new Image.fromJson(json['image']) : null;
allDay = json['all_day'];
startDate = json['start_date'];
startDateDetails = json['start_date_details'] != null ? new StartDateDetails.fromJson(json['start_date_details']) : null;
endDate = json['end_date'];
endDateDetails = json['end_date_details'] != null ? new StartDateDetails.fromJson(json['end_date_details']) : null;
utcStartDate = json['utc_start_date'];
utcStartDateDetails = json['utc_start_date_details'] != null ? new StartDateDetails.fromJson(json['utc_start_date_details']) : null;
utcEndDate = json['utc_end_date'];
utcEndDateDetails = json['utc_end_date_details'] != null ? new StartDateDetails.fromJson(json['utc_end_date_details']) : null;
timezone = json['timezone'];
timezoneAbbr = json['timezone_abbr'];
cost = json['cost'];
costDetails = json['cost_details'] != null ? new CostDetails.fromJson(json['cost_details']) : null;
website = json['website'];
showMap = json['show_map'];
showMapLink = json['show_map_link'];
hideFromListings = json['hide_from_listings'];
sticky = json['sticky'];
featured = json['featured'];
if (json['categories'] != null) {
categories = <Categories>[];
json['categories'].forEach((v) { categories!.add(new Categories.fromJson(v)); });
}

}

Map<String, dynamic> toJson() {
final Map<String, dynamic> data = new Map<String, dynamic>();
data['id'] = this.id;
data['global_id'] = this.globalId;
data['global_id_lineage'] = this.globalIdLineage;
data['author'] = this.author;
data['status'] = this.status;
data['date'] = this.date;
data['date_utc'] = this.dateUtc;
data['modified'] = this.modified;
data['modified_utc'] = this.modifiedUtc;
data['url'] = this.url;
data['rest_url'] = this.restUrl;
data['title'] = this.title;
data['description'] = this.description;
data['excerpt'] = this.excerpt;
data['slug'] = this.slug;
if (this.image != null) {
data['image'] = this.image!.toJson();
}
data['all_day'] = this.allDay;
data['start_date'] = this.startDate;
if (this.startDateDetails != null) {
data['start_date_details'] = this.startDateDetails!.toJson();
}
data['end_date'] = this.endDate;
if (this.endDateDetails != null) {
data['end_date_details'] = this.endDateDetails!.toJson();
}
data['utc_start_date'] = this.utcStartDate;
if (this.utcStartDateDetails != null) {
data['utc_start_date_details'] = this.utcStartDateDetails!.toJson();
}
data['utc_end_date'] = this.utcEndDate;
if (this.utcEndDateDetails != null) {
data['utc_end_date_details'] = this.utcEndDateDetails!.toJson();
}
data['timezone'] = this.timezone;
data['timezone_abbr'] = this.timezoneAbbr;
data['cost'] = this.cost;
if (this.costDetails != null) {
data['cost_details'] = this.costDetails!.toJson();
}
data['website'] = this.website;
data['show_map'] = this.showMap;
data['show_map_link'] = this.showMapLink;
data['hide_from_listings'] = this.hideFromListings;
data['sticky'] = this.sticky;
data['featured'] = this.featured;
if (this.categories != null) {
data['categories'] = this.categories!.map((v) => v.toJson()).toList();
}

return data;
}
}*/
