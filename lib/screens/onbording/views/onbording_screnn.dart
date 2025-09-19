import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:home_cleaning/screens/components/dot_indicators.dart';
import 'package:home_cleaning/constants.dart';
import 'package:home_cleaning/routes.dart';
import 'package:home_cleaning/screens/login_screen/login_screen.dart';

import 'components/onbording_content.dart';

class OnBordingScreen extends StatefulWidget {
  static const String routeName = 'OnBordingScreen';
  const OnBordingScreen({super.key});

  @override
  State<OnBordingScreen> createState() => _OnBordingScreenState();
}

class _OnBordingScreenState extends State<OnBordingScreen> {
  late PageController _pageController;
  int _pageIndex = 0;
  final List<Onbord> _onbordData = [
    Onbord(
      image: "assets/images/Illustration-0.png",
      imageDarkTheme: "assets/images/Illustration_darkTheme_0.png",
      title: "Find the service you’ve \nbeen looking for",
      description:
          "Here you’ll see rich varieties of services, carefully classified for seamless browsing experience.",
    ),
    Onbord(
      image: "assets/images/Illustration-1.png",
      imageDarkTheme: "assets/images/Illustration_darkTheme_1.png",
      title: "Get your cart \n filled",
      description:
          "Add any service you want to your cart, or save it on your wishlist, so you don’t miss it in your future purchases.",
    ),
    Onbord(
      image: "assets/images/Illustration-2.png",
      imageDarkTheme: "assets/images/Illustration_darkTheme_2.png",
      title: "Fast & secure \npayment",
      description: "There are many payment options available for your ease.",
    ),
    Onbord(
      image: "assets/images/Illustration-3.png",
      imageDarkTheme: "assets/images/Illustration_darkTheme_3.png",
      title: "Booking tracking",
      description:
          "In particular,and help you seamlessly manage your bookings.",
    ),
    Onbord(
      image: "assets/images/Illustration-4.png",
      imageDarkTheme: "assets/images/Illustration_darkTheme_4.png",
      title: "Nearby provider",
      description:
          "Easily track nearby provider, browse through their items and get information about their services.",
    ),
  ];

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          child: Column(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, LoginScreen.routeName);
                  },
                  child: Text(
                    "Skip",
                    style: TextStyle(
                        color: Theme.of(context).textTheme.bodyLarge!.color),
                  ),
                ),
              ),
              Expanded(
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: _onbordData.length,
                  onPageChanged: (value) {
                    setState(() {
                      _pageIndex = value;
                    });
                  },
                  itemBuilder: (context, index) => OnbordingContent(
                    title: _onbordData[index].title,
                    description: _onbordData[index].description,
                    image: (Theme.of(context).brightness == Brightness.dark &&
                            _onbordData[index].imageDarkTheme != null)
                        ? _onbordData[index].imageDarkTheme!
                        : _onbordData[index].image,
                    isTextOnTop: index.isOdd,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    _onbordData.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: defaultPadding / 4),
                      child: DotIndicator(isActive: index == _pageIndex),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_pageIndex < _onbordData.length - 1) {
                          _pageController.nextPage(
                              curve: Curves.ease, duration: defaultDuration);
                        } else {
                          Navigator.pushNamed(context, LoginScreen.routeName);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        shape: const CircleBorder(),
                      ),
                      child: SvgPicture.asset(
                        "assets/icons/Arrow - Right.svg",
                        colorFilter: const ColorFilter.mode(
                          Colors.black,
                          BlendMode.srcIn,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: defaultPadding),
            ],
          ),
        ),
      ),
    );
  }
}

class Onbord {
  final String image, title, description;
  final String? imageDarkTheme;

  Onbord({
    required this.image,
    required this.title,
    this.description = "",
    this.imageDarkTheme,
  });
}
