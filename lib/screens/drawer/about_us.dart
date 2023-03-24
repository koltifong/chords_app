import 'package:flutter/material.dart';

class AboutUs extends StatelessWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('អំពី'),
      ),
      body:
       ListView(
        children: [
          Container(
            height: 70,
            child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.all(12),
            children: [
              Container(
                height: 200,
                child: Text('យើងជាតន្ត្រីករ និងអ្នកបង្កើតកម្មវិធី។ ហើយយើងមិនរកប្រាក់ចំណេញពីកម្មវិធីនេះទេ។',
                style: TextStyle(fontSize: 18),
                ),
              ),
            ],
           ),
          ),
          Spacer(),
          Divider(
            color: Colors.brown,
          ),
          Container(
            padding: EdgeInsets.all(12),
            // height: 250,
            child: Text('ទំនាក់ទំនាក់មកយើង៖ \n Facebook Page: VST Studio \n លេខទូរស័ព្ទ៖ 011 809 101 \n លេខទូរស័ព្ទ៖ 098 900 035',
            style: TextStyle(fontSize: 18),
            ),
          ),
          Container(
            padding: EdgeInsets.all(12),
           child: Row(children: [
            Icon(Icons.web_outlined),
            Text('https://tifonghome.site',
            style: TextStyle(fontSize: 18, color: Colors.blue, decoration: TextDecoration.underline,),
            )
           ]),
            
          ),
        ],
      ), 
    );
  }
}