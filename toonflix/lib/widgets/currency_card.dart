import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amount;
  final IconData icon;
  final bool isInverted;
  final double cardOffset;

  final _blackColor = const Color(0xFF1F2123); // _: private 처리

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amount,
    required this.icon,
    required this.isInverted,
    required this.cardOffset,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: Offset(0, cardOffset),
      child: Container(
          clipBehavior: Clip.hardEdge, //overflow된 부분을 처리할 지 결정
          decoration: BoxDecoration(
            color: isInverted ? Colors.white : _blackColor,
            borderRadius: BorderRadius.circular(25),
          ),
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        color: isInverted ? _blackColor : Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          amount,
                          style: TextStyle(
                            color: isInverted ? _blackColor : Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Text(
                          code,
                          style: TextStyle(
                            color: isInverted ? _blackColor : Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                Transform.scale(
                  scale: 2.2,
                  child: Transform.translate(
                    offset: const Offset(-5, 12), // x,y 좌표 offset 설정
                    child: Icon(
                      icon,
                      color: isInverted ? _blackColor : Colors.white,
                      size: 88,
                    ),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
