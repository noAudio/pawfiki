import 'package:pawfiki/models/post_tag_enum.dart';
import 'package:pawfiki/models/resource_type_enum.dart';

List<Map<String, dynamic>> posts = [
  {
    "tag": PostTagEnum.update,
    "commentCount": 2,
    "userPic":
        "https://images.pexels.com/photos/813940/pexels-photo-813940.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "userName": "@andreaP",
    "postTitle": "Fluffy is settling in perfectly 😊",
    "postBodyPreview":
        "A few weeks ago I posted about a stray cat who kept coming to my door. I took her in and gave her some food and water. She was afraid at first and always hissing but in the end she realised I was here to help and calmed down 🥰. What do you think I should call her? I can't seem to decide!",
    "postImageLink":
        "https://images.pexels.com/photos/20787/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {
    "tag": PostTagEnum.spotted,
    "commentCount": 6,
    "userPic":
        "https://images.pexels.com/photos/7163193/pexels-photo-7163193.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "userName": "@eliud",
    "postTitle": "Spotted in Roysambu",
    "postBodyPreview":
        "Found a mama cat in Roysambu near TRM with two kittens. Not sure if they are strays. Anybody recognise her? If so please call me at 0712345678. Lets get her a proper home!",
    "postImageLink":
        "https://images.pexels.com/photos/1416792/pexels-photo-1416792.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
  },
  {
    "tag": PostTagEnum.help,
    "commentCount": 19,
    "userPic":
        "https://images.pexels.com/photos/1181694/pexels-photo-1181694.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "userName": "@christinaaaaa",
    "postTitle": "How do I keep my cat busy",
    "postBodyPreview":
        "She won't let me work and will howl like a demon if I lock her out of my office!",
    "postImageLink": "",
  },
  {
    "tag": PostTagEnum.request,
    "commentCount": 55,
    "userPic":
        "https://images.pexels.com/photos/2698935/pexels-photo-2698935.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    "userName": "@eben",
    "postTitle": "Need to rehome my cat",
    "postBodyPreview":
        "Unfortunately I have cancer and 10 minutes left to live. Would somebody please take in my cat 😢. Is he a pain in the ass? Yes. But on the upside he is very cuddly and very disciplined when it comes to food.",
    "postImageLink": "",
  },
  {
    "tag": PostTagEnum.general,
    "commentCount": 4,
    "userPic":
        "https://images.pexels.com/photos/8553648/pexels-photo-8553648.jpeg?auto=compress&cs=tinysrgb&w=600",
    "userName": "@iheartcats",
    "postTitle": "My kitten is such  a picky eater!",
    "postBodyPreview":
        "He won't eat anything unless it is drenched in the blood of my enemies. Is anyone's cat also like this? I think I am almost out of enemies at this point plus it won't help him if I end up in prison. Any suggestions?",
    "postImageLink":
        "https://images.pexels.com/photos/10404485/pexels-photo-10404485.jpeg?auto=compress&cs=tinysrgb&w=600",
  },
];

var resourceList = <Map<String, dynamic>>[
  {
    "name": "NFS",
    "type": ResourceTypeEnum.shelter,
    "resourceImage":
        "https://petstore-foundation.granular.ke/wp-content/uploads/2024/07/NFS-740x740.png",
    "phone": "0111302231",
    "website": "https://www.thenairobifelinesanctuary.com",
    "mapLink": "https://maps.app.goo.gl/TeBiJzUFVduTnCrt7",
  },
  {
    "name": "KSPCA",
    "type": ResourceTypeEnum.shelter,
    "resourceImage":
        "https://petstore-foundation.granular.ke/wp-content/uploads/2024/07/KSPCA-740x740.png",
    "phone": "0733571125",
    "website": "https://www.kspca.or.ke/",
    "mapLink": "https://maps.app.goo.gl/ByPKgFasK9cFtbyv6",
  },
  {
    "name": "KYFSA",
    "type": ResourceTypeEnum.shelter,
    "resourceImage":
        "https://petstore-foundation.granular.ke/wp-content/uploads/2024/07/kibera-youth-for-stray-animals-740x740.png",
    "phone": "0717497765",
    "website": "https://kiberayouthforstrayanimals.org/",
    "mapLink": "",
  },
  {
    "name": "PetStore Kenya",
    "type": ResourceTypeEnum.store,
    "resourceImage":
        "https://lh3.googleusercontent.com/p/AF1QipNCJvh8Xum5-LFIDF5N24YBL99WzhDuJNUqcuA2=s680-w680-h510-rw",
    "phone": "0795350292",
    "website":
        "https://petstore.co.ke/?srsltid=AfmBOoqyCt6qOw8aSgsutFAvs7d0AIRZM7f-upYJr5gr3BSHOKxY9jTU",
    "mapLink": "https://maps.app.goo.gl/W6uX4dGued6ngjA37",
  },
  {
    "name": "Royal Pets Store",
    "type": ResourceTypeEnum.store,
    "resourceImage":
        "https://theroyalpets.com/wp-content/uploads/223147bd-6d5c-46f1-a067-f680843e8847.jpg",
    "phone": "+254110064555",
    "website": "https://theroyalpets.com/",
    "mapLink": "https://maps.app.goo.gl/nD3h3Sk5EHroNUBe6",
  },
  {
    "name": "Aquapet Store",
    "type": ResourceTypeEnum.store,
    "resourceImage":
        "https://aquapet.co.ke/wp-content/uploads/2024/08/Frame-25-1-1.png",
    "phone": "0717859249",
    "website": "https://aquapet.co.ke/",
    "mapLink": "https://maps.app.goo.gl/jAJ9AATcQNALTuxa7",
  },
  {
    "name": "Noble Veterinary",
    "type": ResourceTypeEnum.veterinary,
    "resourceImage": "https://i.ytimg.com/vi/N6fWoXh_dNA/maxresdefault.jpg",
    "phone": "0722657719",
    "website": "https://thenoblevet.com/",
    "mapLink": "https://maps.app.goo.gl/dd2SNTcv3xpb2of4A",
  },
  {
    "name": "Mobivet Clinic",
    "type": ResourceTypeEnum.veterinary,
    "resourceImage":
        "https://sp-ao.shortpixel.ai/client/to_auto,q_glossy,ret_img/https://mobivetclinic.co.ke/wp-content/uploads/2023/06/logo.png",
    "phone": "0727333722",
    "website": "https://mobivetclinic.co.ke/",
    "mapLink": "https://maps.app.goo.gl/3X2vw1u4NgAqc4wS6",
  },
  {
    "name": "Petwell Veterinary",
    "type": ResourceTypeEnum.veterinary,
    "resourceImage":
        "https://keonline.eu-central-1.linodeobjects.com/uploads/logo/Axpr4zJlrQ8d1jzUBg9DvadFIX9ekS9Dx2mdEfWm.png",
    "phone": "0748080080",
    "website": "https://petwellvetclinic.com/",
    "mapLink": "https://maps.app.goo.gl/BCMvWoKevJ3vXMYb6",
  },
];
