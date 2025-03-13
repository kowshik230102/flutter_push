// import 'package:flutter/material.dart';

// class SignUpPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.lightBlue[100],
//       body: Center(
//         child: Container(
//           width: 350,
//           height: 650,
//           decoration: BoxDecoration(
//             color: Colors.white,
//             borderRadius: BorderRadius.circular(20),
//             boxShadow: [
//               BoxShadow(
//                 color: Colors.black26,
//                 blurRadius: 10,
//                 offset: Offset(5, 5),
//               ),
//             ],
//           ),
//           child: Padding(
//             padding: EdgeInsets.all(20),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   'Sign Up',
//                   style: TextStyle(
//                     fontSize: 30,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//                 SizedBox(height: 20),
//                 buildTextFiled(Icons.person, 'ID', false),
//                 SizedBox(height: 20),
//                 buildTextField(Icons.badge, 'Registration', false),
//                 SizedBox(height: 20),
//                 buildTextField(Icons.email, 'Email', false),
//                 SizedBox(height: 20),
//                 buildPasswordField(),
//                 SizedBox(height: 20),
//                 buildLoginButton(),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
