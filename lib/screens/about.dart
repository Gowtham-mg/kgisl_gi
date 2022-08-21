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
                  """Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nunc imperdiet nunc at ligula vulputate, vitae egestas erat bibendum. Fusce efficitur, metus a varius viverra, nisl ex auctor urna, ut auctor urna nulla quis libero. Proin sit amet orci vitae nulla efficitur dignissim. Sed nec ex sem. Sed in ante vel eros cursus tincidunt sit amet et dui. Pellentesque consectetur, lectus ut blandit tempor, diam massa porta odio, id convallis diam urna at ante. Proin sit amet eros quis magna volutpat aliquam. Nam non sem non felis hendrerit consequat vitae non mauris. Aliquam dapibus in justo vel imperdiet. Integer ut dapibus est. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur convallis risus vitae purus posuere, ac porta metus feugiat.\n\nMauris blandit, nunc sed molestie molestie, orci mauris commodo diam, nec suscipit dui augue dignissim mi. Duis gravida mauris sit amet consequat pretium. Interdum et malesuada fames ac ante ipsum primis in faucibus. Nunc vel congue lorem. Praesent mi magna, tincidunt sed dolor vel, bibendum scelerisque magna. Nunc in suscipit nibh. Sed eu arcu bibendum, tincidunt ligula ac, tincidunt diam. Phasellus et urna convallis, tempus ipsum posuere, ultrices eros. Quisque feugiat tristique ullamcorper. Quisque ac sem nec velit finibus condimentum quis eget quam. Aliquam lobortis pharetra mi, quis vestibulum enim volutpat et. Integer fringilla, odio vitae eleifend euismod, lacus lacus dapibus velit, non fermentum libero enim et nisi. Etiam placerat facilisis interdum. Nunc eget feugiat ipsum.\n\nDonec lobortis nec purus nec congue. Nunc consequat vulputate interdum. Nullam velit tortor, viverra sed dolor ac, dapibus tincidunt augue. Duis suscipit nisl ac ante vulputate convallis. Donec nunc dolor, interdum non dictum sit amet, congue vitae risus. Mauris nisi nisi, consectetur sit amet viverra eu, mattis id ligula. In maximus enim sem, ut euismod nunc cursus non. Nam vel interdum enim. Quisque diam velit, faucibus tempus dictum eget, aliquam sed elit. Cras vel lacinia nibh.\n\nNullam at libero fringilla, dignissim massa in, dapibus erat. Cras id dictum dui. Quisque placerat, tellus ac maximus mollis, nulla urna vehicula magna, pellentesque elementum quam risus id magna. Vivamus cursus a massa eleifend auctor. Praesent pretium urna mi, ac elementum nunc varius sit amet. Proin imperdiet luctus lacus. Sed ac enim id sapien pretium blandit at vel dui. Ut vel lectus pharetra, pretium quam quis, imperdiet urna. Proin lorem elit, accumsan ut accumsan ac, vestibulum vitae libero.\n\nAliquam eget facilisis ligula. Nulla cursus mauris non neque rutrum, ac efficitur lorem tristique. Nullam bibendum nulla lacus, eu hendrerit mauris auctor quis. Aenean sit amet sem efficitur eros mattis iaculis eu quis est. Nulla vehicula neque nisi, nec scelerisque urna consectetur nec. In pellentesque sem et purus pellentesque, consectetur auctor nisl convallis. Praesent quis cursus orci. Aliquam maximus, magna eu viverra mattis, lacus justo convallis libero, vitae venenatis erat dolor vitae massa. Nulla magna diam, ornare in dapibus a, efficitur vel ligula. Donec vel bibendum velit, sit amet semper risus. Vestibulum aliquet fringilla libero. Cras dapibus lorem iaculis leo placerat placerat. Sed laoreet lacus eu gravida cursus. Suspendisse nec semper metus. Sed at placerat arcu. Vivamus pellentesque ligula ac erat rhoncus, eu mattis mauris rutrum.\n\nDonec ipsum justo, pellentesque eu tellus nec, porta efficitur est. Praesent commodo sagittis sollicitudin. Nullam ac mi quis neque posuere eleifend. Integer maximus rhoncus ligula sit amet finibus. Nam non dictum mi. Pellentesque condimentum nisl at lacus pellentesque, id accumsan sem feugiat. Nullam accumsan, lectus non interdum efficitur, est quam faucibus justo, sed sollicitudin elit nunc eget lacus.\n\nUt ullamcorper metus dui, aliquam fringilla lectus commodo sed. Pellentesque metus dui, tempor a elit eget, dignissim congue quam. Sed eu iaculis lectus. Curabitur cursus suscipit volutpat. Quisque sagittis scelerisque arcu sed placerat. Sed convallis nibh in nisl placerat, eu efficitur libero aliquam. Nulla consequat vestibulum ex eu porta. Suspendisse facilisis erat at commodo scelerisque. Quisque at posuere eros. Pellentesque malesuada laoreet libero, vel commodo dui congue non. Aliquam pharetra placerat eleifend. Ut in euismod nibh. Nunc a venenatis metus. Mauris scelerisque, nulla eu eleifend sagittis, odio dolor rhoncus metus, quis imperdiet sapien orci eget sem. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Sed sagittis euismod rutrum.\n\nFusce aliquam vulputate mollis. Fusce sed sem tellus. Donec vehicula vel metus sodales porta. Nullam commodo vestibulum velit, et posuere ligula gravida quis. Nam dui arcu, imperdiet at quam ut, elementum auctor risus. Duis ut tempor magna. Duis cursus magna mi, id egestas nisi aliquam vitae.\n\nSuspendisse in leo imperdiet, dignissim velit quis, porttitor est. Nunc maximus erat eros, sit amet accumsan nulla tempus eu. Phasellus dictum mi ut auctor dignissim. Mauris varius nulla a quam mollis, ut aliquet sapien ullamcorper. Quisque finibus mi vel velit pharetra, ac ullamcorper dui pulvinar. Morbi pretium arcu facilisis odio tristique, eget dignissim sapien consequat. Vestibulum pulvinar nec urna at sollicitudin. In nec efficitur purus, in pharetra magna. Sed cursus id diam eu lobortis. Suspendisse condimentum sed magna eget semper. Vivamus quis nibh nec magna rutrum laoreet. Duis euismod odio sit amet auctor rutrum. Vestibulum ex magna, dignissim id purus id, hendrerit ultricies ex. Mauris ipsum arcu, elementum id sem in, tempus finibus leo. Sed at elementum arcu.\n\nNulla facilisi. Vivamus varius lacus maximus imperdiet eleifend. Duis quis molestie odio. Praesent interdum cursus urna id semper. Pellentesque in dignissim risus. Integer non massa odio. Vivamus faucibus magna sit amet tempor blandit. Nullam ipsum urna, sollicitudin ac arcu et, molestie sagittis risus. Sed semper bibendum lectus in efficitur.""",
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
