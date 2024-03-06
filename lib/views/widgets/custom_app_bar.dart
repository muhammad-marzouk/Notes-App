import 'package:flutter/material.dart';
// import 'custom_search_Icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.title, required this.icon});
  final String title;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title,style: const TextStyle(fontSize: 28,),),
        const Spacer(),
        // CustomSearchIcon(icon: icon),
        Container(
          height: 46,
          width: 46,
          decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.05),
              borderRadius: BorderRadius.circular(10)
          ),
          child: Center(
            child: Icon(icon,color: Colors.white,size: 28,),
          ),
        ),
      ],
    );
  }
}