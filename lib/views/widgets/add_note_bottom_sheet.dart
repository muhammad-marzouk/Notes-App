import 'package:flutter/material.dart';
import 'package:notsapp/constants.dart';
import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  // 2- add FormState Key
  final GlobalKey<FormState> formKey = GlobalKey();
  // 4- add autoValidateMode
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  // 6- create two Variable not final => StatefulWidget
  String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    // 1- add form
    return Form(
      // 3 key
      key: formKey,
      // 5- auto validateMode the value will be change => StatefulWidget
      autovalidateMode: autoValidateMode,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          SizedBox(
            height: 35,
          ),
          CustomTextField(
            hint: 'Title',
          ),
          SizedBox(
            height: 14,
          ),
          CustomTextField(hint: 'Content', maxLine: 5),
          SizedBox(
            height: 100,
          ),
          // Spacer(), give Error
          CustomButton(),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.height;

    return Container(
      width: width,
      height: 55,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: KPrimaryColor,
      ),
      child: const Center(
          child: Text(
        "ADD",
        style: TextStyle(
            color: Colors.black, fontSize: 16, fontWeight: FontWeight.w700),
      )),
    );
  }
}
