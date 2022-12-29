class Product {
  Product({
    String? couponName,
    String? categoryName,
    String? couponDetail,
    String? expiryDate,
    String? couponType,
    String? storeName,
    String? storeDetail,
    StoreImage? storeImage,
    String? storeUrl,
    String? storeAddress,
    String? storePhoneNumber,
  }) {
    _couponName = couponName;
    _categoryName = categoryName;
    _couponDetail = couponDetail;
    _expiryDate = expiryDate;
    _couponType = couponType;
    _storeName = storeName;
    _storeDetail = storeDetail;
    _storeImage = storeImage;
    _storeUrl = storeUrl;
    _storeAddress = storeAddress;
    _storePhoneNumber = storePhoneNumber;
  }

  Product.fromJson(dynamic json) {
    _couponName = json['coupon_name'];
    _categoryName = json['category_name'];
    _couponDetail = json['coupon_detail'];
    _expiryDate = json['expiry_date'];
    _couponType = json['coupon_type'];
    _storeName = json['store_name'];
    _storeDetail = json['store_detail'];
    _storeImage = json['store_image'] != null
        ? StoreImage.fromJson(json['store_image'])
        : null;
    _storeUrl = json['store_url'];
    _storeAddress = json['store_address'];
    _storePhoneNumber = json['store_phone_number'];
  }

  String? _couponName;
  String? _categoryName;
  String? _couponDetail;
  String? _expiryDate;
  String? _couponType;
  String? _storeName;
  String? _storeDetail;
  StoreImage? _storeImage;
  String? _storeUrl;
  String? _storeAddress;
  String? _storePhoneNumber;

  Product copyWith({
    String? couponName,
    String? categoryName,
    String? couponDetail,
    String? expiryDate,
    String? couponType,
    String? storeName,
    String? storeDetail,
    StoreImage? storeImage,
    String? storeUrl,
    String? storeAddress,
    String? storePhoneNumber,
  }) =>
      Product(
        couponName: couponName ?? _couponName,
        categoryName: categoryName ?? _categoryName,
        couponDetail: couponDetail ?? _couponDetail,
        expiryDate: expiryDate ?? _expiryDate,
        couponType: couponType ?? _couponType,
        storeName: storeName ?? _storeName,
        storeDetail: storeDetail ?? _storeDetail,
        storeImage: storeImage ?? _storeImage,
        storeUrl: storeUrl ?? _storeUrl,
        storeAddress: storeAddress ?? _storeAddress,
        storePhoneNumber: storePhoneNumber ?? _storePhoneNumber,
      );

  String? get couponName => _couponName;

  String? get categoryName => _categoryName;

  String? get couponDetail => _couponDetail;

  String? get expiryDate => _expiryDate;

  String? get couponType => _couponType;

  String? get storeName => _storeName;

  String? get storeDetail => _storeDetail;

  StoreImage? get storeImage => _storeImage;

  String? get storeUrl => _storeUrl;

  String? get storeAddress => _storeAddress;

  String? get storePhoneNumber => _storePhoneNumber;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['coupon_name'] = _couponName;
    map['category_name'] = _categoryName;
    map['coupon_detail'] = _couponDetail;
    map['expiry_date'] = _expiryDate;
    map['coupon_type'] = _couponType;
    map['store_name'] = _storeName;
    map['store_detail'] = _storeDetail;
    if (_storeImage != null) {
      map['store_image'] = _storeImage?.toJson();
    }
    map['store_url'] = _storeUrl;
    map['store_address'] = _storeAddress;
    map['store_phone_number'] = _storePhoneNumber;
    return map;
  }
}

class StoreImage {
  StoreImage({
    String? id,
    String? postAuthor,
    String? postDate,
    String? postDateGmt,
    String? postContent,
    String? postTitle,
    String? postExcerpt,
    String? postStatus,
    String? commentStatus,
    String? pingStatus,
    String? postPassword,
    String? postName,
    String? toPing,
    String? pinged,
    String? postModified,
    String? postModifiedGmt,
    String? postContentFiltered,
    String? postParent,
    String? guid,
    String? menuOrder,
    String? postType,
    String? postMimeType,
    String? commentCount,
    String? podItemId,
  }) {
    _id = id;
    _postAuthor = postAuthor;
    _postDate = postDate;
    _postDateGmt = postDateGmt;
    _postContent = postContent;
    _postTitle = postTitle;
    _postExcerpt = postExcerpt;
    _postStatus = postStatus;
    _commentStatus = commentStatus;
    _pingStatus = pingStatus;
    _postPassword = postPassword;
    _postName = postName;
    _toPing = toPing;
    _pinged = pinged;
    _postModified = postModified;
    _postModifiedGmt = postModifiedGmt;
    _postContentFiltered = postContentFiltered;
    _postParent = postParent;
    _guid = guid;
    _menuOrder = menuOrder;
    _postType = postType;
    _postMimeType = postMimeType;
    _commentCount = commentCount;
    _podItemId = podItemId;
  }

  StoreImage.fromJson(dynamic json) {
    _id = json['ID'];
    _postAuthor = json['post_author'];
    _postDate = json['post_date'];
    _postDateGmt = json['post_date_gmt'];
    _postContent = json['post_content'];
    _postTitle = json['post_title'];
    _postExcerpt = json['post_excerpt'];
    _postStatus = json['post_status'];
    _commentStatus = json['comment_status'];
    _pingStatus = json['ping_status'];
    _postPassword = json['post_password'];
    _postName = json['post_name'];
    _toPing = json['to_ping'];
    _pinged = json['pinged'];
    _postModified = json['post_modified'];
    _postModifiedGmt = json['post_modified_gmt'];
    _postContentFiltered = json['post_content_filtered'];
    _postParent = json['post_parent'];
    _guid = json['guid'];
    _menuOrder = json['menu_order'];
    _postType = json['post_type'];
    _postMimeType = json['post_mime_type'];
    _commentCount = json['comment_count'];
    _podItemId = json['pod_item_id'];
  }

  String? _id;
  String? _postAuthor;
  String? _postDate;
  String? _postDateGmt;
  String? _postContent;
  String? _postTitle;
  String? _postExcerpt;
  String? _postStatus;
  String? _commentStatus;
  String? _pingStatus;
  String? _postPassword;
  String? _postName;
  String? _toPing;
  String? _pinged;
  String? _postModified;
  String? _postModifiedGmt;
  String? _postContentFiltered;
  String? _postParent;
  String? _guid;
  String? _menuOrder;
  String? _postType;
  String? _postMimeType;
  String? _commentCount;
  String? _podItemId;

  StoreImage copyWith({
    String? id,
    String? postAuthor,
    String? postDate,
    String? postDateGmt,
    String? postContent,
    String? postTitle,
    String? postExcerpt,
    String? postStatus,
    String? commentStatus,
    String? pingStatus,
    String? postPassword,
    String? postName,
    String? toPing,
    String? pinged,
    String? postModified,
    String? postModifiedGmt,
    String? postContentFiltered,
    String? postParent,
    String? guid,
    String? menuOrder,
    String? postType,
    String? postMimeType,
    String? commentCount,
    String? podItemId,
  }) =>
      StoreImage(
        id: id ?? _id,
        postAuthor: postAuthor ?? _postAuthor,
        postDate: postDate ?? _postDate,
        postDateGmt: postDateGmt ?? _postDateGmt,
        postContent: postContent ?? _postContent,
        postTitle: postTitle ?? _postTitle,
        postExcerpt: postExcerpt ?? _postExcerpt,
        postStatus: postStatus ?? _postStatus,
        commentStatus: commentStatus ?? _commentStatus,
        pingStatus: pingStatus ?? _pingStatus,
        postPassword: postPassword ?? _postPassword,
        postName: postName ?? _postName,
        toPing: toPing ?? _toPing,
        pinged: pinged ?? _pinged,
        postModified: postModified ?? _postModified,
        postModifiedGmt: postModifiedGmt ?? _postModifiedGmt,
        postContentFiltered: postContentFiltered ?? _postContentFiltered,
        postParent: postParent ?? _postParent,
        guid: guid ?? _guid,
        menuOrder: menuOrder ?? _menuOrder,
        postType: postType ?? _postType,
        postMimeType: postMimeType ?? _postMimeType,
        commentCount: commentCount ?? _commentCount,
        podItemId: podItemId ?? _podItemId,
      );

  String? get id => _id;

  String? get postAuthor => _postAuthor;

  String? get postDate => _postDate;

  String? get postDateGmt => _postDateGmt;

  String? get postContent => _postContent;

  String? get postTitle => _postTitle;

  String? get postExcerpt => _postExcerpt;

  String? get postStatus => _postStatus;

  String? get commentStatus => _commentStatus;

  String? get pingStatus => _pingStatus;

  String? get postPassword => _postPassword;

  String? get postName => _postName;

  String? get toPing => _toPing;

  String? get pinged => _pinged;

  String? get postModified => _postModified;

  String? get postModifiedGmt => _postModifiedGmt;

  String? get postContentFiltered => _postContentFiltered;

  String? get postParent => _postParent;

  String? get guid => _guid;

  String? get menuOrder => _menuOrder;

  String? get postType => _postType;

  String? get postMimeType => _postMimeType;

  String? get commentCount => _commentCount;

  String? get podItemId => _podItemId;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['ID'] = _id;
    map['post_author'] = _postAuthor;
    map['post_date'] = _postDate;
    map['post_date_gmt'] = _postDateGmt;
    map['post_content'] = _postContent;
    map['post_title'] = _postTitle;
    map['post_excerpt'] = _postExcerpt;
    map['post_status'] = _postStatus;
    map['comment_status'] = _commentStatus;
    map['ping_status'] = _pingStatus;
    map['post_password'] = _postPassword;
    map['post_name'] = _postName;
    map['to_ping'] = _toPing;
    map['pinged'] = _pinged;
    map['post_modified'] = _postModified;
    map['post_modified_gmt'] = _postModifiedGmt;
    map['post_content_filtered'] = _postContentFiltered;
    map['post_parent'] = _postParent;
    map['guid'] = _guid;
    map['menu_order'] = _menuOrder;
    map['post_type'] = _postType;
    map['post_mime_type'] = _postMimeType;
    map['comment_count'] = _commentCount;
    map['pod_item_id'] = _podItemId;
    return map;
  }
}
