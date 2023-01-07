// import 'package:flutter/material.dart';
// import 'package:multi_select_flutter/dialog/multi_select_dialog_field.dart';
// import 'package:multi_select_flutter/util/multi_select_list_type.dart';

// class MultiSelect extends StatelessWidget {
//   final dynamic items;
//   final String placeholder;
//   final String title;
//   final Function onConfirm;
//   final initialValue;
//   final dynamic validator;

//   const MultiSelect(
//       {Key? key,
//       required this.items,
//       required this.placeholder,
//       required this.title,
//       required this.onConfirm,
//       this.initialValue,
//       this.validator})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16.0),
//       child: Container(
//         child: MultiSelectDialogField(
//           listType: MultiSelectListType.LIST,

//           searchable: true,
//           confirmText: Text("CONFIRM SELECTION"),

//           cancelText: Text(
//             "CANCEL",
//             style: TextStyle(color: Colors.red.shade800),
//           ),
//           items: this.items,
//           initialValue: initialValue,
//           title: Text(title),
//           // selectedColor: Colors.blue,
//           decoration: BoxDecoration(
//             //color: Colors.blue.withOpacity(0.1),

//             borderRadius: BorderRadius.all(Radius.circular(5)),
//             border: Border.all(
//               color: Color.fromARGB(255, 173, 173, 173),
//               width: 1.2,
//             ),
//           ),
//           buttonIcon: Icon(
//             Icons.checklist_rtl_sharp,
//             // color: Colors.blue,
//           ),
//           buttonText: Text(
//             placeholder,
//             style: TextStyle(
//               // color: Colors.blue[800],
//               fontSize: 16,
//             ),
//           ),
//           onConfirm: (results) {
//             onConfirm(results);
//           },

//           validator: this.validator,
//         ),
//       ),
//     );
//   }
// }

// class MultiSelect2 extends StatelessWidget {
//   final dynamic items;
//   final String placeholder;
//   final String title;
//   final Function onConfirm;
//   final initialValue;
//   final dynamic validator;

//   const MultiSelect2(
//       {Key? key,
//       required this.items,
//       required this.placeholder,
//       required this.title,
//       required this.onConfirm,
//       this.initialValue,
//       this.validator})
//       : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: Container(
//         child: MultiSelectDialogField(
//           // confirmText: Text("CONFIRM SELECTION"),

//           cancelText: Text(
//             "CANCEL",
//             style: TextStyle(color: Colors.red.shade800),
//           ),
//           items: this.items,
//           initialValue: this.initialValue,
//           title: Text(title),

//           // selectedColor: Colors.blue,
//           decoration: BoxDecoration(
//             //color: Colors.blue.withOpacity(0.1),

//             borderRadius: BorderRadius.all(Radius.circular(5)),
//             border: Border.all(
//               color: Color.fromARGB(255, 161, 161, 161),
//               width: 1.4,
//             ),
//           ),
//           buttonIcon: Icon(
//             Icons.checklist_rtl_sharp,
//             // color: Colors.blue,
//           ),
//           buttonText: Text(
//             placeholder,
//             style: TextStyle(
//               // color: Colors.blue[800],
//               fontSize: 16,
//             ),
//           ),
//           onConfirm: (results) {
//             // onConfirm(results);
//           },

//           validator: this.validator,
//         ),
//       ),
//     );
//   }
// }
