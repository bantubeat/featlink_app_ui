import 'package:easy_localization/easy_localization.dart';
import 'package:featlink_app/src/resources/app_assets.dart';
import 'package:flutter/material.dart';

import '../../../generated/locale_keys.g.dart';
import '../../components/app_navigation_bottom_sheet.dart';
import '../../config/app_colors.dart';

class SwipeZonePageMatch extends StatefulWidget {
  const SwipeZonePageMatch();

  @override
  State<SwipeZonePageMatch> createState() => _SwipeZonePageMatchState();
}

class _SwipeZonePageMatchState extends State<SwipeZonePageMatch>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..forward();

    _animation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget image1()=>RotationTransition(
    turns: const AlwaysStoppedAnimation(10/360),
    //angle: 1500 * 3.14,
    child: SizedBox(
      width: 160, // Adjust the width and height as needed
      height: 230,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10), // Adjust the border radius for more or less rounded corners
              child: SizedBox(
                width: 135, // Adjust the width and height as needed
                height: 230,
                child: Image.network(
                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', // Unsplash image URL
                  fit: BoxFit.cover,
                  errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                    return const Icon(Icons.error);
                  },
                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const CircleAvatar(backgroundColor: AppColors.myWhite,child: Icon(Icons.favorite_rounded,color: AppColors.primary),),
        ],
      ),
    ),
  );
  Widget image2()=>RotationTransition(
    turns: const AlwaysStoppedAnimation(350/360),
    //angle: 1500 * 3.14,
    child: SizedBox(
      width: 160, // Adjust the width and height as needed
      height: 230,
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10), // Adjust the border radius for more or less rounded corners
              child: SizedBox(
                width: 160, // Adjust the width and height as needed
                height: 230,
                child: Image.network(
                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', // Unsplash image URL
                  fit: BoxFit.cover,
                  errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                    return const Icon(Icons.error);
                  },
                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const Align(
              alignment: Alignment.bottomLeft,
              child: CircleAvatar(backgroundColor: AppColors.myWhite,child: Icon(Icons.favorite_rounded,color: AppColors.primary),),
          ),
        ],
      ),
    ),
  );


  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Opacity(
          opacity: _animation.value,
          child: Transform.scale(
            scale: _animation.value,
            child: child,
          ),
        );
      },
      child: Scaffold(
        backgroundColor: AppColors.myWhite,
        floatingActionButton: const AppNavigationBottomSheet(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Image.asset('assets/images/logo2.png',width: 10,height: 10,),
          ),
          elevation: 0.0,
          backgroundColor: AppColors.myWhite,
          surfaceTintColor: AppColors.myWhite,
          leadingWidth: 50,
          title: Text(LocaleKeys.swipezone_page_match_app_bar_title.tr(),style: const TextStyle(fontWeight: FontWeight.w900,color: AppColors.myDark),),
          actions: [
            IconButton(
                onPressed: (){},
                icon: const Icon(Icons.settings),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Badge(
                backgroundColor: AppColors.myWhite,
                label: Container(
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text('06',style: TextStyle(color: AppColors.myDark),),
                ),
                child: const Icon(Icons.notifications),
              ),
            ),
          ],
        ),
        body: SafeArea(
          child: Stack(
            children: [

              //BOTTOM CIRCLE
              Positioned(
                //top: 200,
                bottom: 60.0,
                child: CircleAvatar(
                  radius: 60,
                  child: Transform.rotate(
                    angle: 2400 * 3.14,
                    child: Stack(
                        children: [

                          GlowingCircle(),
                          NonGlowingCircle(),
                          Padding(
                            padding: const EdgeInsets.only(top: 50),
                            child: XGlowingCircle(),
                          ),
                        ],
                      ),
                  ),
                ),
              ),
              //TOP CIRCLE
              Positioned(
                //top: 200,
                top: 0.0,
                right: 0.0,
                child: CircleAvatar(
                  radius: 60,
                  child: Transform.rotate(
                    angle: 2400 * 3.14,
                    child: Stack(
                      children: [

                        GlowingCircle(),
                        NonGlowingCircle(),
                        Padding(
                          padding: const EdgeInsets.only(top: 50),
                          child: XGlowingCircle(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),


              Align(
                child: Padding(
                  padding: const EdgeInsets.only(left: 40,right: 40,bottom: 200),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Center(
                        child: Stack(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(left: 75),
                              child: image1(),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 65),
                              child: image2(),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 40,),
                      Text(LocaleKeys.swipezone_page_match_title.tr(),style: const TextStyle(fontSize: 25,color: AppColors.primary,fontWeight: FontWeight.w900),),
                      FittedBox(child: Text(LocaleKeys.swipezone_page_match_description.tr())),
                    ],
                  ),
                ),
              ),

              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 90,left: 40,right: 40,),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      //const SizedBox(height: 50,),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.primary,
                            foregroundColor: AppColors.myWhite,
                            fixedSize: const Size.fromHeight(45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              /*side: borderWidth != 0
                                        ? BorderSide(width: borderWidth, color: borderColor)
                                        : BorderSide.none,*/
                            ),
                            elevation: 0,
                            enableFeedback: true,
                            overlayColor: AppColors.primaryLight,
                            splashFactory: InkRipple.splashFactory,
                          ),
                          child: Text(LocaleKeys.swipezone_page_match_button1.tr(),style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 24,),),
                        ),
                      ),
                      const SizedBox(height: 10,),
                      SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: AppColors.myPink,
                            foregroundColor: AppColors.myWhite,
                            fixedSize: const Size.fromHeight(45),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10),
                              /*side: borderWidth != 0
                                        ? BorderSide(width: borderWidth, color: borderColor)
                                        : BorderSide.none,*/
                            ),
                            elevation: 0,
                            enableFeedback: true,
                            overlayColor: AppColors.primaryLight,
                            splashFactory: InkRipple.splashFactory,
                          ),
                          child: Text(LocaleKeys.swipezone_page_match_button2.tr(),style: const TextStyle(fontWeight: FontWeight.w900,fontSize: 24,),),
                        ),
                      ),
                    ],
                  ),
                ),
              ),


              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  height: 50,
                    width: 50,
                    padding: const EdgeInsets.all(10.0),
                    child: Image.asset(AppAssets.emojiWipeZoneMatch),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 200),
                  child: Container(
                      height: 300,
                      width: 50,
                      padding: const EdgeInsets.all(10.0),
                      child: Image.asset(AppAssets.emojiWipeZoneMatch),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}




class GlowingCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink[200],
          gradient: LinearGradient(
            colors: [
              Colors.pink[100]!,
              Colors.pink[200]!,
              Colors.pink[300]!,
              Colors.pink[800]!,
            ],
            begin: Alignment.center,
            end: Alignment.bottomRight,
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.pink.withOpacity(0.6),
              spreadRadius: 25,
              blurRadius: 90,
            ),
            BoxShadow(
              color: Colors.pink.withOpacity(0.3),
              spreadRadius: 25,
              blurRadius: 90,
            ),
          ],
        ),
      ),
    );
  }
}

class NonGlowingCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 200,
        height: 200,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.pink[500],

        ),
      ),
    );
  }
}


class XGlowingCircle extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 35,
        height: 15,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.elliptical(35, 15)),
          //shape: BoxShape.circle,
          //color: Colors.red,
          /*gradient: LinearGradient(
            colors: [
              Color(0xFFF6CDC1),
              Color(0xFFF6CDC1),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomRight,
          ),*/
          boxShadow: [
            BoxShadow(
              color: Color(0xFFf1babf),
              spreadRadius: 40,
              blurRadius: 40,
            ),
            BoxShadow(
              color: Color(0xFFf1baba),
              spreadRadius: 10,
              blurRadius: 10,
            ),
            BoxShadow(
              color: Color(0xFFf1baba),
              spreadRadius: 10,
              blurRadius: 10,
            ),

            BoxShadow(
              color: Color(0xFFF6CDC2),
              spreadRadius: 10,
              blurRadius: 10,
            ),
            BoxShadow(
              color: Color(0xFFF6CDC3),
              spreadRadius: 10,
              blurRadius: 10,
            ),
            BoxShadow(
              color: Color(0xFFF6CDC4),
              spreadRadius: 10,
              blurRadius: 10,
            ),
            BoxShadow(
              color: Color(0xFFF6CDC5),
              spreadRadius: 10,
              blurRadius: 10,
            ),
            BoxShadow(
              color: Color(0xFFF6CDC6),
              spreadRadius: 10,
              blurRadius: 10,
            ),
            BoxShadow(
              color: Color(0xFFF6CDC7),
              spreadRadius: 10,
              blurRadius: 10,
            ),
            BoxShadow(
              color: Color(0xFFF6CDC1),
              spreadRadius: 10,
              blurRadius: 10,
            ),
            BoxShadow(
              color: Colors.white30,
              spreadRadius: 5,
              blurRadius: 5,
            ),
          ],
        ),
      ),
    );
  }
}


class Images extends StatelessWidget {
  const Images({super.key});

  Widget image1()=>RotationTransition(
    turns: const AlwaysStoppedAnimation(10/360),
    //angle: 1500 * 3.14,
    child: Stack(
      children: [
        Padding(
          padding: const EdgeInsets.all(15),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10), // Adjust the border radius for more or less rounded corners
            child: SizedBox(
              width: 135, // Adjust the width and height as needed
              height: 220,
              child: Image.network(
                'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', // Unsplash image URL
                fit: BoxFit.cover,
                errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                  return const Icon(Icons.error);
                },
                loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                  if (loadingProgress == null) {
                    return child;
                  }
                  return Center(
                    child: CircularProgressIndicator(
                      value: loadingProgress.expectedTotalBytes != null
                          ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                          : null,
                    ),
                  );
                },
              ),
            ),
          ),
        ),
        const CircleAvatar(child: Icon(Icons.add),),
      ],
    ),
  );
  Widget image2()=>RotationTransition(
    turns: const AlwaysStoppedAnimation(355/360),
    //angle: 1500 * 3.14,
    child: SizedBox(
      width: 135, // Adjust the width and height as needed
      height: 220,
      child: Stack(
        clipBehavior: Clip.antiAlias,
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10), // Adjust the border radius for more or less rounded corners
              child: SizedBox(
                width: 135, // Adjust the width and height as needed
                height: 220,
                child: Image.network(
                  'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80', // Unsplash image URL
                  fit: BoxFit.cover,
                  errorBuilder: (BuildContext context, Object exception, StackTrace? stackTrace) {
                    return const Icon(Icons.error);
                  },
                  loadingBuilder: (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
                    if (loadingProgress == null) {
                      return child;
                    }
                    return Center(
                      child: CircularProgressIndicator(
                        value: loadingProgress.expectedTotalBytes != null
                            ? loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes!
                            : null,
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
          const Align(
              alignment: Alignment.bottomLeft,
              child: CircleAvatar(child: Icon(Icons.add),),
          ),
        ],
      ),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 90),
          child: image1(),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 90),
          child: image2(),
        ),
      ],
    );
  }
}