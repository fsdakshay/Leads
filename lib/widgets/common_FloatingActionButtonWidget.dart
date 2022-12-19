import 'package:flutter/material.dart';
import '../features/home/screens/tabs/home_tab/widgets/OnsiteRegistrationPage.dart';

// Floating Action Button Class
class floating_action_button extends StatelessWidget {
  const floating_action_button({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const OnsiteRegistration()),
        );
      },
      child: Container(
        height: 60,
        width: 60,
        decoration: const BoxDecoration(
          shape: BoxShape.circle, // circular shape
          gradient: LinearGradient(
            colors: [Color(0xFFff699c), Color(0xFF9c6bff)],
          ),
        ),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
