import 'package:flutter/material.dart';

import 'custom_search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text("Notes",style: TextStyle(fontSize: 28,),),
        Spacer(),
        CustomSearchIcon(),
      ],
    );
  }
}