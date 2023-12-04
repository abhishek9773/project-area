import 'package:flutter/material.dart';
import 'package:hamara_shop/common/widgets/costom_shapes/containers/primary_header_container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [UPrimaryHeaderContainer(child: Column( 
            children: [],
          ),)],
        ),
      ),
    );
  }
}

