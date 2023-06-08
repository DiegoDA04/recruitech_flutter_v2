import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:recruitech_flutter/profile/data/models/experience.dart';
import 'package:recruitech_flutter/profile/presentation/developer_profile/widgets/experience_card.dart';

class DeveloperProfile extends StatefulWidget {
  const DeveloperProfile({super.key});

  @override
  State<DeveloperProfile> createState() => _DeveloperProfileState();
}

class _DeveloperProfileState extends State<DeveloperProfile>
    with SingleTickerProviderStateMixin {
  TabController? _tabController;

  final List<Experience> experiences = [
    Experience(
      id: 1,
      urlImage:
          "https://github.com/NotCodingDevs/resources/blob/main/images/facebook_logo.png?raw=true",
      occupation: "Mobile Developer",
      companyName: "Facebook",
    ),
    Experience(
      id: 2,
      urlImage:
          "https://github.com/NotCodingDevs/resources/blob/main/images/facebook_logo.png?raw=true",
      occupation: "Mobile Developer",
      companyName: "Facebook",
    ),
    Experience(
      id: 3,
      urlImage:
          "https://github.com/NotCodingDevs/resources/blob/main/images/facebook_logo.png?raw=true",
      occupation: "Mobile Developer",
      companyName: "Facebook",
    ),
    Experience(
      id: 4,
      urlImage:
          "https://github.com/NotCodingDevs/resources/blob/main/images/facebook_logo.png?raw=true",
      occupation: "Mobile Developer",
      companyName: "Facebook",
    ),
    Experience(
      id: 5,
      urlImage:
          "https://github.com/NotCodingDevs/resources/blob/main/images/facebook_logo.png?raw=true",
      occupation: "Mobile Developer",
      companyName: "Facebook",
    ),
    Experience(
      id: 6,
      urlImage:
          "https://github.com/NotCodingDevs/resources/blob/main/images/facebook_logo.png?raw=true",
      occupation: "Mobile Developer",
      companyName: "Facebook",
    ),
    Experience(
      id: 7,
      urlImage:
          "https://github.com/NotCodingDevs/resources/blob/main/images/facebook_logo.png?raw=true",
      occupation: "Mobile Developer",
      companyName: "Facebook",
    )
  ];

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              right: 0,
              child: Container(
                width: double.infinity,
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                      'https://github.com/NotCodingDevs/resources/blob/main/images/diegoveloper_profile.jpg?raw=true',
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 230,
              child: Container(
                padding: const EdgeInsets.only(
                  top: 64,
                  left: 24.0,
                  right: 24.0,
                ),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height - 230,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30.0),
                    topRight: Radius.circular(30.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const Text(
                      "Diego Velasquez",
                      style: TextStyle(
                        fontFamily: 'Gilroy',
                        fontSize: 18.0,
                        fontWeight: FontWeight.w700,
                        color: Color(0xFF535353),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Mobile Developer",
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        SizedBox(
                          width: 12.0,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              color: Color(
                                0xFF898989,
                              ),
                              size: 18.0,
                            ),
                            Text(
                              "Lima, Perú",
                              style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    const Padding(
                      padding: EdgeInsets.symmetric(
                        vertical: 14.0,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 12.0),
                            child: FaIcon(
                              FontAwesomeIcons.facebook,
                            ),
                          ),
                          FaIcon(
                            FontAwesomeIcons.twitter,
                          )
                        ],
                      ),
                    ),
                    const Text(
                      "About",
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.w500,
                      ),
                      textAlign: TextAlign.start,
                    ),
                    const Text(
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer vulputate molestie turpis fermentum hendrerit. Donec sit amet auctor diam.",
                      style: TextStyle(
                        color: Color(0xFF6F6E6E),
                        fontSize: 16.0,
                        height: 1.2,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(height: 12.0),
                    TabBar(
                      controller: _tabController,
                      indicatorSize: TabBarIndicatorSize.tab,
                      tabs: const [
                        Tab(
                          child: Text(
                            "Experience",
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Tab(
                          child: Text(
                            "Portfolio",
                            style: TextStyle(
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: _tabController,
                        children: [
                          ListView.builder(
                            shrinkWrap: true,
                            padding: EdgeInsets.zero,
                            itemCount: experiences.length,
                            itemBuilder: (context, index) {
                              return ExperienceCard(
                                experience: experiences[index],
                              );
                            },
                          ),
                          ListView.builder(
                            padding: EdgeInsets.zero,
                            itemCount: 3,
                            itemBuilder: (context, index) {
                              return ExperienceCard(
                                experience: experiences[index],
                              );
                            },
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Positioned(
              left: 0,
              right: 0,
              top: 155,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 64,
                  backgroundImage: NetworkImage(
                    'https://github.com/NotCodingDevs/resources/blob/main/images/diegoveloper.png?raw=true',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
