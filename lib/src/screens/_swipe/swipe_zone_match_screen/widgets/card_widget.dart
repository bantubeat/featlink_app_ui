import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget({required this.img, required this.isTop, super.key});
  final String img;
  final bool isTop;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .40,
      height: MediaQuery.of(context).size.height * .28,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 10,
            left: 10,
            bottom: 10,
            right: 10,
            child: Container(
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(
                      0.07,
                    ),
                    blurRadius: 20,
                    offset: const Offset(
                      0,
                      10,
                    ),
                  ),
                ],
                // boxShadow: [
                //   BoxShadow(
                //       // color: Colors.grey.withOpacity(0.051),
                //       // blurRadius: 3,
                //       // offset: const Offset(0, 8),
                //       ),
                // ],
                // borderRadius: BorderRadius.circular(20),
              ),
              child: Image.asset(
                width: MediaQuery.of(context).size.width * .45,
                height: MediaQuery.of(context).size.height * .3,
                img,
              ),
            ),
          ),
          if (isTop)
            Positioned(
              left: 0,
              top: 0,
              child: GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(
                          0.07,
                        ),
                        blurRadius: 50,
                        offset: const Offset(
                          0,
                          20,
                        ),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Color.fromRGBO(226, 152, 152, 1),
                  ),
                ),
              ),
            )
          else
            Positioned(
              left: 0,
              bottom: 0,
              child: GestureDetector(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(
                          0.07,
                        ), // Correspond à rgba(0, 0, 0, 0.07)
                        blurRadius: 50, // Correspond à 50px dans CSS
                        offset: const Offset(
                          0,
                          20,
                        ), // Correspond à (0px, 20px) dans CSS
                      ),
                    ],
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: const Icon(
                    Icons.favorite,
                    color: Color.fromRGBO(226, 152, 152, 1),
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
