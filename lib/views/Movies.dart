import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:newproject/Routes/MyRoutes.dart';
import 'package:newproject/views/viewComponents/CustomCard.dart';
import 'package:newproject/views/viewComponents/Drawer.dart';
import 'package:provider/provider.dart';
import 'package:newproject/Utils/AppStateNotifier.dart';
import 'package:newproject/Utils/Utils.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../Utils/Colors.dart';

class Movies extends StatefulWidget {
  const Movies({Key? key}) : super(key: key);

  @override
  State<Movies> createState() => _MoviesState();
}

class _MoviesState extends State<Movies> {
  @override
  void initState() {
    super.initState();
    // Utils.showLoading();
    // Utils.scheduleTimeout(3 * 1000);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Test'),
        leading: IconButton(
          // padding: EdgeInsets.only(left: kDefaultPadding),
          icon: SvgPicture.asset("assets/icons/menu.svg", colorFilter: ColorFilter.mode(Colors.white, BlendMode.srcIn) ,),
          onPressed: () {
            Navigator.pushNamed(context, MyRoutes.profilePage);
          },
        ),
        // Builder(
        //   builder: (context) => IconButton(
        //     icon: Icon(Icons.menu),
        //     onPressed: () {
        //       Scaffold.of(context).openDrawer();
        //     },
        //   ),
        // ),
        actions: [
          Icon(
            Provider.of<AppStateNotifier>(context).isDarkModeOn
                ? Icons.dark_mode
                : Icons.light_mode,
          ),
          Switch(
            value: Provider.of<AppStateNotifier>(context).isDarkModeOn
                ? true
                : false,
            onChanged: (bool value) {
              Provider.of<AppStateNotifier>(context, listen: false)
                  .updateTheme(value);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 12.0, left: 12.0, right: 12.0),
        child: MovieGrid(),
      ),
      // SpinKitRing(
      //   color: GetColor.primary,
      //   size: 50.0,
      // ),
      // SafeArea(
      //   child: Column(
      //     children: [
      //       SizedBox(height: 20.0,),
      //       Container(
      //         child: Expanded(
      //           // padding: EdgeInsets.only(left: 20, right: 20),
      //           child: GridView.count(
      //             // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      //             //     crossAxisCount: 2, childAspectRatio: 0.5),
      //             childAspectRatio: 0.52,
      //             crossAxisCount: 2,
      //             crossAxisSpacing: 20.0,
      //             mainAxisSpacing: 20.0,
      //             children: List.generate(
      //               8,
      //               (index) => CustomCard(),
      //             ),
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      drawer: DrawerView(),
    );
  }
}

class MovieGrid extends StatefulWidget {
  const MovieGrid({Key? key}) : super(key: key);

  @override
  State<MovieGrid> createState() => _MovieGridState();
}

class _MovieGridState extends State<MovieGrid> {

  final List<Map<String, dynamic>> testData = [
    {
      "adult": false,
      "backdrop_path": "/22z44LPkMyf5nyyXvv8qQLsbom.jpg",
      "genre_ids": [27, 9648, 53],
      "id": 631842,
      "original_language": "en",
      "original_title": "Knock at the Cabin",
      "overview":
      "While vacationing at a remote cabin, a young girl and her two fathers are taken hostage by four armed strangers who demand that the family make an unthinkable choice to avert the apocalypse. With limited access to the outside world, the family must decide what they believe before all is lost.",
      "popularity": 3975.228,
      "poster_path": "/dm06L9pxDOL9jNSK4Cb6y139rrG.jpg",
      "release_date": "2023-02-01",
      "title": "Knock at the Cabin",
      "video": false,
      "vote_average": 6.6,
      "vote_count": 826
    },
    {
      "adult": false,
      "backdrop_path": "/xDMIl84Qo5Tsu62c9DGWhmPI67A.jpg",
      "genre_ids": [28, 12, 878],
      "id": 505642,
      "original_language": "en",
      "original_title": "Black Panther: Wakanda Forever",
      "overview":
      "Queen Ramonda, Shuri, M’Baku, Okoye and the Dora Milaje fight to protect their nation from intervening world powers in the wake of King T’Challa’s death.  As the Wakandans strive to embrace their next chapter, the heroes must band together with the help of War Dog Nakia and Everett Ross and forge a new path for the kingdom of Wakanda.",
      "popularity": 3095.305,
      "poster_path": "/sv1xJUazXeYqALzczSZ3O6nkH75.jpg",
      "release_date": "2022-11-09",
      "title": "Black Panther: Wakanda Forever",
      "video": false,
      "vote_average": 7.4,
      "vote_count": 3868
    },
    {
      "adult": false,
      "backdrop_path": "/AsEgGeccI32SwMBkxpwhOkhbzmF.jpg",
      "genre_ids": [28, 878, 53, 27],
      "id": 1011679,
      "original_language": "en",
      "original_title": "Shark Side of the Moon",
      "overview":
      "Decades ago, the USSR developed unkillable sharks and launched them to the moon. Today, a team of American astronauts will endure the fight of their lives.",
      "popularity": 2573.432,
      "poster_path": "/v5CfpzxoJDkZxjZAizClFdlEF0U.jpg",
      "release_date": "2022-08-12",
      "title": "Shark Side of the Moon",
      "video": false,
      "vote_average": 6,
      "vote_count": 34
    },
    {
      "adult": false,
      "backdrop_path": "/9Rq14Eyrf7Tu1xk0Pl7VcNbNh1n.jpg",
      "genre_ids": [28, 12, 53],
      "id": 646389,
      "original_language": "en",
      "original_title": "Plane",
      "overview":
      "After a heroic job of successfully landing his storm-damaged aircraft in a war zone, a fearless pilot finds himself between the agendas of multiple militias planning to take the plane and its passengers hostage.",
      "popularity": 2068.255,
      "poster_path": "/qi9r5xBgcc9KTxlOLjssEbDgO0J.jpg",
      "release_date": "2023-01-12",
      "title": "Plane",
      "video": false,
      "vote_average": 6.9,
      "vote_count": 785
    },
    {
      "adult": false,
      "backdrop_path": "/b1Y8SUb12gPHCSSSNlbX4nB3IKy.jpg",
      "genre_ids": [16, 12, 35, 10751],
      "id": 315162,
      "original_language": "en",
      "original_title": "Puss in Boots: The Last Wish",
      "overview":
      "Puss in Boots discovers that his passion for adventure has taken its toll: He has burned through eight of his nine lives, leaving him with only one life left. Puss sets out on an epic journey to find the mythical Last Wish and restore his nine lives.",
      "popularity": 2589.341,
      "poster_path": "/kuf6dutpsT0vSVehic3EZIqkOBt.jpg",
      "release_date": "2022-12-07",
      "title": "Puss in Boots: The Last Wish",
      "video": false,
      "vote_average": 8.4,
      "vote_count": 4309
    },
    {
      "adult": false,
      "backdrop_path": "/k4V6EvpcOsu8CX10JD0H53lFXLq.jpg",
      "genre_ids": [53, 28, 18, 80],
      "id": 1058949,
      "original_language": "en",
      "original_title": "Little Dixie",
      "overview":
      "Erstwhile Special Forces operative Doc Alexander is asked to broker a truce with the Mexican drug cartel in secrecy. When Oklahoma Governor Richard Jeffs celebrates the execution of a high-ranking cartel member on TV, his Chief of Staff and Doc inform him about the peace he just ended. But it’s too late, as Cuco, the cartel’s hatchet man, has set his vengeful sights on Doc’s daughter Dixie.",
      "popularity": 1688.474,
      "poster_path": "/cmWTZj9zzT9KFt3XyL0gssL7Ig8.jpg",
      "release_date": "2023-02-03",
      "title": "Little Dixie",
      "video": false,
      "vote_average": 6.3,
      "vote_count": 52
    },
    {
      "adult": false,
      "backdrop_path": "/A2avUoNFstnBhAnHiogXQs4c9Bt.jpg",
      "genre_ids": [18, 27, 9648],
      "id": 772515,
      "original_language": "es",
      "original_title": "Huesera",
      "overview":
      "Valeria's joy at becoming a first-time mother is quickly taken away when she's cursed by a sinister entity. As danger closes in, she's forced deeper into a chilling world of dark magic that threatens to consume her.",
      "popularity": 1436.445,
      "poster_path": "/7NhG3NClQ1xrc3kEwTiwFht5Y3L.jpg",
      "release_date": "2023-02-10",
      "title": "Huesera: The Bone Woman",
      "video": false,
      "vote_average": 6.6,
      "vote_count": 75
    },
    {
      "adult": false,
      "backdrop_path": "/32GH8Mi4GmTPIQyd6IW1FFrHWrj.jpg",
      "genre_ids": [28],
      "id": 965839,
      "original_language": "en",
      "original_title": "Lord of the Streets",
      "overview":
      "When Jason Dyson refuses to make his prized fighter throw an MMA match, a notorious gangster collects his debt by killing the fighter and kidnapping Jason's daughter. Now he must train a prisoner to endure five consecutive underground fights to save her.",
      "popularity": 1691.825,
      "poster_path": "/mbigXpUgVgLOacgxlyFfsLRFqxQ.jpg",
      "release_date": "2022-04-22",
      "title": "Lord of the Streets",
      "video": false,
      "vote_average": 5.8,
      "vote_count": 13
    },
    {
      "adult": false,
      "backdrop_path": "/af1tFYzzT2mHIy2l7nTIU8PWfak.jpg",
      "genre_ids": [80, 18, 53],
      "id": 842942,
      "original_language": "en",
      "original_title": "Bandit",
      "overview":
      "After escaping a Michigan prison, a charming career criminal assumes a new identity in Canada and goes on to rob a record 59 banks and jewellery stores while being hunted by a rogue task force. Based on the story of The Flying Bandit.",
      "popularity": 1379.473,
      "poster_path": "/yph9PAbmjYPvyvbeZvdYIhCZHEu.jpg",
      "release_date": "2022-09-23",
      "title": "Bandit",
      "video": false,
      "vote_average": 6.5,
      "vote_count": 92
    },
    {
      "adult": false,
      "backdrop_path": "/26YLjaC1udGEmSvlM1P5eBGWO5h.jpg",
      "genre_ids": [18, 28],
      "id": 677179,
      "original_language": "en",
      "original_title": "Creed III",
      "overview":
      "After dominating the boxing world, Adonis Creed has been thriving in both his career and family life. When a childhood friend and former boxing prodigy, Damien Anderson, resurfaces after serving a long sentence in prison, he is eager to prove that he deserves his shot in the ring. The face-off between former friends is more than just a fight. To settle the score, Adonis must put his future on the line to battle Damien - a fighter who has nothing to lose.",
      "popularity": 1920.868,
      "poster_path": "/cvsXj3I9Q2iyyIo95AecSd1tad7.jpg",
      "release_date": "2023-03-01",
      "title": "Creed III",
      "video": false,
      "vote_average": 7.3,
      "vote_count": 171
    },
    {
      "adult": false,
      "backdrop_path": "/ovM06PdF3M8wvKb06i4sjW3xoww.jpg",
      "genre_ids": [878, 12, 28],
      "id": 76600,
      "original_language": "en",
      "original_title": "Avatar: The Way of Water",
      "overview":
      "Set more than a decade after the events of the first film, learn the story of the Sully family (Jake, Neytiri, and their kids), the trouble that follows them, the lengths they go to keep each other safe, the battles they fight to stay alive, and the tragedies they endure.",
      "popularity": 1318.499,
      "poster_path": "/t6HIqrRAclMCA60NsSmeqe9RmNV.jpg",
      "release_date": "2022-12-14",
      "title": "Avatar: The Way of Water",
      "video": false,
      "vote_average": 7.7,
      "vote_count": 5624
    },
    {
      "adult": false,
      "backdrop_path": "/xnAi4BRoO3ZQ3wwxGn6UNoxQzDq.jpg",
      "genre_ids": [80, 28],
      "id": 823999,
      "original_language": "it",
      "original_title": "Diabolik - Ginko all'attacco!",
      "overview":
      "Diabolik nearly gets caught in Inspector Ginko's latest trap, leaving his partner in crime Eva Kant behind in the escape. Furious, Eva offers Ginko her help in capturing the King of Terror, but the former has to face the return of an old flame of his: Altea, Duchess of Vallenberg.",
      "popularity": 1308.043,
      "poster_path": "/8QVbWBv94BAT9u1q9uJccwOxMzt.jpg",
      "release_date": "2022-11-17",
      "title": "Diabolik - Ginko all'attacco!",
      "video": false,
      "vote_average": 5.9,
      "vote_count": 59
    },
    {
      "adult": false,
      "backdrop_path": "/zGoZB4CboMzY1z4G3nU6BWnMDB2.jpg",
      "genre_ids": [28, 10749, 35],
      "id": 758009,
      "original_language": "en",
      "original_title": "Shotgun Wedding",
      "overview":
      "Darcy and Tom gather their families for the ultimate destination wedding but when the entire party is taken hostage, “’Til Death Do Us Part” takes on a whole new meaning in this hilarious, adrenaline-fueled adventure as Darcy and Tom must save their loved ones—if they don’t kill each other first.",
      "popularity": 1207.329,
      "poster_path": "/t79ozwWnwekO0ADIzsFP1E5SkvR.jpg",
      "release_date": "2022-12-28",
      "title": "Shotgun Wedding",
      "video": false,
      "vote_average": 6.4,
      "vote_count": 593
    },
    {
      "adult": false,
      "backdrop_path": "/dlrWhn0G3AtxYUx2D9P2bmzcsvF.jpg",
      "genre_ids": [878, 27, 35],
      "id": 536554,
      "original_language": "en",
      "original_title": "M3GAN",
      "overview":
      "A brilliant toy company roboticist uses artificial intelligence to develop M3GAN, a life-like doll programmed to emotionally bond with her newly orphaned niece. But when the doll's programming works too well, she becomes overprotective of her new friend with terrifying results.",
      "popularity": 1319.223,
      "poster_path": "/d9nBoowhjiiYc4FBNtQkPY7c11H.jpg",
      "release_date": "2022-12-28",
      "title": "M3GAN",
      "video": false,
      "vote_average": 7.5,
      "vote_count": 1907
    },
    {
      "adult": false,
      "backdrop_path": "/3JSoB7eMbCd8sE8alxNiUtrNiTz.jpg",
      "genre_ids": [12, 878, 35],
      "id": 640146,
      "original_language": "en",
      "original_title": "Ant-Man and the Wasp: Quantumania",
      "overview":
      "Super-Hero partners Scott Lang and Hope van Dyne, along with with Hope's parents Janet van Dyne and Hank Pym, and Scott's daughter Cassie Lang, find themselves exploring the Quantum Realm, interacting with strange new creatures and embarking on an adventure that will push them beyond the limits of what they thought possible.",
      "popularity": 1032.078,
      "poster_path": "/ngl2FKBlU4fhbdsrtdom9LVLBXw.jpg",
      "release_date": "2023-02-15",
      "title": "Ant-Man and the Wasp: Quantumania",
      "video": false,
      "vote_average": 6.4,
      "vote_count": 901
    },
    {
      "adult": false,
      "backdrop_path": "/cL0cdccOMzM508ODsWPfHVMMAzo.jpg",
      "genre_ids": [28],
      "id": 267805,
      "original_language": "en",
      "original_title": "There Are No Saints",
      "overview":
      "A man is imprisoned for a crime he didn't commit. When his wife is murdered and his son kidnapped and taken to Mexico, he devises an elaborate and dangerous plan to rescue his son and avenge the murder.",
      "popularity": 952.788,
      "poster_path": "/fcOTYArjKuAgufwHoTvx8w9UKCv.jpg",
      "release_date": "2022-05-27",
      "title": "There Are No Saints",
      "video": false,
      "vote_average": 5.6,
      "vote_count": 66
    },
    {
      "adult": false,
      "backdrop_path": "/v2LilmCylr3bL9TCZSj6syjowZh.jpg",
      "genre_ids": [35, 18],
      "id": 937278,
      "original_language": "en",
      "original_title": "A Man Called Otto",
      "overview":
      "When a lively young family moves in next door, grumpy widower Otto Anderson meets his match in a quick-witted, pregnant woman named Marisol, leading to an unlikely friendship that turns his world upside down.",
      "popularity": 1545.382,
      "poster_path": "/130H1gap9lFfiTF9iDrqNIkFvC9.jpg",
      "release_date": "2022-12-28",
      "title": "A Man Called Otto",
      "video": false,
      "vote_average": 7.9,
      "vote_count": 500
    },
    {
      "adult": false,
      "backdrop_path": "/bQXAqRx2Fgc46uCVWgoPz5L5Dtr.jpg",
      "genre_ids": [28, 14, 878],
      "id": 436270,
      "original_language": "en",
      "original_title": "Black Adam",
      "overview":
      "Nearly 5,000 years after he was bestowed with the almighty powers of the Egyptian gods—and imprisoned just as quickly—Black Adam is freed from his earthly tomb, ready to unleash his unique form of justice on the modern world.",
      "popularity": 841.29,
      "poster_path": "/pFlaoHTZeyNkG83vxsAJiGzfSsa.jpg",
      "release_date": "2022-10-19",
      "title": "Black Adam",
      "video": false,
      "vote_average": 7.1,
      "vote_count": 4365
    },
    {
      "adult": false,
      "backdrop_path": "/fTLMsF3IVLMcpNqIqJRweGvVwtX.jpg",
      "genre_ids": [28, 80, 53],
      "id": 1035806,
      "original_language": "en",
      "original_title": "Detective Knight: Independence",
      "overview":
      "Detective James Knight 's last-minute assignment to the Independence Day shift turns into a race to stop an unbalanced ambulance EMT from imperiling the city's festivities. The misguided vigilante, playing cop with a stolen gun and uniform, has a bank vault full of reasons to put on his own fireworks show... one that will strike dangerously close to Knight's home.",
      "popularity": 818.828,
      "poster_path": "/jrPKVQGjc3YZXm07OYMriIB47HM.jpg",
      "release_date": "2023-01-20",
      "title": "Detective Knight: Independence",
      "video": false,
      "vote_average": 5.9,
      "vote_count": 79
    },
    {
      "adult": false,
      "backdrop_path": "/pxJbfnMIQQxCrdeLD0zQnWr6ouL.jpg",
      "genre_ids": [28, 35, 53],
      "id": 1077280,
      "original_language": "en",
      "original_title": "Die Hart",
      "overview":
      "Follows a fictionalized version of Kevin Hart, as he tries to become an action movie star. He attends a school run by Ron Wilcox, where he attempts to learn the ropes on how to become one of the industry's most coveted action stars.",
      "popularity": 1386.983,
      "poster_path": "/1EnBjTJ5utgT1OXYBZ8YwByRCzP.jpg",
      "release_date": "2023-02-22",
      "title": "Die Hart",
      "video": false,
      "vote_average": 6.7,
      "vote_count": 97
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        physics: ScrollPhysics(),
        shrinkWrap: true,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 20.0,
          mainAxisExtent: 310,
        ),
        itemCount: testData.length,
        itemBuilder: (_, index) {
          return Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16.0),
              color: GetColor.primary,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16.0),
                    topRight: Radius.circular(16.0),
                  ),
                  child: Image.network(
                    'https://image.tmdb.org/t/p/w400${testData.elementAt(index)['poster_path']}',
                    height: 270,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                )
              ],
            ),
          );
        });
  }
}

