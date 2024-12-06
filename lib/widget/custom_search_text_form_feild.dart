import 'package:flutter/material.dart';

class CustomSearchTextFormFeild extends StatelessWidget {
  const CustomSearchTextFormFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            Icons.search,
            size: 35,
            color: Color(0xFF4781C0),
          ),
          hintText: 'Search',
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
