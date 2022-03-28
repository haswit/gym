import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  bool _pinned = true;
  bool _snap = false;
  bool _floating = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [Text("menu")],
        ),
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: this._pinned,
            snap: this._snap,
            floating: this._floating,
            expandedHeight: 160.0,
            flexibleSpace: FlexibleSpaceBar(
              title: const Text("Gym App"),
              background: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0VrmWFTxYZYWnjvvpzMLMTN1ZOmplun4E4xd2oQpvuiPLQU_dk8C5-3yspKRPBA4Zvrk&usqp=CAU',
                fit: BoxFit.cover,
              ),
            ),
          ),
          // If the main content is a list, use SliverList instead.
          SliverFillRemaining(
            child: Container(
                child: Column(
              children: [
                SizedBox(
                  height: 30,
                ),
                Center(
                  child: Container(
                    child: Padding(
                      padding: const EdgeInsets.all(18.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Validity expires in 3 days",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              width: 100,
                              height: 70,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.teal,
                                    Color.fromARGB(255, 34, 100, 94),
                                  ],
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                ),
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black12,
                                    offset: Offset(5, 5),
                                    blurRadius: 10,
                                  )
                                ],
                              ),
                              child: Center(
                                child: Text(
                                  'Pay Now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 80.0,
                    decoration: new BoxDecoration(
                      color: new Color(0xFF333366),
                      shape: BoxShape.rectangle,
                      borderRadius: new BorderRadius.circular(8.0),
                      boxShadow: <BoxShadow>[
                        new BoxShadow(
                          color: Colors.black12,
                          blurRadius: 10.0,
                          offset: new Offset(0.0, 10.0),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 25.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    color: Color.fromARGB(59, 99, 12, 212),
                    child: Wrap(children: [
                      cardButton(
                          title: "Monday",
                          image_url:
                              "https://image.shutterstock.com/image-illustration/biceps-anatomy-muscles-isolated-on-260nw-421145389.jpg"),
                      cardButton(
                          title: "Tuesday",
                          image_url:
                              "https://www.mz-store.com/blog/wp-content/uploads_en/2018/10/chest.jpg"),
                      cardButton(
                          title: "Wednesday",
                          image_url:
                              "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS9CFMBT73raSingWii402MK6uRRQEeTpX1-bsqqXwhryqqzuTA_zIQaDW8g77LPv6EAP0&usqp=CAU"),
                      cardButton(
                          title: "Thursday",
                          image_url:
                              "https://www.peakptfitness.com/wp-content/uploads/2017/04/Fotolia_110740543_S.jpg"),
                      cardButton(
                          title: "Friday",
                          image_url:
                              "https://thumbs.dreamstime.com/z/deltoris-muscles-anterior-anatomy-muscles-isolated-white-d-illustration-71503691.jpg"),
                      cardButton(
                          title: "Saturday",
                          image_url:
                              "https://qph.fs.quoracdn.net/main-qimg-18979a5b6ee444d7c981bddc7ca53364-lq"),
                    ]),
                  ),
                )
              ],
            )),
          ),
        ],
      ),
    );
  }
}

class cardButton extends StatelessWidget {
  final title;
  final image_url;
  const cardButton({Key? key, this.title, this.image_url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.24,
        height: 120,
        child: Card(
          child: Center(
              child: Column(
            children: [
              Image.network(
                this.image_url,
                width: 70,
              ),
              Text(this.title),
            ],
          )),
          elevation: 5,
          margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
          ),
        ),
      ),
    );
  }
}
