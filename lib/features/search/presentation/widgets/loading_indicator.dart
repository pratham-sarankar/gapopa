import 'package:flutter/cupertino.dart';

class LoadingIndicator extends StatelessWidget {
  const LoadingIndicator({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CupertinoActivityIndicator(radius: 12),
        const SizedBox(height: 10),
        Text(text),
      ],
    );
  }
}
