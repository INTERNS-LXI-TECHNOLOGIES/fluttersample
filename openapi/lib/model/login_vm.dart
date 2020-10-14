        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'login_vm.g.dart';

abstract class LoginVM implements Built<LoginVM, LoginVMBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'password')
    String get password;
    
        @nullable
    @BuiltValueField(wireName: r'rememberMe')
    bool get rememberMe;
    
        @nullable
    @BuiltValueField(wireName: r'username')
    String get username;

    // Boilerplate code needed to wire-up generated code
    LoginVM._();

    factory LoginVM([updates(LoginVMBuilder b)]) = _$LoginVM;
    static Serializer<LoginVM> get serializer => _$loginVMSerializer;

}

