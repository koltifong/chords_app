import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('អំពី'),
        bottomOpacity: 0.0,
        elevation: 0.0,
      ),
      body:
       ListView(
        children: [
          SizedBox(
            height: 90,
            child: ListView(
            // Important: Remove any padding from the ListView.
            padding: const EdgeInsets.all(12),
            children: const [
              SizedBox(
                height: 200,
                child: Text('យើងជាតន្ត្រីករ និងអ្នកបង្កើតកម្មវិធី។ ហើយយើងមិនរកប្រាក់ចំណេញពីកម្មវិធីនេះទេ។',
                style: TextStyle(fontSize: 18),
                ),
              ),
            ],
           ),
          ),
          const Spacer(),
          const Divider(
            color: Colors.brown,
          ),
          Container(
            padding: const EdgeInsets.all(12),
            // height: 250,
            child: const Text('ទំនាក់ទំនាក់មកយើង៖ \n Facebook Page: VST Studio \n Youtube Channel: VST Studio',
            style: TextStyle(fontSize: 18),
            ),
          ),
          // Container(
          //   padding: EdgeInsets.all(12),
          //  child: Row(children: [
          //   Icon(Icons.web_outlined),
          //   Text('https://tifonghome.site',
          //   style: TextStyle(fontSize: 18, color: Colors.blue, decoration: TextDecoration.underline,),
          //   )
          //  ]),
            
          // ),
        ],
      ), 
    );
  }
}