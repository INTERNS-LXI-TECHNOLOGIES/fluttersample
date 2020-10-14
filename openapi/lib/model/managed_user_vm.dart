            import 'package:built_collection/built_collection.dart';
        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'managed_user_vm.g.dart';

abstract class ManagedUserVM implements Built<ManagedUserVM, ManagedUserVMBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'activated')
    bool get activated;
    
        @nullable
    @BuiltValueField(wireName: r'authorities')
    BuiltList<String> get authorities;
    
        @nullable
    @BuiltValueField(wireName: r'createdBy')
    String get createdBy;
    
        @nullable
    @BuiltValueField(wireName: r'createdDate')
    DateTime get createdDate;
    
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
    @BuiltValueField(wireName: r'lastModifiedBy')
    String get lastModifiedBy;
    
        @nullable
    @BuiltValueField(wireName: r'lastModifiedDate')
    DateTime get lastModifiedDate;
    
        @nullable
    @BuiltValueField(wireName: r'lastName')
    String get lastName;
    
        @nullable
    @BuiltValueField(wireName: r'login')
    String get login;
    
        @nullable
    @BuiltValueField(wireName: r'password')
    String get password;

    // Boilerplate code needed to wire-up generated code
    ManagedUserVM._();

    factory ManagedUserVM([updates(ManagedUserVMBuilder b)]) = _$ManagedUserVM;
    static Serializer<ManagedUserVM> get serializer => _$managedUserVMSerializer;

}

