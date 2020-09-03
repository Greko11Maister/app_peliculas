class SearchMultiModel {
  int page;
  int totalResults;
  int totalPages;
  List<Results> results;

  SearchMultiModel(
      {this.page, this.totalResults, this.totalPages, this.results});

  SearchMultiModel.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    totalResults = json['total_results'];
    totalPages = json['total_pages'];
    if (json['results'] != null) {
      results = new List<Results>();
      json['results'].forEach((v) {
        results.add(new Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['total_results'] = this.totalResults;
    data['total_pages'] = this.totalPages;
    if (this.results != null) {
      data['results'] = this.results.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Results {
  int voteCount;
  dynamic popularity;
  int id;
  bool video;
  String mediaType;
  double voteAverage;
  String title;
  String releaseDate;
  String originalLanguage;
  String originalTitle;
  List<int> genreIds;
  String backdropPath;
  bool adult;
  String overview;
  String posterPath;
  String originalName;
  String name;
  String firstAirDate;
  List<String> originCountry;
  String knownForDepartment;
  List<KnownFor> knownFor;
  dynamic profilePath;
  int gender;

  Results(
      {this.voteCount,
        this.popularity,
        this.id,
        this.video,
        this.mediaType,
        this.voteAverage,
        this.title,
        this.releaseDate,
        this.originalLanguage,
        this.originalTitle,
        this.genreIds,
        this.backdropPath,
        this.adult,
        this.overview,
        this.posterPath,
        this.originalName,
        this.name,
        this.firstAirDate,
        this.originCountry,
        this.knownForDepartment,
        this.knownFor,
        this.profilePath,
        this.gender});

  Results.fromJson(Map<String, dynamic> json) {
    voteCount = json['vote_count'];
    popularity = json['popularity'];
    id = json['id'];
    video = json['video'];
    mediaType = json['media_type'];
    voteAverage = double.parse(json['vote_average'].toString());
    title = json['title'];
    releaseDate = json['release_date'];
    originalLanguage = json['original_language'];
    originalTitle = json['original_title'];
    genreIds = json['genre_ids'] != null ? json['genre_ids'].cast<int>() :  null;
    backdropPath = json['backdrop_path'];
    adult = json['adult'];
    overview = json['overview'];
    posterPath = json['poster_path'];
    originalName = json['original_name'];
    name = json['name'];
    firstAirDate = json['first_air_date'];
    originCountry = json['origin_country'] != null ? json['origin_country'].cast<String>() :  null;
    knownForDepartment = json['known_for_department'];
    if (json['known_for'] != null) {
      knownFor = new List<KnownFor>();
      json['known_for'].forEach((v) {
        knownFor.add(new KnownFor.fromJson(v));
      });
    }
    profilePath = json['profile_path'];
    gender = json['gender'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['vote_count'] = this.voteCount;
    data['popularity'] = this.popularity;
    data['id'] = this.id;
    data['video'] = this.video;
    data['media_type'] = this.mediaType;
    data['vote_average'] = this.voteAverage;
    data['title'] = this.title;
    data['release_date'] = this.releaseDate;
    data['original_language'] = this.originalLanguage;
    data['original_title'] = this.originalTitle;
    data['genre_ids'] = this.genreIds;
    data['backdrop_path'] = this.backdropPath;
    data['adult'] = this.adult;
    data['overview'] = this.overview;
    data['poster_path'] = this.posterPath;
    data['original_name'] = this.originalName;
    data['name'] = this.name;
    data['first_air_date'] = this.firstAirDate;
    data['origin_country'] = this.originCountry;
    data['known_for_department'] = this.knownForDepartment;
    if (this.knownFor != null) {
      data['known_for'] = this.knownFor.map((v) => v.toJson()).toList();
    }
    data['profile_path'] = this.profilePath;
    data['gender'] = this.gender;
    return data;
  }
}

class KnownFor {
  String posterPath;
  int voteCount;
  bool video;
  String mediaType;
  int id;
  bool adult;
  List genreIds;
  String originalTitle;
  String originalLanguage;
  String title;
  double voteAverage;
  String overview;
  String releaseDate;
  String backdropPath;

  KnownFor(
      {this.posterPath,
        this.voteCount,
        this.video,
        this.mediaType,
        this.id,
        this.adult,
        this.genreIds,
        this.originalTitle,
        this.originalLanguage,
        this.title,
        this.voteAverage,
        this.overview,
        this.releaseDate,
        this.backdropPath});

  KnownFor.fromJson(Map<String, dynamic> json) {
    posterPath = json['poster_path'];
    voteCount = json['vote_count'];
    video = json['video'];
    mediaType = json['media_type'];
    id = json['id'];
    adult = json['adult'];
    genreIds = json['genre_ids'];
    originalTitle = json['original_title'];
    originalLanguage = json['original_language'];
    title = json['title'];
    voteAverage = json['vote_average'];
    overview = json['overview'];
    releaseDate = json['release_date'];
    backdropPath = json['backdrop_path'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['poster_path'] = this.posterPath;
    data['vote_count'] = this.voteCount;
    data['video'] = this.video;
    data['media_type'] = this.mediaType;
    data['id'] = this.id;
    data['adult'] = this.adult;
    data['genre_ids'] = this.genreIds;
    data['original_title'] = this.originalTitle;
    data['original_language'] = this.originalLanguage;
    data['title'] = this.title;
    data['vote_average'] = this.voteAverage;
    data['overview'] = this.overview;
    data['release_date'] = this.releaseDate;
    data['backdrop_path'] = this.backdropPath;
    return data;
  }
}
