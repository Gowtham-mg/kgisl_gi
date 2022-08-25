import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.network(
                "https://cdn.dribbble.com/users/63407/screenshots/10749842/media/572687030bab885331e0c885770e0d6b.png",
                height: 200,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, bottom: 10),
                child: Text(
                  "ABOUT US:",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.74),
                    fontSize: 32,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, bottom: 16, left: 20),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "VISION AND MISSION",
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.75),
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 20.0, right: 20.0, bottom: 20.0),
                child: Text(
                  """Intellectual Property Rights is an inevitable tool for today's globalized economy. Fostering innovation is one of the sustainable development goals set by the Government of India. “An India where Intellectual Property stimulates creativity and innovation for the benefit of all” is the vision of our National IPR Policy. Several initiatives have already proven to foster innovation like the Make in India, Start up India, Digital India and Skill India. The Atal Innovation Mission nurtures the innovative energies across the country in schools and universities. Under the IPR policy, the cell for IPR Promotion and Management, CIPAM has been tasked to facilitate creation and commercialization of IP assets in collaboration with the Office of the Controller General of Patents, Designs and Trademarks.
          
          
The filings for IP rights have considerably increased and the Intellectual Property Offices are also getting revamped in terms of capacity building. More Examiners have been recruited and trained in Patents. The Patent Office started functioning as International Searching and Examining Authority since October 2013. It is encouraging to note that more applicants are now choosing IPO for international search. Applicants registered as Start-ups and those who have chosen Indian Patent Office as ISA or IPEA in the corresponding international application can avail of the facility of Expedited Examination. To ensure quality in all our operations, a dedicated Quality Assurance Division has been set up in the Patent Office.
          
          
Manpower augmentationand business process reengineering have proved to substantially increase the output of the Trademarks Registry. Electronic communication has been initiated for Designs for quicker processing. Many of the globally famous products that are part of India's rich cultural heritage have been registered as Geographical Indications. The Copyrights Office is also brought under the Office of CGPDTM. With all efforts in place, it is expected that IPO would leap to even greater heights.""",
                  style: TextStyle(
                    color: Colors.black.withOpacity(0.75),
                    fontWeight: FontWeight.w300,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
