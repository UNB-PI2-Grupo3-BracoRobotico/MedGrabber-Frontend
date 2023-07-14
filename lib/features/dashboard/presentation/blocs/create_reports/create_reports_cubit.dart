// import 'dart:convert';
// import 'dart:io';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:freezed_annotation/freezed_annotation.dart';
// import 'package:grabber/features/settings/domain/usecases/update_store_name.dart';
// import 'package:path_provider/path_provider.dart';

// part 'create_reports_cubit.freezed.dart';
// part 'create_reports_state.dart';

// class CreateReportsCubit extends Cubit<CreateReportsState> {
//   CreateReportsCubit() : super(const CreateReportsState.initial());

//   static const String bodyBytes =
//       'gASVCwMAAAAAAABdlCh9lCiMEWN1c3RvbWVyX29yZGVyX2lklEsBjAd1c2VyX2lklIwBMpSMBWVtYWlslIwUbmF0YW5hZWxAZXhhbXBsZS5jb22UjApvcmRlcl9kYXRllIwIZGF0ZXRpbWWUjARkYXRllJOUQwQH5wcNlIWUUpSMCnRvdGFsX2Nvc3SUR0BCAAAAAAAAjAxvcmRlcl9zdGF0dXOUjBBhd2FpdGluZ19wYXltZW50lIwIcHJvZHVjdHOUXZR9lCiMCnByb2R1Y3RfaWSUSwmMDHByb2R1Y3RfbmFtZZRoBIwTcHJvZHVjdF9kZXNjcmlwdGlvbpSMAiAylIwNcHJvZHVjdF9wcmljZZRHQCn64UeuFHuMDnByb2R1Y3RfYW1vdW50lEstjApwb3NpdGlvbl94lEsCjApwb3NpdGlvbl95lEsDdWF1fZQoaAJLAmgDaARoBYwUbmF0YW5hZWxAZXhhbXBsZS5jb22UaAdoCkMEB+cHDZSFlFKUaA5HQEIAAAAAAABoD4wQYXdhaXRpbmdfcGF5bWVudJRoEV2UfZQojApwcm9kdWN0X2lklEsKjAxwcm9kdWN0X25hbWWUaASME3Byb2R1Y3RfZGVzY3JpcHRpb26UjAIgMpSMDXByb2R1Y3RfcHJpY2WUR0Ap+uFHrhR7jA5wcm9kdWN0X2Ftb3VudJRLLYwKcG9zaXRpb25feJRLAowKcG9zaXRpb25feZRLAXVhdX2UKGgCSwloA2gEaAWMFG5hdGFuYWVsQGV4YW1wbGUuY29tlGgHaApDBAfnBw2UhZRSlGgOR0BCAAAAAAAAaA+MEGF3YWl0aW5nX3BheW1lbnSUaBFdlH2UKIwKcHJvZHVjdF9pZJRLC4wMcHJvZHVjdF9uYW1llGgEjBNwcm9kdWN0X2Rlc2NyaXB0aW9ulIwCIDKUjA1wcm9kdWN0X3ByaWNllEdAKfrhR64Ue4wOcHJvZHVjdF9hbW91bnSUSy2MCnBvc2l0aW9uX3iUSwKMCnBvc2l0aW9uX3mUSwV1YXVlLg==';

//   Future<void> createOrdersReport() async {
//     emit(const CreateReportsState.loading());
//     try {
//       late final Directory? dir;
//       if (Platform.isIOS) {
//         dir = await getApplicationDocumentsDirectory();
//       } else {
//         dir = await getExternalStorageDirectory();
//       }
//       if (dir == null) {
//         emit(const CreateReportsState.error());
//         return;
//       }
//       File result = File('${dir.path}/grabber_order_report.pdf');
//       final bytes = base64Decode(bodyBytes);
//       if (result.existsSync()) {
//         print('existe a porra do fiel');
//       }
//       await result.writeAsBytes(bytes);
//       emit(CreateReportsState.success(file: result));
//     } catch (e) {
//       print(e.toString());
//       emit(const CreateReportsState.error());
//     }
//   }

//   Future<void> reset() async {
//     emit(const CreateReportsState.initial());
//   }
// }
