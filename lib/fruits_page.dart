import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'custom_card.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:fruits_ui/single_fruit.dart';

class FruitsPage extends StatefulWidget {
  const FruitsPage({
    Key? key,
  }) : super(key: key);

  @override
  State<FruitsPage> createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 30.0,
        right: 30.0,
        top: 40.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
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
          const SizedBox(
            height: 40.0,
          ),
          const Text(
            "Fruits and berries",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 20.0,
            ),
            height: 60.0,
            decoration: BoxDecoration(
              color: AppColor.cardGreyColor,
              borderRadius: BorderRadius.circular(
                20.0,
              ),
            ),
            child: Row(
              children: [
                SvgPicture.asset(
                  'img/svg/magglass.svg',
                  width: 20.0,
                  height: 20.0,
                  color: AppColor.mainTextColor,
                ),
                const SizedBox(
                  width: 25.0,
                ),
                Text(
                  "Search",
                  style: TextStyle(
                    color: AppColor.secondTextColor,
                    fontSize: 16.0,
                  ),
                ),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Expanded(
            child: MasonryGridView(
              mainAxisSpacing: 15.0,
              crossAxisSpacing: 15.0,
              gridDelegate:
                  const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleFruit(
                          singleFruitImage: 'img/fruits/strawberry.png',
                          singleFruitPrice: 2.45,
                          singleFruitName: 'Strawberries',
                          singleFruitDescription:
                              "Mango's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
                          singleFruitBackground: AppColor.strawberryCardColor,
                        ),
                      ),
                    );
                  },
                  child: CustomCard(
                    height: 300.0,
                    customColor: AppColor.strawberryCardColor,
                    customImage: 'strawberry.png',
                    customButtonColor: AppColor.strawberryButtonColor,
                    fruitName: "Strawberries",
                    fruitUnit: "1 kg",
                    fruitPrice: "\$2.45",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleFruit(
                          singleFruitImage: 'img/fruits/pinapple.png',
                          singleFruitPrice: 1.52,
                          singleFruitName: 'Pineapple',
                          singleFruitDescription:
                              "Mango's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
                          singleFruitBackground: AppColor.pineappleCardColor,
                        ),
                      ),
                    );
                  },
                  child: CustomCard(
                    height: 290.0,
                    customColor: AppColor.pineappleCardColor,
                    customImage: 'pinapple.png',
                    customButtonColor: AppColor.pineappleButtonColor,
                    fruitName: "Pinapple",
                    fruitUnit: "1 lb",
                    fruitPrice: "\$1.52",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleFruit(
                          singleFruitImage: 'img/fruits/blueberries.png',
                          singleFruitPrice: 4.07,
                          singleFruitName: 'Blueberries',
                          singleFruitDescription:
                              "Mango's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
                          singleFruitBackground: AppColor.blueBerriesCardColor,
                        ),
                      ),
                    );
                  },
                  child: CustomCard(
                    height: 320.0,
                    customColor: AppColor.blueBerriesCardColor,
                    customImage: 'blueberries.png',
                    customButtonColor: AppColor.blueBerriesButtonColor,
                    fruitName: "Blueberries",
                    fruitUnit: "1 kg",
                    fruitPrice: "\$4.07",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleFruit(
                          singleFruitImage: 'img/fruits/watermelon.png',
                          singleFruitPrice: 5.07,
                          singleFruitName: 'Watermelon',
                          singleFruitDescription:
                              "Mango's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
                          singleFruitBackground: AppColor.watermelonCardColor,
                        ),
                      ),
                    );
                  },
                  child: CustomCard(
                    height: 285.0,
                    customColor: AppColor.watermelonCardColor,
                    customImage: 'watermelon.png',
                    customButtonColor: AppColor.watermelonButtonColor,
                    fruitName: "Watermelon",
                    fruitUnit: "1 unit",
                    fruitPrice: "\$5.07",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleFruit(
                          singleFruitImage: 'img/fruits/peach.png',
                          singleFruitPrice: 1.36,
                          singleFruitName: 'Peach',
                          singleFruitDescription:
                              "Mango's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
                          singleFruitBackground: AppColor.peachCardColor,
                        ),
                      ),
                    );
                  },
                  child: CustomCard(
                    height: 275.0,
                    customColor: AppColor.pineappleCardColor,
                    customImage: 'peach.png',
                    customButtonColor: AppColor.peachButtonColor,
                    fruitName: "Peach",
                    fruitUnit: "1 kg",
                    fruitPrice: "\$1.36",
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => SingleFruit(
                          singleFruitImage: 'img/fruits/grape.png',
                          singleFruitPrice: 0.89,
                          singleFruitName: 'Grape',
                          singleFruitDescription:
                              "Mango's tropical taste has a universal appeal. The meat has sweetnes of a peach. This apricot colored fruit has just enough fiber to give it some chewiness.",
                          singleFruitBackground: AppColor.grapeCardColor,
                        ),
                      ),
                    );
                  },
                  child: CustomCard(
                    height: 270.0,
                    customColor: AppColor.grapeCardColor,
                    customImage: 'grape.png',
                    customButtonColor: AppColor.grapeButtonColor,
                    fruitName: "Grape",
                    fruitUnit: "1 kg",
                    fruitPrice: "\$0.89",
                  ),
                ),
                const SizedBox(
                  height: 30.0,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
