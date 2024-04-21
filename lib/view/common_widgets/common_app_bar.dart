
import 'package:flutter/material.dart';

class CommonAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CommonAppBar({super.key,
    required this.title, required this.onTap,

  });

  final String title;
  final VoidCallback onTap;


  @override
  Widget build(BuildContext context) {
    return  AppBar(
        automaticallyImplyLeading:title == "Header" ? false : true,
        elevation: 0,
        centerTitle: true,
        title:  Text(title),
    leading: IconButton(
    onPressed: onTap,
    icon: const Icon(Icons.arrow_back_ios,size: 15,)));

  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}