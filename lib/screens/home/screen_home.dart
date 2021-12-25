import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  final _searchProvider = StateProvider.autoDispose<String>((ref) {
    return '';
  });
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    super.initState();

    // Set intial text in controller.
    _searchController.text = ref.read(_searchProvider);
  }

  @override
  void dispose() {
    super.dispose();

    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: TextField(
      decoration: InputDecoration(
          fillColor: Colors.grey[300],
          filled: true,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(48.0),
              borderSide: BorderSide.none)),
    )));
  }
}
