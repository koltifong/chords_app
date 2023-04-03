import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: Colors.transparent,
        bottomOpacity: 0.0,
        elevation: 0.0,
        title: Text('សារជូនដំណឹង'),
        centerTitle: true,
          actions: [
           IconButton(
            onPressed: () {},
            icon: const Icon(Icons.playlist_add_check)),
          ],        
        ),
        backgroundColor: Color.fromRGBO(245, 245, 245, 0.9),
        body: SingleChildScrollView(
        child: Container(
        padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
                child: Row(
                children: [
                const SizedBox(height: 15),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: IconButton(onPressed: () {},
                      icon: Icon(Icons.notifications_outlined,
                      size: 33,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
                   child: Column(
                    children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'VST Studio',
                              style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18,),),
                              TextSpan(
                               text: '\nUpload new Photo.',
                               style: TextStyle(fontSize: 14,)
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 5),
                Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
                child: Row(
                children: [
                const SizedBox(height: 15),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: IconButton(onPressed: () {},
                      icon: Icon(Icons.notifications_outlined,
                      size: 33,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
                   child: Column(
                    children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'VST Studio',
                              style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18,),),
                              TextSpan(
                               text: '\nUpload new Photo.',
                               style: TextStyle(fontSize: 14,)
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             const SizedBox(height: 5),
                Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
                child: Row(
                children: [
                const SizedBox(height: 15),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: IconButton(onPressed: () {},
                      icon: Icon(Icons.notifications_outlined,
                      size: 33,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
                   child: Column(
                    children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'VST Studio',
                              style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18,),),
                              TextSpan(
                               text: '\nUpload new Photo.',
                               style: TextStyle(fontSize: 14,)
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             const SizedBox(height: 5),
                Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
                child: Row(
                children: [
                const SizedBox(height: 15),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: IconButton(onPressed: () {},
                      icon: Icon(Icons.notifications_outlined,
                      size: 33,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
                   child: Column(
                    children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'VST Studio',
                              style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18,),),
                              TextSpan(
                               text: '\nUpload new Photo.',
                               style: TextStyle(fontSize: 14,)
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             const SizedBox(height: 5),
                Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
                child: Row(
                children: [
                const SizedBox(height: 15),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: IconButton(onPressed: () {},
                      icon: Icon(Icons.notifications_outlined,
                      size: 33,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
                   child: Column(
                    children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'VST Studio',
                              style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18,),),
                              TextSpan(
                               text: '\nUpload new Photo.',
                               style: TextStyle(fontSize: 14,)
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             const SizedBox(height: 5),
                Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
                child: Row(
                children: [
                const SizedBox(height: 15),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: IconButton(onPressed: () {},
                      icon: Icon(Icons.notifications_outlined,
                      size: 33,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
                   child: Column(
                    children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'VST Studio',
                              style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18,),),
                              TextSpan(
                               text: '\nUpload new Photo.',
                               style: TextStyle(fontSize: 14,)
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             const SizedBox(height: 5),
                Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
                child: Row(
                children: [
                const SizedBox(height: 15),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: IconButton(onPressed: () {},
                      icon: Icon(Icons.notifications_outlined,
                      size: 33,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
                   child: Column(
                    children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'VST Studio',
                              style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18,),),
                              TextSpan(
                               text: '\nUpload new Photo.',
                               style: TextStyle(fontSize: 14,)
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             const SizedBox(height: 5),
                Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
                child: Row(
                children: [
                const SizedBox(height: 15),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: IconButton(onPressed: () {},
                      icon: Icon(Icons.notifications_outlined,
                      size: 33,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
                   child: Column(
                    children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'VST Studio',
                              style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18,),),
                              TextSpan(
                               text: '\nUpload new Photo.',
                               style: TextStyle(fontSize: 14,)
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             const SizedBox(height: 5),
                Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
                child: Row(
                children: [
                const SizedBox(height: 15),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: IconButton(onPressed: () {},
                      icon: Icon(Icons.notifications_outlined,
                      size: 33,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
                   child: Column(
                    children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'VST Studio',
                              style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18,),),
                              TextSpan(
                               text: '\nUpload new Photo.',
                               style: TextStyle(fontSize: 14,)
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
             const SizedBox(height: 5),
                Container(
                decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white),
                child: Row(
                children: [
                const SizedBox(height: 15),
                  SizedBox(
                    width: 80,
                    height: 80,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(5),
                      child: IconButton(onPressed: () {},
                      icon: Icon(Icons.notifications_outlined,
                      size: 33,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5.0, left: 5.0),
                   child: Column(
                    children: [
                        Text.rich(
                          TextSpan(
                            children: [
                              TextSpan(text: 'VST Studio',
                              style: TextStyle(
                              fontWeight: FontWeight.w500, fontSize: 18,),),
                              TextSpan(
                               text: '\nUpload new Photo.',
                               style: TextStyle(fontSize: 14,)
                                ),
                              ],
                            ),
                          ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
        ),
    );
  }
}