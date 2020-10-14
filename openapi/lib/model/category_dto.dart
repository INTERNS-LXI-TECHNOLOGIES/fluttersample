        import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'category_dto.g.dart';

abstract class CategoryDTO implements Built<CategoryDTO, CategoryDTOBuilder> {

    
        @nullable
    @BuiltValueField(wireName: r'description')
    String get description;
    
        @nullable
    @BuiltValueField(wireName: r'id')
    int get id;
    
        @nullable
    @BuiltValueField(wireName: r'image')
    String get image;
    
        @nullable
    @BuiltValueField(wireName: r'imageContentType')
    String get imageContentType;
    
        @nullable
    @BuiltValueField(wireName: r'mainCategoryId')
    int get mainCategoryId;
    
        @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    // Boilerplate code needed to wire-up generated code
    CategoryDTO._();

    factory CategoryDTO([updates(CategoryDTOBuilder b)]) = _$CategoryDTO;
    static Serializer<CategoryDTO> get serializer => _$categoryDTOSerializer;

}

