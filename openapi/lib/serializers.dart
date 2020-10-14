library serializers;

import 'package:built_value/iso_8601_date_time_serializer.dart';
import 'package:built_value/serializer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/standard_json_plugin.dart';

import 'package:openapi/model/amcdto.dart';
import 'package:openapi/model/amc_history_dto.dart';
import 'package:openapi/model/answer_dto.dart';
import 'package:openapi/model/attempt_history_dto.dart';
import 'package:openapi/model/audio_dto.dart';
import 'package:openapi/model/branch_dto.dart';
import 'package:openapi/model/brand_dto.dart';
import 'package:openapi/model/call_center_executive_dto.dart';
import 'package:openapi/model/category_dto.dart';
import 'package:openapi/model/city_dto.dart';
import 'package:openapi/model/customer_address_dto.dart';
import 'package:openapi/model/customer_dto.dart';
import 'package:openapi/model/district_dto.dart';
import 'package:openapi/model/extended_warranty_dto.dart';
import 'package:openapi/model/extended_warranty_history_dto.dart';
import 'package:openapi/model/feedback_dto.dart';
import 'package:openapi/model/jwt_token.dart';
import 'package:openapi/model/job_dto.dart';
import 'package:openapi/model/job_history_dto.dart';
import 'package:openapi/model/job_type_dto.dart';
import 'package:openapi/model/key_and_password_vm.dart';
import 'package:openapi/model/login_vm.dart';
import 'package:openapi/model/loyalty_program_dto.dart';
import 'package:openapi/model/managed_user_vm.dart';
import 'package:openapi/model/message_dto.dart';
import 'package:openapi/model/otp_response_dto.dart';
import 'package:openapi/model/password_change_dto.dart';
import 'package:openapi/model/pin_code_dto.dart';
import 'package:openapi/model/product_dto.dart';
import 'package:openapi/model/promotional_message_dto.dart';
import 'package:openapi/model/purchased_product_dto.dart';
import 'package:openapi/model/question_dto.dart';
import 'package:openapi/model/safety_tip_dto.dart';
import 'package:openapi/model/service_executive_dto.dart';
import 'package:openapi/model/service_executive_rating_dto.dart';
import 'package:openapi/model/service_type_dto.dart';
import 'package:openapi/model/state_dto.dart';
import 'package:openapi/model/ticket_dto.dart';
import 'package:openapi/model/ticket_history_dto.dart';
import 'package:openapi/model/user.dart';
import 'package:openapi/model/user_dto.dart';
import 'package:openapi/model/warranty_dto.dart';
import 'package:openapi/model/warranty_history_dto.dart';


part 'serializers.g.dart';

@SerializersFor(const [
AMCDTO,
AMCHistoryDTO,
AnswerDTO,
AttemptHistoryDTO,
AudioDTO,
BranchDTO,
BrandDTO,
CallCenterExecutiveDTO,
CategoryDTO,
CityDTO,
CustomerAddressDTO,
CustomerDTO,
DistrictDTO,
ExtendedWarrantyDTO,
ExtendedWarrantyHistoryDTO,
FeedbackDTO,
JWTToken,
JobDTO,
JobHistoryDTO,
JobTypeDTO,
KeyAndPasswordVM,
LoginVM,
LoyaltyProgramDTO,
ManagedUserVM,
MessageDTO,
OtpResponseDTO,
PasswordChangeDTO,
PinCodeDTO,
ProductDTO,
PromotionalMessageDTO,
PurchasedProductDTO,
QuestionDTO,
SafetyTipDTO,
ServiceExecutiveDTO,
ServiceExecutiveRatingDTO,
ServiceTypeDTO,
StateDTO,
TicketDTO,
TicketHistoryDTO,
User,
UserDTO,
WarrantyDTO,
WarrantyHistoryDTO,

])

//allow all models to be serialized within a list
Serializers serializers = (_$serializers.toBuilder()
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AMCDTO)]),
() => new ListBuilder<AMCDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AMCHistoryDTO)]),
() => new ListBuilder<AMCHistoryDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AnswerDTO)]),
() => new ListBuilder<AnswerDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AttemptHistoryDTO)]),
() => new ListBuilder<AttemptHistoryDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(AudioDTO)]),
() => new ListBuilder<AudioDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(BranchDTO)]),
() => new ListBuilder<BranchDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(BrandDTO)]),
() => new ListBuilder<BrandDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CallCenterExecutiveDTO)]),
() => new ListBuilder<CallCenterExecutiveDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CategoryDTO)]),
() => new ListBuilder<CategoryDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CityDTO)]),
() => new ListBuilder<CityDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CustomerAddressDTO)]),
() => new ListBuilder<CustomerAddressDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(CustomerDTO)]),
() => new ListBuilder<CustomerDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(DistrictDTO)]),
() => new ListBuilder<DistrictDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ExtendedWarrantyDTO)]),
() => new ListBuilder<ExtendedWarrantyDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ExtendedWarrantyHistoryDTO)]),
() => new ListBuilder<ExtendedWarrantyHistoryDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(FeedbackDTO)]),
() => new ListBuilder<FeedbackDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(JWTToken)]),
() => new ListBuilder<JWTToken>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(JobDTO)]),
() => new ListBuilder<JobDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(JobHistoryDTO)]),
() => new ListBuilder<JobHistoryDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(JobTypeDTO)]),
() => new ListBuilder<JobTypeDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(KeyAndPasswordVM)]),
() => new ListBuilder<KeyAndPasswordVM>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(LoginVM)]),
() => new ListBuilder<LoginVM>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(LoyaltyProgramDTO)]),
() => new ListBuilder<LoyaltyProgramDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ManagedUserVM)]),
() => new ListBuilder<ManagedUserVM>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(MessageDTO)]),
() => new ListBuilder<MessageDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(OtpResponseDTO)]),
() => new ListBuilder<OtpResponseDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PasswordChangeDTO)]),
() => new ListBuilder<PasswordChangeDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PinCodeDTO)]),
() => new ListBuilder<PinCodeDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ProductDTO)]),
() => new ListBuilder<ProductDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PromotionalMessageDTO)]),
() => new ListBuilder<PromotionalMessageDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(PurchasedProductDTO)]),
() => new ListBuilder<PurchasedProductDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(QuestionDTO)]),
() => new ListBuilder<QuestionDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(SafetyTipDTO)]),
() => new ListBuilder<SafetyTipDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ServiceExecutiveDTO)]),
() => new ListBuilder<ServiceExecutiveDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ServiceExecutiveRatingDTO)]),
() => new ListBuilder<ServiceExecutiveRatingDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(ServiceTypeDTO)]),
() => new ListBuilder<ServiceTypeDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(StateDTO)]),
() => new ListBuilder<StateDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(TicketDTO)]),
() => new ListBuilder<TicketDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(TicketHistoryDTO)]),
() => new ListBuilder<TicketHistoryDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(User)]),
() => new ListBuilder<User>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(UserDTO)]),
() => new ListBuilder<UserDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(WarrantyDTO)]),
() => new ListBuilder<WarrantyDTO>())
..addBuilderFactory(
const FullType(BuiltList, const [const FullType(WarrantyHistoryDTO)]),
() => new ListBuilder<WarrantyHistoryDTO>())

..add(Iso8601DateTimeSerializer())
).build();

Serializers standardSerializers =
(serializers.toBuilder()
..addPlugin(StandardJsonPlugin())).build();
