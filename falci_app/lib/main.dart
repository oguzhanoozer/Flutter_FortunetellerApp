import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(FalciApp());
}

class FalciApp extends StatefulWidget {
  @override
  _FalciAppState createState() => _FalciAppState();
}

class _FalciAppState extends State<FalciApp> {
  List<String> yanitlar = [
    'TIKLA FALIN GELSİN',
    'AŞK: Bugün, aşk ve ilişki hayatınızda biraz daha temkinli olmalısın. Onu her konuda doğru anlamda anladığından da emin misin?',
    'AŞK: Aşk ve ilişki hayatınızda hakimiyeti eline almak ve birlikteliğinizi dilediğiniz gibi yönlendirmek isteyebilirsin. Bu isteğinin denge içerisindeki bir ilişkiye ne şekilde fayda edeceğini gözden geçirmelisin.',
    'AŞK: Duygularınızın bugün biraz düzensiz olduğunu görebilirsiniz. Güne, daha önce hiç yapmadığınız bir şekilde başlamanızı sağlayan doğal bir elektrik hissi var. Kalbiniz her zaman doğruyu söyler.',
    'AŞK: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'AŞK: Duygusal olarak kötü hissetmeyin, sezgileriniz güçlü durumda. Sevgilinizin hislerini bu sezgiler ile anlamaya çalışın. Bazen sadece eğlenmek gerekir, siz de rahatlayın ve birlikte eğlenin!',
    'PARA: Kafanıza uzun süredir koyduğunuz bazı harcamalar var, bugün kendinize bunlara gerçekten ne kadar ihtiyacınız olduğunu sorun ve bir kısmını iptal edin. Bugün bir hayır kurumuna küçücük bir bağış yapın, kendinizi çok daha iyi hissedeceksiniz.',
    'PARA: Nakit akışınızın dengesini bozabilecek dönemlere giriyoruz, bu aralar kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız, önümüzdeki 3 ay boyunca gelir gider dengenizden emin olmadan hareket etmeyin',
    'PARA: Bugün, başkalarına yardım, destek ve hizmet duygunuzun yüksek olduğu bir gün olabilir, hayır, bağış işlerinde yer alabilirsiniz.',
    'PARA: Bugün kendinize güveniniz oldukça yüksek, ancak bu size pek fayda getirmeyebilir, bağlantılarınız size verdikleri destekten şüphelenebilirler. Sakin hareket edin, bir adım geri durun, ve paradan çok sağlığınızla ilgilenin.',
    'PARA: Para kaynaklarımız ile ilgili detaylar bu dönem dikkat etmelisiniz. Ayrıca maddi konularda ve harcamalarda uzun süredir sizi meşgul eden bir konuda karara varabilirsiniz, yakınlarınızdan veya eşinizden karar alırken yardım isteyin.',
    'TAVSİYE: Bugün meraklı kişiliğini ön plana çıkartarak insanlara soru sormaktan çekinme ',
    'TAVSİYE: Bugün daha önce hiç fark etmediğin şeylerin hep orada olduğunu fark edebilirsin, sadece biraz daha dikkatli olmaya çalış',
    'TAVSİYE: Bugün ikili ilişkilerinde daha aktif ve verici olmaya çalışabilirsin, aynı fikirde olduğun insanları daha dikkatli dinlemeye ve sorgulamaya başla',
    'TAVSİYE: Bugün sadece işine odaklan, dikkatini dağıtacak her türlü nesne ve sosyal medyadan uzaklaşmak kendini daha mutlu hissettirebilir',
    'TAVSİYE: Bugün tek başına biraz yürüyüş yap, çocukluğunda dinlediğin şarkıları aç ve o zamanlar oynadığın oyunları hayal et'
  ];

  int anlikFal = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.purpleAccent,
        appBar: AppBar(
          title: Text("Günün Falı"),
          centerTitle: true,
          backgroundColor: Colors.purple,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              //mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                CircleAvatar(
                  radius: 70,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage("assets/images/falci.png"),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  color: Colors.yellowAccent[200],
                  margin: EdgeInsets.symmetric(horizontal: 55),
                  child: ListTile(
                    leading: Icon(
                      Icons.favorite,
                      color: Colors.red,
                    ),
                    title: Text(
                      "AŞK DURUMU",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                    onTap: () {
                      setState(() {
                        anlikFal = Random().nextInt(5) + 1;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  color: Colors.greenAccent[100],
                  margin: EdgeInsets.symmetric(horizontal: 55),
                  child: ListTile(
                    leading: Icon(
                      Icons.shopping_cart,
                      color: Colors.red,
                    ),
                    title: Text(
                      "PARA DURUMU",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                    onTap: () {
                      setState(() {
                        anlikFal = Random().nextInt(5) + 6;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Card(
                  color: Colors.blueGrey[100],
                  margin: EdgeInsets.symmetric(horizontal: 55),
                  child: ListTile(
                    leading: Icon(
                      Icons.explore,
                      color: Colors.red,
                    ),
                    title: Text(
                      "GÜNLÜK TAVSİYE",
                      style: TextStyle(color: Colors.red, fontSize: 20),
                    ),
                    onTap: () {
                      setState(() {
                        anlikFal = Random().nextInt(5) + 11;
                      });
                    },
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Container(
                  width: 300,
                  child: Divider(
                    height: 5,
                    color: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                    padding: EdgeInsets.symmetric(horizontal: 25),
                    height: 150,
                    width: double.infinity,
                    child: Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0),
                        child: Text(yanitlar[anlikFal],
                            style: TextStyle(fontSize: 16),
                            textAlign: TextAlign.center))),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
