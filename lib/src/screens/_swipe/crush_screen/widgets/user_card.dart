import 'package:featlink_app/src/config/app_colors.dart';
import 'package:flutter/material.dart';

class UserCard extends StatelessWidget {
  final String icon;
  final String name;
  final String ville;
  final String image;
  final int age;
  final bool isOnline;
  final void Function(dynamic) onClick;
  const UserCard({
    required this.icon,
    required this.name,
    required this.age,
    required this.ville,
    required this.isOnline,
    required this.onClick,
    required this.image,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 170,
      height: 220,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1.4,
          color: AppColors.myGray,
        ),
        color: AppColors.myWhite,
        borderRadius: const BorderRadius.all(Radius.circular(10)),
      ),
      child: Stack(
        children: [
          Positioned(
            right: 0,
            left: 0,
            top: 0,
            bottom: 0,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            ),
          ),
          if (isOnline)
            Positioned(
              right: 10,
              top: 10,
              child: Container(
                width: 12,
                height: 12,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
            ),
          Positioned(
            right: 0,
            left: 0,
            bottom: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    '$name , $age',
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: Text(
                    ville,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: InkWell(
                        onTap: () => onClick('data'),
                        child: Container(
                          height: 40,
                          padding: const EdgeInsets.all(4.0),
                          decoration: const BoxDecoration(
                            border: Border(
                              right:
                                  BorderSide(color: Colors.white, width: 1.4),
                            ),
                            color: Color.fromARGB(170, 0, 0, 0),
                            borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(10),
                            ),
                          ),
                          child: const Icon(
                            Icons.close,
                            color: AppColors.myWhite,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () => onClick('data'),
                        child: Container(
                          height: 40,
                          padding: const EdgeInsets.all(8.0),
                          decoration: const BoxDecoration(
                            border: Border(
                              left: BorderSide(color: Colors.white, width: 1.4),
                            ),
                            color: Color.fromARGB(170, 0, 0, 0),
                            borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: Image.asset(
                            icon,
                            width: 30,
                            height: 20,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
