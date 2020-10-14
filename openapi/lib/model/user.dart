        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

abstract class User implements Built<User, UserBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'activated')
    bool get activated;
    
        @nullable
    @BuiltValueField(wireName: r'email')
    String get email;
    
        @nullable
    @BuiltValueField(wireName: r'firstName')
    String get firstName;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'imageUrl')
    String get imageUrl;
    
        @nullable
    @BuiltValueField(wireName: r'langKey')
    String get langKey;
    
        @nullable
    @BuiltValueField(wireName: r'lastName')
    String get lastName;
    
        @nullable
    @BuiltValueField(wireName: r'login')
    String get login;
    
        @nullable
    @BuiltValueField(wireName: r'resetDate')
    DateTime get resetDate;

    // Boilerplate code needed to wire-up generated code
    User._();

    factory User([updates(UserBuilder b)]) = _$User;
    static Serializer<User> get serializer => _$userSerializer;

}

