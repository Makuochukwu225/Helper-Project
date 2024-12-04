class AuthModel {
final String? message;
final int? statusCode;
final Data? data;
final int? totalCount;
const AuthModel({this.message , this.statusCode , this.data , this.totalCount });
AuthModel copyWith({String? message, int? statusCode, Data? data, int? totalCount}){
return AuthModel(
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

static AuthModel fromJson(Map<String , Object?> json){
    return AuthModel(
            message:json['message'] == null ? null : json['message'] as String,
statusCode:json['statusCode'] == null ? null : json['statusCode'] as int,
data:json['data'] == null ? null : Data.fromJson(json['data']  as Map<String,Object?>),
totalCount:json['totalCount'] == null ? null : json['totalCount'] as int
    );
}

@override
String toString(){
    return '''AuthModel(
                message:$message,
statusCode:$statusCode,
data:${data.toString()},
totalCount:$totalCount
    ) ''';
}

@override
bool operator ==(Object other){
    return other is AuthModel && 
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
final User? user;
final Credentials? credentials;
const Data({this.user , this.credentials });
Data copyWith({User? user, Credentials? credentials}){
return Data(
            user:user ?? this.user,
credentials:credentials ?? this.credentials
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'user': user?.toJson(),
'credentials': credentials?.toJson()
    };
}

static Data fromJson(Map<String , Object?> json){
    return Data(
            user:json['user'] == null ? null : User.fromJson(json['user']  as Map<String,Object?>),
credentials:json['credentials'] == null ? null : Credentials.fromJson(json['credentials']  as Map<String,Object?>)
    );
}

@override
String toString(){
    return '''Data(
                user:${user.toString()},
credentials:${credentials.toString()}
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Data && 
        other.runtimeType == runtimeType &&
        other.user == user && 
other.credentials == credentials;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                user, 
credentials
    );
}
    
}
      
      
class Credentials {
final String? schema;
final String? accessToken;
final String? refreshToken;
final String? expiresIn;
const Credentials({this.schema , this.accessToken , this.refreshToken , this.expiresIn });
Credentials copyWith({String? schema, String? accessToken, String? refreshToken, String? expiresIn}){
return Credentials(
            schema:schema ?? this.schema,
accessToken:accessToken ?? this.accessToken,
refreshToken:refreshToken ?? this.refreshToken,
expiresIn:expiresIn ?? this.expiresIn
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'schema': schema,
'accessToken': accessToken,
'refreshToken': refreshToken,
'expiresIn': expiresIn
    };
}

static Credentials fromJson(Map<String , Object?> json){
    return Credentials(
            schema:json['schema'] == null ? null : json['schema'] as String,
accessToken:json['accessToken'] == null ? null : json['accessToken'] as String,
refreshToken:json['refreshToken'] == null ? null : json['refreshToken'] as String,
expiresIn:json['expiresIn'] == null ? null : json['expiresIn'] as String
    );
}

@override
String toString(){
    return '''Credentials(
                schema:$schema,
accessToken:$accessToken,
refreshToken:$refreshToken,
expiresIn:$expiresIn
    ) ''';
}

@override
bool operator ==(Object other){
    return other is Credentials && 
        other.runtimeType == runtimeType &&
        other.schema == schema && 
other.accessToken == accessToken && 
other.refreshToken == refreshToken && 
other.expiresIn == expiresIn;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                schema, 
accessToken, 
refreshToken, 
expiresIn
    );
}
    
}
      
      
class User {
final String? id;
final String? firstname;
final String? lastname;
final String? username;
final String? email;
final String? phonenumber;
final String? country;
final String? state;
final List<dynamic>? roles;
final String? picture;
final String? rank;
const User({this.id , this.firstname , this.lastname , this.username , this.email , this.phonenumber , this.country , this.state , this.roles , this.picture , this.rank });
User copyWith({String? id, String? firstname, String? lastname, String? username, String? email, String? phonenumber, String? country, String? state, List<dynamic>? roles, String? picture, String? rank}){
return User(
            id:id ?? this.id,
firstname:firstname ?? this.firstname,
lastname:lastname ?? this.lastname,
username:username ?? this.username,
email:email ?? this.email,
phonenumber:phonenumber ?? this.phonenumber,
country:country ?? this.country,
state:state ?? this.state,
roles:roles ?? this.roles,
picture:picture ?? this.picture,
rank:rank ?? this.rank
        );
        }
        
Map<String,Object?> toJson(){
    return {
            'id': id,
'firstname': firstname,
'lastname': lastname,
'username': username,
'email': email,
'phonenumber': phonenumber,
'country': country,
'state': state,
'roles': roles,
'picture': picture,
'rank': rank
    };
}

static User fromJson(Map<String , Object?> json){
    return User(
            id:json['id'] == null ? null : json['id'] as String,
firstname:json['firstname'] == null ? null : json['firstname'] as String,
lastname:json['lastname'] == null ? null : json['lastname'] as String,
username:json['username'] == null ? null : json['username'] as String,
email:json['email'] == null ? null : json['email'] as String,
phonenumber:json['phonenumber'] == null ? null : json['phonenumber'] as String,
country:json['country'] == null ? null : json['country'] as String,
state:json['state'] == null ? null : json['state'] as String,
roles:json['roles'] == null ? null : json['roles'] as List<dynamic>,
picture:json['picture'] == null ? null : json['picture'] as String,
rank:json['rank'] == null ? null : json['rank'] as String
    );
}

@override
String toString(){
    return '''User(
                id:$id,
firstname:$firstname,
lastname:$lastname,
username:$username,
email:$email,
phonenumber:$phonenumber,
country:$country,
state:$state,
roles:$roles,
picture:$picture,
rank:$rank
    ) ''';
}

@override
bool operator ==(Object other){
    return other is User && 
        other.runtimeType == runtimeType &&
        other.id == id && 
other.firstname == firstname && 
other.lastname == lastname && 
other.username == username && 
other.email == email && 
other.phonenumber == phonenumber && 
other.country == country && 
other.state == state && 
other.roles == roles && 
other.picture == picture && 
other.rank == rank;
}
      
@override
int get hashCode {
    return Object.hash(
                runtimeType,
                id, 
firstname, 
lastname, 
username, 
email, 
phonenumber, 
country, 
state, 
roles, 
picture, 
rank
    );
}
    
}
      
      
  
     