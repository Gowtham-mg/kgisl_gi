import 'package:flutter/material.dart';
import 'package:kgisl_gi/widgets/menu.dart';

class FAQScreen extends StatelessWidget {
  FAQScreen({Key? key}) : super(key: key);

  final List<ExpansionTileItem> faqs = [
    ExpansionTileItem(
      title: "What is a Geographical Indication?",
      description: [
        "It is an indication.",
        "It originates from a definite geographical territory.",
        "It is used to identify agricultural, natural or manufactured goods.",
        "The manufactured goods should be produced or processed or prepared in that territory.",
      ],
    ),
    ExpansionTileItem(
      title: "Examples of possible Indian Geographical Indications. Basmati Rice Darjeeling Tea",
      description: [
        "agra petha",
        "kolhapuri chappal",
        "nagpur orange",
        "kanchipuram silk saree",
      ],
    ),
    ExpansionTileItem(
      title: "What is the benefit of registration of geographical indications?",
      description: [
        """It confers legal protection to Geographical Indications in India.\nPrevents unauthorised use of a Registered Geographical Indication by others.\nIt provides legal protection to Indian Geographical Indications which in turn boost exports.\nIt promotes economic prosperity of producers of goods produced in a geographical territory."""
      ],
    ),
    ExpansionTileItem(
      title: "Who can apply for the registration of a geographical indication?",
      description: [
        """Any association of persons, producers, organisation or authority established by or under the law can apply:\nThe applicant must represent the interest of the producers\nThe application should be in writing in the prescribed form\nThe application should be addressed to the Registrar of Geographical Indications alongwith prescribed fee."""
      ],
    ),
    ExpansionTileItem(
      title: "Who is a registered proprietor of a geographical indication?",
      description: [
        "Any association of persons, producers,organisation or authority established by or under the law can be a registered proprietor.\nTheir name should be entered in the Register of Geographical Indication as registered proprietor for the Geographical Indication applied for."
      ],
    ),
    ExpansionTileItem(
      title: "Who is an authorised user?",
      description: [
        "A producer of goods can apply for registration as an authorised user\nIt must be in respect of a registered geographical indication\nHe should apply in writing in the prescribed form alongwith prescribed fee"
      ],
    ),
    ExpansionTileItem(
      title: "Who is a producer in relation to a Geographical Indication?",
      description: [
        "The persons dealing with three categories of goods are covered under the term Producer:\nAgricultural Goods includes the production, processing, trading or dealing\nNatural Goods includes exploiting, trading or dealing\nHandicrafts or Industrial goods includes making, manufacturing, trading or dealing.\nIs a registration of a geographical indication compulsory and how does it help the applicant?"
      ],
    ),
    ExpansionTileItem(
      title: "Registration is not compulsory",
      description: [
        "Registration affords better legal protection to facilitate an action for infringement\nThe registered proprietor and authorised users can initiate infringement actions\nThe authorised users can exercise the exclusive right to use the geographical indication."
      ],
    ),
    ExpansionTileItem(
      title: "Who can use the registered geographical indication?",
      description: [
        "An authorised user has the exclusive rights to the use of geographical indication in relation to goods in respect of which it is registered."
      ],
    ),
    ExpansionTileItem(
      title: "How long the registration of Geographical Indication is valid?",
      description: ["The registration of a geographical indication is valid for a period of 10 years"],
    ),
    ExpansionTileItem(
      title: "Can a registered geographical indication or a registered authorised user be removed from the register?",
      description: [
        "Yes. The Appellate Board or the Registrar of Geographical Indications has the power to remove the geographical indication or an authorised user from the register. Further, on application by an aggrieved person action can be taken."
      ],
    ),
    ExpansionTileItem(
      title: "Can a Geographical Indication be renewed?",
      description: ["It can be renewed from time to time for further period of 10 years each."],
    ),
    ExpansionTileItem(
      title: "What is the effect if a Geographical Indication if it is not renewed?",
      description: [
        "If a registered geographical indication is not renewed it is liable to be removed from the register."
      ],
    ),
    ExpansionTileItem(
      title: "When is a registered Geographical Indication said to be infringed?",
      description: [
        "When an unauthorised user uses a geographical indication that indicates or suggests that such goods originate in a geographical area other than the true place of origin of such goods in a manner which mislead the public as to the geographical origin of such goods.\nWhen the use of geographical indication result in an unfair competition including passing off in respect of registered geographical indication.\nWhen the use of another geographical indication results in false representation to the public that goods originate in a territory in respect of which a registered geographical indication relates."
      ],
    ),
    ExpansionTileItem(
      title: "Who can initiate an infringement action?",
      description: [
        "The registered proprietor or authorised users of a registered geographical indication can initiate an infringement action."
      ],
    ),
    ExpansionTileItem(
      title: "Can a registered geographical indication be assigned, transmitted, etc?",
      description: [
        "No. A geographical indication is a public property belonging to the producers of the concerned goods.\nIt shall not be the subject matter of assignment, transmission, licensing, pledge, mortgage or such other agreement\nHowever, when an authorised user dies, his right devolves on his successor in title."
      ],
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Menu(),
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 30.0, left: 20, bottom: 40, right: 20),
          child: Column(
            children: [
              Text(
                "Frequently Asked Questions",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              Column(
                children: faqs
                    .map((e) => ExpansionTile(
                          title: Text(
                            e.title,
                            style: TextStyle(
                              color: Colors.grey.shade600,
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          expandedCrossAxisAlignment: CrossAxisAlignment.start,
                          expandedAlignment: Alignment.topLeft,
                          collapsedIconColor: Colors.black,
                          iconColor: Colors.black,
                          childrenPadding: const EdgeInsets.only(left: 20.0, top: 10, bottom: 20),
                          children: [
                            for (int i = 0; i < e.description.length; i++)
                              Text(
                                e.description.length > 1 ? "${i + 1}. ${e.description[i]}" : e.description[i],
                                style: TextStyle(color: Colors.black, fontSize: 14),
                                textAlign: TextAlign.start,
                              )
                          ],
                        ))
                    .toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class ExpansionTileItem {
  final String title;
  final List<String> description;

  ExpansionTileItem({required this.title, required this.description});
}
