import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../utils/app_color.dart';
import 'custom_text_form_field.dart';

class CustomSearchBar extends StatefulWidget {
  const CustomSearchBar({super.key});

  @override
  State<CustomSearchBar> createState() => _CustomSearchBarState();
}

class _CustomSearchBarState extends State<CustomSearchBar> {
  late TextEditingController searchController;
  @override
  void initState() {
    super.initState();
    searchController = TextEditingController();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, 2),
            blurRadius: 9,
            spreadRadius: 0,
            color: Colors.black.withOpacity(0.2),
          ),
        ],
      ),
      child: CustomTextFormField(
        borderColor: AppColors.white,
        textFieldColor: AppColors.white,
        hintText: S.of(context).SearchAnyProduct,
        prefixIcon: Icons.search,
        suffixIcon: Icons.keyboard_voice_outlined,
        borderRadius: 8,
        textEditingController: searchController,
      ),
    )
    ;
  }
}
