import 'package:flutter/widgets.dart';

class Button extends StatelessWidget {
  final String text;
  final Color bgColor;
  final Color textColor;

  const Button({
    Key? key, // 수정: Key 타입의 key 매개변수를 추가
    required this.text,
    required this.bgColor,
    required this.textColor,
  }) : super(key: key); // 수정: super 키워드를 사용하여 Key를 전달

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: bgColor, borderRadius: BorderRadius.circular(45)),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 18,
          horizontal: 45,
        ),
        child: Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 20,
          ),
        ),
      ),
    );
  }
}
