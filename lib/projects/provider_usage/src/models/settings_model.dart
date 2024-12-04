class SettinsModel {
final String? message;
final int? statusCode;
final Data? data;
final int? totalCount;
const SettinsModel({this.message , this.statusCode , this.data , this.totalCount });
SettinsModel copyWith({String? message, int? statusCode, Data? data, int? totalCount}){
return SettinsModel(
            message:message ?? this.message,
statusCode:statusCode ?? this.statusCode,
data:data ?? this.data,
totalCount:totalCount ?? this.totalCount
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'message': message,
'statusCode': statusCode,
'data': data?.toJson(),
'totalCount': totalCount
    };
}

static SettinsModel fromJson(Map<String , Object?> json){
    return SettinsModel(
            message:json['message'] == null ? null : json['message'] as String,
statusCode:json['statusCode'] == null ? null : json['statusCode'] as int,
data:json['data'] == null ? null : Data.fromJson(json['data']  as Map<String,Object?>),
totalCount:json['totalCount'] == null ? null : json['totalCount'] as int
    );
}

@override
String toString(){
    return '''SettinsModel(
                message:$message,
statusCode:$statusCode,
data:${data.toString()},
totalCount:$totalCount
    ) ''';
}

@override
bool operator ==(Object other){
    return other is SettinsModel && 
        other.runtimeType == runtimeType &&
        other.message == message && 
other.statusCode == statusCode && 
other.data == data && 
other.totalCount == totalCount;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                message, 
statusCode, 
data, 
totalCount
    );
}
    
}
      
      
class Data {
final String? id;
final String? user;
final int? V;
final bool? isActive;
final bool? isArchived;
final bool? allDatingNotification;
final bool? allowAcedemyNotification;
final bool? allowCrowdfundNotification;
final bool? allowEntertainmentNotification;
final bool? allowForumNotification;
final bool? allowHotelNotification;
final bool? allowHousingNotification;
final bool? allowMarketplaceNotification;
final bool? allowNewsNotification;
final String? createdAt;
final String? updatedAt;
final bool? useBiometricForTransaction;
final bool? useBiometricLogin;
final bool? useDarkTheme;
final bool? useLightTheme;
final bool? usePinForLogin;
final bool? usePinForTransaction;
const Data({this.id , this.user , this.V , this.isActive , this.isArchived , this.allDatingNotification , this.allowAcedemyNotification , this.allowCrowdfundNotification , this.allowEntertainmentNotification , this.allowForumNotification , this.allowHotelNotification , this.allowHousingNotification , this.allowMarketplaceNotification , this.allowNewsNotification , this.createdAt , this.updatedAt , this.useBiometricForTransaction , this.useBiometricLogin , this.useDarkTheme , this.useLightTheme , this.usePinForLogin , this.usePinForTransaction });
Data copyWith({String? id, String? user, int? V, bool? isActive, bool? isArchived, bool? allDatingNotification, bool? allowAcedemyNotification, bool? allowCrowdfundNotification, bool? allowEntertainmentNotification, bool? allowForumNotification, bool? allowHotelNotification, bool? allowHousingNotification, bool? allowMarketplaceNotification, bool? allowNewsNotification, String? createdAt, String? updatedAt, bool? useBiometricForTransaction, bool? useBiometricLogin, bool? useDarkTheme, bool? useLightTheme, bool? usePinForLogin, bool? usePinForTransaction}){
return Data(
            id:id ?? this.id,
user:user ?? this.user,
V:V ?? this.V,
isActive:isActive ?? this.isActive,
isArchived:isArchived ?? this.isArchived,
allDatingNotification:allDatingNotification ?? this.allDatingNotification,
allowAcedemyNotification:allowAcedemyNotification ?? this.allowAcedemyNotification,
allowCrowdfundNotification:allowCrowdfundNotification ?? this.allowCrowdfundNotification,
allowEntertainmentNotification:allowEntertainmentNotification ?? this.allowEntertainmentNotification,
allowForumNotification:allowForumNotification ?? this.allowForumNotification,
allowHotelNotification:allowHotelNotification ?? this.allowHotelNotification,
allowHousingNotification:allowHousingNotification ?? this.allowHousingNotification,
allowMarketplaceNotification:allowMarketplaceNotification ?? this.allowMarketplaceNotification,
allowNewsNotification:allowNewsNotification ?? this.allowNewsNotification,
createdAt:createdAt ?? this.createdAt,
updatedAt:updatedAt ?? this.updatedAt,
useBiometricForTransaction:useBiometricForTransaction ?? this.useBiometricForTransaction,
useBiometricLogin:useBiometricLogin ?? this.useBiometricLogin,
useDarkTheme:useDarkTheme ?? this.useDarkTheme,
useLightTheme:useLightTheme ?? this.useLightTheme,
usePinForLogin:usePinForLogin ?? this.usePinForLogin,
usePinForTransaction:usePinForTransaction ?? this.usePinForTransaction
        );
        }
        
Map<String,Object?> toJson(){
    return {
            '_id': id,
'user': user,
'__v': V,
'_isActive': isActive,
'_isArchived': isArchived,
'allDatingNotification': allDatingNotification,
'allowAcedemyNotification': allowAcedemyNotification,
'allowCrowdfundNotification': allowCrowdfundNotification,
'allowEntertainmentNotification': allowEntertainmentNotification,
'allowForumNotification': allowForumNotification,
'allowHotelNotification': allowHotelNotification,
'allowHousingNotification': allowHousingNotification,
'allowMarketplaceNotification': allowMarketplaceNotification,
'allowNewsNotification': allowNewsNotification,
'createdAt': createdAt,
'updatedAt': updatedAt,
'useBiometricForTransaction': useBiometricForTransaction,
'useBiometricLogin': useBiometricLogin,
'useDarkTheme': useDarkTheme,
'useLightTheme': useLightTheme,
'usePinForLogin': usePinForLogin,
'usePinForTransaction': usePinForTransaction
    };
}

static Data fromJson(Map<String , Object?> json){
    return Data(
            id:json['_id'] == null ? null : json['_id'] as String,
user:json['user'] == null ? null : json['user'] as String,
V:json['__v'] == null ? null : json['__v'] as int,
isActive:json['_isActive'] == null ? null : json['_isActive'] as bool,
isArchived:json['_isArchived'] == null ? null : json['_isArchived'] as bool,
allDatingNotification:json['allDatingNotification'] == null ? null : json['allDatingNotification'] as bool,
allowAcedemyNotification:json['allowAcedemyNotification'] == null ? null : json['allowAcedemyNotification'] as bool,
allowCrowdfundNotification:json['allowCrowdfundNotification'] == null ? null : json['allowCrowdfundNotification'] as bool,
allowEntertainmentNotification:json['allowEntertainmentNotification'] == null ? null : json['allowEntertainmentNotification'] as bool,
allowForumNotification:json['allowForumNotification'] == null ? null : json['allowForumNotification'] as bool,
allowHotelNotification:json['allowHotelNotification'] == null ? null : json['allowHotelNotification'] as bool,
allowHousingNotification:json['allowHousingNotification'] == null ? null : json['allowHousingNotification'] as bool,
allowMarketplaceNotification:json['allowMarketplaceNotification'] == null ? null : json['allowMarketplaceNotification'] as bool,
allowNewsNotification:json['allowNewsNotification'] == null ? null : json['allowNewsNotification'] as bool,
createdAt:json['createdAt'] == null ? null : json['createdAt'] as String,
updatedAt:json['updatedAt'] == null ? null : json['updatedAt'] as String,
useBiometricForTransaction:json['useBiometricForTransaction'] == null ? null : json['useBiometricForTransaction'] as bool,
useBiometricLogin:json['useBiometricLogin'] == null ? null : json['useBiometricLogin'] as bool,
useDarkTheme:json['useDarkTheme'] == null ? null : json['useDarkTheme'] as bool,
useLightTheme:json['useLightTheme'] == null ? null : json['useLightTheme'] as bool,
usePinForLogin:json['usePinForLogin'] == null ? null : json['usePinForLogin'] as bool,
usePinForTransaction:json['usePinForTransaction'] == null ? null : json['usePinForTransaction'] as bool
    );
}

@override
String toString(){
    return '''Data(
                id:$id,
user:$user,
V:$V,
isActive:$isActive,
isArchived:$isArchived,
allDatingNotification:$allDatingNotification,
allowAcedemyNotification:$allowAcedemyNotification,
allowCrowdfundNotification:$allowCrowdfundNotification,
allowEntertainmentNotification:$allowEntertainmentNotification,
allowForumNotification:$allowForumNotification,
allowHotelNotification:$allowHotelNotification,
allowHousingNotification:$allowHousingNotification,
allowMarketplaceNotification:$allowMarketplaceNotification,
allowNewsNotification:$allowNewsNotification,
createdAt:$createdAt,
updatedAt:$updatedAt,
useBiometricForTransaction:$useBiometricForTransaction,
useBiometricLogin:$useBiometricLogin,
useDarkTheme:$useDarkTheme,
useLightTheme:$useLightTheme,
usePinForLogin:$usePinForLogin,
usePinForTransaction:$usePinForTransaction
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Data && 
        other.runtimeType == runtimeType &&
        other.id == id && 
other.user == user && 
other.V == V && 
other.isActive == isActive && 
other.isArchived == isArchived && 
other.allDatingNotification == allDatingNotification && 
other.allowAcedemyNotification == allowAcedemyNotification && 
other.allowCrowdfundNotification == allowCrowdfundNotification && 
other.allowEntertainmentNotification == allowEntertainmentNotification && 
other.allowForumNotification == allowForumNotification && 
other.allowHotelNotification == allowHotelNotification && 
other.allowHousingNotification == allowHousingNotification && 
other.allowMarketplaceNotification == allowMarketplaceNotification && 
other.allowNewsNotification == allowNewsNotification && 
other.createdAt == createdAt && 
other.updatedAt == updatedAt && 
other.useBiometricForTransaction == useBiometricForTransaction && 
other.useBiometricLogin == useBiometricLogin && 
other.useDarkTheme == useDarkTheme && 
other.useLightTheme == useLightTheme && 
other.usePinForLogin == usePinForLogin && 
other.usePinForTransaction == usePinForTransaction;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                id, 
user, 
V, 
isActive, 
isArchived, 
allDatingNotification, 
allowAcedemyNotification, 
allowCrowdfundNotification, 
allowEntertainmentNotification, 
allowForumNotification, 
allowHotelNotification, 
allowHousingNotification, 
allowMarketplaceNotification, 
allowNewsNotification, 
createdAt, 
updatedAt, 
useBiometricForTransaction, 
useBiometricLogin, 
useDarkTheme
    );
}
    
}
      
      
  
     