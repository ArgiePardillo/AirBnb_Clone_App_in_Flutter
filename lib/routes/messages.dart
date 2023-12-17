import 'package:flutter/material.dart';
void main()=>runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home : Messages(),
    )
);

class Messages extends StatefulWidget {
  const Messages({super.key});


  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {

  List<String> items =["a","b","c","d"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back,color: Colors.black87,size: 23,),
                  onPressed: (){
                    Navigator.pop(context);
                  },),
                const Text("Notifications")
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: items.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context,i){
                    return Container(
                      padding: const EdgeInsets.all(8),
                      child: Dismissible(
                        key: Key(items[i]),
                        child: Material(
                          elevation: 3,
                          child: Container(
                            margin: const EdgeInsets.symmetric(vertical: 15,horizontal: 10),
                            child: Row(
                              children: [
                                Container(
                                  margin: const EdgeInsets.only(right: 10),
                                  height: 60,
                                  width: 60,
                                  decoration: const BoxDecoration(
                                      shape: BoxShape.rectangle,
                                      color: Colors.red
                                  ),
                                ),
                                const Flexible(
                                  child: Text("An Admin accepted your request",
                                      style: TextStyle(fontSize:12),
                                      maxLines: 2,overflow: TextOverflow.ellipsis
                                  ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        onDismissed: (direction){
                          setState(() {
                            items.removeAt(i);
                          });
                        },
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}