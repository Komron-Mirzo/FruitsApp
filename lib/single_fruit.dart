import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'colors.dart';
import 'custom_card.dart';

class SingleFruit extends StatelessWidget {
  SingleFruit({
    Key? key,
    required this.singleFruitDescription,
    required this.singleFruitImage,
    required this.singleFruitName,
    required this.singleFruitPrice,
    required this.singleFruitBackground,
  }) : super(key: key);

  String singleFruitImage;
  String singleFruitName;
  String singleFruitPrice;
  String singleFruitDescription;
  Color singleFruitBackground;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          child: Stack(
            children: [
              Positioned(
                child: Container(
                  height: MediaQuery.of(context).size.height * 0.4,
                  color: singleFruitBackground,
                  child: Center(
                    child: Image.asset(
                      singleFruitImage,
                      height: MediaQuery.of(context).size.height * 0.3,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 40.0,
                left: 30.0,
                right: 30.0,
                child: Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        padding: const EdgeInsets.all(
                          12.0,
                        ),
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: AppColor.cardGreyColor,
                          borderRadius: BorderRadius.circular(
                            10.0,
                          ),
                        ),
                        child: Center(
                          child: FaIcon(
                            FontAwesomeIcons.angleLeft,
                            color: AppColor.mainTextColor,
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    SvgPicture.asset(
                      'img/svg/menu.svg',
                      height: 40,
                      width: 40,
                      color: AppColor.mainTextColor,
                    ),
                  ],
                ),
              ),
              Positioned(
                top: MediaQuery.of(context).size.height * 0.37,
                bottom: 0.0,
                right: 0.0,
                left: 0.0,
                child: Container(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 30.0,
                    right: 30.0,
                  ),
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(35.0),
                      topRight: Radius.circular(35.0),
                    ),
                  ),
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        singleFruitName,
                        style: TextStyle(
                          fontSize: 35.0,
                          fontWeight: FontWeight.bold,
                          color: AppColor.mainTextColor,
                        ),
                      ),
                      const SizedBox(
                        height: 17.0,
                      ),
                      Text(
                        "1 each",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: AppColor.secondTextColor,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        children: [
                          Row(
                            children: [
                              Container(
                                alignment: AlignmentDirectional.center,
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  color: AppColor.cardGreyColor,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(
                                      20.0,
                                    ),
                                    bottomLeft: Radius.circular(
                                      20.0,
                                    ),
                                  ),
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.minus,
                                  size: 15.0,
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.center,
                                width: 50.0,
                                height: 50.0,
                                decoration: BoxDecoration(
                                  color: AppColor.cardGreyColor,
                                ),
                                child: Text(
                                  "1",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                  ),
                                ),
                              ),
                              Container(
                                alignment: AlignmentDirectional.center,
                                height: 50.0,
                                width: 50.0,
                                decoration: BoxDecoration(
                                  color: AppColor.cardGreyColor,
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(
                                      20.0,
                                    ),
                                    bottomRight: Radius.circular(
                                      20.0,
                                    ),
                                  ),
                                ),
                                child: FaIcon(
                                  FontAwesomeIcons.plus,
                                  size: 15.0,
                                ),
                              ),
                            ],
                          ),
                          Expanded(
                            child: Container(),
                          ),
                          Text(
                            singleFruitPrice,
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 35.0,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Text(
                        "Product Description",
                        style: TextStyle(
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: AppColor.mainTextColor,
                        ),
                      ),
                      const SizedBox(
                        height: 17.0,
                      ),
                      Text(
                        singleFruitDescription,
                        style: TextStyle(
                          height: 1.6,
                          fontSize: 20.0,
                          color: AppColor.mainTextColor,
                        ),
                      ),
                      const SizedBox(
                        height: 30.0,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 90.0,
                            height: 90.0,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(
                                25.0,
                              ),
                              border: Border.all(
                                width: 2.0,
                                color: AppColor.yellowBigButtonColor,
                              ),
                            ),
                            child: Center(
                              child: FaIcon(
                                FontAwesomeIcons.solidHeart,
                                size: 40.0,
                                color: AppColor.yellowBigButtonColor,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 25.0,
                          ),
                          Expanded(
                            child: Container(
                              height: 90.0,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  25.0,
                                ),
                                color: AppColor.yellowBigButtonColor,
                              ),
                              child: Center(
                                child: Text(
                                  "ADD TO CART",
                                  style: TextStyle(
                                    fontSize: 20.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
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
