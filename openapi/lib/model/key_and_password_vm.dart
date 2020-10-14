        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'key_and_password_vm.g.dart';

abstract class KeyAndPasswordVM implements Built<KeyAndPasswordVM, KeyAndPasswordVMBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'key')
    String get key;
    
        @nullable
    @BuiltValueField(wireName: r'newPassword')
    String get newPassword;

    // Boilerplate code needed to wire-up generated code
    KeyAndPasswordVM._();

    factory KeyAndPasswordVM([updates(KeyAndPasswordVMBuilder b)]) = _$KeyAndPasswordVM;
    static Serializer<KeyAndPasswordVM> get serializer => _$keyAndPasswordVMSerializer;

}

