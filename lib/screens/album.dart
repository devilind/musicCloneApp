import 'package:flutter/material.dart';

class Album extends StatelessWidget {
  Image img = Image.network(
    "https://cdns-images.dzcdn.net/images/artist/a9087f289c3bd826eb8c8bd48cd11f1e/500x500.jpg",
    fit: BoxFit.fill,
  );

  @override
  Widget build(BuildContext context) {
    var fullwidth = MediaQuery.of(context).size.width;
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              stretch: true,
              backgroundColor: Colors.black,
              pinned: true,
              expandedHeight: 300,
              flexibleSpace: FlexibleSpaceBar(
                background: Container(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Image.network(
                        "https://cdns-images.dzcdn.net/images/artist/a9087f289c3bd826eb8c8bd48cd11f1e/500x500.jpg",
                        fit: BoxFit.fill,
                        width: fullwidth,
                      ),
                      Container(
                        decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment(0.0,
                                0.7), // 10% of the width, so there are ten blinds.
                            colors: <Color>[
                              Color(0x00000000),
                              Color(0xff000000)
                            ], // red to yellow
                            // repeats the gradient over the canvas
                          ),
                        ),
                      )
                    ],
                  ),
                  color: Colors.grey[900],
                ),
                title: Text(
                  "Imagine Dragons",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                ),
                centerTitle: false,
                titlePadding: EdgeInsets.symmetric(
                    horizontal: fullwidth / 7.6, vertical: 15),
              ),
              leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_outlined),
              ),
              actions: [
                IconButton(
                    icon: Icon(
                      Icons.reply_sharp,
                    ),
                    onPressed: () {}),
                IconButton(icon: Icon(Icons.search_outlined), onPressed: () {}),
              ],
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              Container(
                child: Column(
                  children: [
                    TextButton(
                        onPressed: () {},
                        child: Container(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.shuffle_outlined,
                                color: Colors.black,
                              ),
                              Text(
                                "SHUFFLE",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                          height: 40,
                          width: fullwidth - 80,
                          color: Colors.white,
                        )),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0, right: 20, top: 20, bottom: 7),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "Top songs",
                            style: TextStyle(
                                fontSize: 19.4, fontWeight: FontWeight.bold),
                          ),
                          Text("See All"),
                        ],
                      ),
                    ),
                    Column(
                      children: [
                        Card(
                          color: Colors.black,
                          child: SizedBox(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.my_library_music),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text("New Releases"),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.more_vert_sharp,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.black,
                          child: SizedBox(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.my_library_music),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text("Charts"),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.more_vert_sharp,
                                    )),
                              ],
                            ),
                          ),
                        ),
                        Card(
                          color: Colors.black,
                          child: SizedBox(
                            height: 50,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.all(8.0),
                                        child: Icon(Icons.my_library_music),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(5.0),
                                        child: Text("Moods & geners"),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Icon(
                                      Icons.more_vert_sharp,
                                    )),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                    Text("HELLO"),
                  ],
                ),
              ),
            ]))
          ],
        ),
      ),
    );
  }
}
