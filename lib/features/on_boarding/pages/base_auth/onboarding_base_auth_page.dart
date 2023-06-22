// import 'package:design_system/design_system.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:grabber/config/routes/routes.dart';
// import 'package:grabber/features/on_boarding/pages/base_auth/bloc/signup_cubit.dart';
// import 'package:grabber/features/on_boarding/pages/widgets/on_boarding_base_page.dart';
// import 'package:grabber/features/shared/base_error_page.dart';
// import 'package:grabber/features/shared/base_loading_page.dart';
// import 'package:grabber/features/shared/base_success_page.dart';
// import 'package:grabber/generated/l10n.dart';

// class SignupPage extends StatefulWidget {
//   const SignupPage({super.key});

//   @override
//   State<SignupPage> createState() => _SignupPageState();
// }

// class _SignupPageState extends State<SignupPage> {
//   late final TextEditingController _emailController;
//   late final TextEditingController _passwordController;
//   bool canContinue = false;

//   @override
//   void initState() {
//     super.initState();
//     _emailController = TextEditingController();
//     _passwordController = TextEditingController();
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final int MAX = 32;

//     return BlocConsumer<SignupCubit, SignupState>(
//       listener: (_, state) => state.whenOrNull(
//         success: () async {
//           final navigator = Navigator.of(context);
//           await Future.delayed(
//             const Duration(milliseconds: 1500),
//           );
//           navigator.pop();
//           return null;
//         },
//       ),
//       builder: (_, state) {
//         return state.when(
//           loading: () => BaseLoadingPage(
//             title: S.current.token_page_loading_title,
//           ),
//           success: () => BaseSuccessPage(
//             title: S.current.token_page_success_title,
//             canPop: false,
//           ),
//           error: () => BaseErrorPage(
//             title: S.current.token_page_error_page_title,
//             description: S.current.token_page_error_page_description,
//             // footer: PhoneNumberErrorFooter(
//             //   primaryLabel: S.current.try_again,
//             //   primaryOnTap: _resetRegisterProcess,
//             // ),
//           ),
//           initial: () => BaseOnBoardingPage(
//             content: Column(
//               children: [
//                 DSTextField(
//                     controller: _emailController,
//                     label: S.current.base_auth_page_email_title,
//                     onChanged: (val) {
//                       if (val.length < 5 && canContinue == true) {
//                         setState(() {
//                           canContinue = false;
//                         });
//                       }
//                       if (val.length == MAX) {
//                         setState(() {
//                           canContinue = true;
//                         });
//                       }
//                     },
//                     maxLength: MAX,
//                     keyboardType: TextInputType.emailAddress),
//                 DSTextField(
//                     controller: _passwordController,
//                     label: S.current.base_auth_page_password_title,
//                     onChanged: (val) {
//                       if (val.length < 5 && canContinue == true) {
//                         setState(() {
//                           canContinue = false;
//                         });
//                       }
//                       if (val.length == MAX) {
//                         setState(() {
//                           canContinue = true;
//                         });
//                       }
//                     },
//                     maxLength: MAX,
//                     obscureText: true,
//                     keyboardType: TextInputType.visiblePassword),
//               ],
//             ),
//             buttonEnabled: canContinue,
//             buttonLabel: S.current.continue_button_label,
//             onPressed: () {
//               Navigator.of(context).pushNamed(
//                 AppRoutes.onBoardingToken,
//               );
//             },
//           ),
//         );
//       },
//     );
//   }
// }
