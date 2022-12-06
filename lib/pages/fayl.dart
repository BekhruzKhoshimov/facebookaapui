import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text('facebook', style: TextStyle(color: Colors.blue, fontSize: 30, fontWeight: FontWeight.bold),),
        actions: [
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.search, color: Colors.grey[800],)
          ),
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.camera_alt, color: Colors.grey[800],)
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
            height: 120,
            child: Column(
              children: [
                Expanded(
                    child: Row(
                      children: [
                        // #avatar
                        Container(
                          height: 45,
                          width: 45,
                          decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                  image: AssetImage('assets/images/user_5.jpeg'),
                                  fit: BoxFit.cover
                              )
                          ),
                        ),
                        const SizedBox(width: 10,),
                        //#search
                        Expanded(
                          child: Container(
                            height: 45,
                            padding: const EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(23),
                                border: Border.all(
                                  width: 1,
                                  color: Colors.grey.shade500,
                                )
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  hintText: 'What`s on your mind?',
                                  hintStyle: TextStyle(color: Colors.grey[700]),
                                  border: InputBorder.none
                              ),
                            ),
                          ),
                        )
                      ],
                    )
                ),
                const SizedBox(height: 5,),
                Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.video_call, color: Colors.red,),
                              SizedBox(width: 5,),
                              Text('Live')
                            ],
                          ),
                        ),
                        Container(
                          width: 1,
                          margin: const EdgeInsets.symmetric(vertical: 14),
                          color: Colors.grey[300],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.photo,color: Colors.green,),
                              SizedBox(width: 5,),
                              Text("Photo"),
                            ],
                          ),
                        ),
                        Container(
                          width: 1,
                          margin: const EdgeInsets.symmetric(vertical: 14),
                          color: Colors.grey[300],
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(Icons.location_on,color: Colors.red,),
                              SizedBox(width: 5,),
                              Text("Check in"),
                            ],
                          ),
                        ),
                      ],
                    )
                )
              ],
            ),
          ),
          Container(
            height: 200,
            color: Colors.white,
            margin: const EdgeInsets.only(top: 10),
            padding: const EdgeInsets.only(top: 10, bottom: 10),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                const SizedBox(width: 10,),
                makeStory(
                    storyImage: 'assets/images/story_5.jpeg',
                    userImage: 'assets/images/user_5.jpeg',
                    userName: 'User Five'
                ),
                makeStory(
                    storyImage: 'assets/images/story_4.jpeg',
                    userImage: 'assets/images/user_4.jpeg',
                    userName: 'User Four'
                ),
                makeStory(
                    storyImage: 'assets/images/story_3.jpeg',
                    userImage: 'assets/images/user_3.jpeg',
                    userName: 'User Three'
                ),
                makeStory(
                    storyImage: 'assets/images/story_2.jpeg',
                    userImage: 'assets/images/user_2.jpeg',
                    userName: 'User Two'
                ),
                makeStory(
                    storyImage: 'assets/images/story_1.jpeg',
                    userImage: 'assets/images/user_1.jpeg',
                    userName: 'User One'
                ),
              ],
            ),
          ),
          makeFeed(
              userName: 'User Two',
              userImage: 'assets/images/user_2.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage: 'assets/images/story_2.jpeg',
              isLiked: true
          ),
          makeFeed(
              userName: 'User one',
              userImage: 'assets/images/user_1.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage: 'assets/images/story_1.jpeg',
              isLiked: true
          ),
          makeFeed(
              userName: 'User Three',
              userImage: 'assets/images/user_3.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage: 'assets/images/story_3.jpeg',
              isLiked: false
          ),
          makeFeed(
              userName: 'User Four',
              userImage: 'assets/images/user_4.jpeg',
              feedTime: '1 hr ago',
              feedText: 'All the Lorem Ipsum generators on the Internet tend to repeat predefined.',
              feedImage: 'assets/images/story_4.jpeg',
              isLiked: false
          ),
        ],
      ),
    );
  }

  //=================================================================================================================


  Widget makeStory({storyImage, userImage, userName}){
    return AspectRatio(
      aspectRatio: 1.3 / 2,
      child: Container( // #backgroundImageStory
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            image: DecorationImage(
                image: AssetImage(storyImage),
                fit: BoxFit.cover
            )
        ),
        child: Container( // #shadowStory
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              gradient: LinearGradient(
                  begin: Alignment.bottomRight,
                  colors: [
                    Colors.black.withOpacity(.9),
                    Colors.black.withOpacity(.1),
                  ]
              )
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(width: 2, color: Colors.blue),
                    image: DecorationImage(
                        image: AssetImage(userImage),
                        fit: BoxFit.cover
                    )
                ),
              ),
              Text(userName, style: const TextStyle(color: Colors.white),)
            ],
          ),
        ),
      ),
    );
  }

  //****************************************************************************************************************

  Widget makeFeed({userName, userImage, feedTime, feedText, feedImage, isLiked}){
    return Container(
      margin: const EdgeInsets.only(top: 10),
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          Container(
            padding: const EdgeInsets.symmetric(horizontal:10),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage(userImage),
                              fit: BoxFit.cover
                          )
                      ),
                    ),
                    const SizedBox(width: 10,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(userName, style: TextStyle(color: Colors.grey[900], fontSize: 18, fontWeight: FontWeight.bold, letterSpacing: 1),),
                        const SizedBox(height: 3,),
                        Text(feedTime, style: const TextStyle(fontSize: 15, color: Colors.grey),),
                      ],
                    ),
                    Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Center(child: IconButton(icon: Icon(Icons.more_horiz, size: 30, color: Colors.grey[600],), onPressed: () {  },),),
                          ],
                        )
                    )
                  ],
                ),
                const SizedBox(height: 20,),
                Text(feedText, style: TextStyle(fontSize: 15, color: Colors.grey[800], height: 1.5, letterSpacing: .7),),
                const SizedBox(height: 20,)
              ],
            ),
          ),
          //@@@@@@@@@@@@@@@@@@@@@@@@@@@ POST IMAGE @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          Container(
            height: 240,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(feedImage),
                    fit: BoxFit.cover
                )
            ),
          ),
          const SizedBox(height: 20,),
          //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                makeLike(),
                Transform.translate(
                  offset: const Offset(-5, 0),
                  child: makeLove(),
                ),
                const SizedBox(width: 5,),
                Text("2.5K", style: TextStyle(fontSize: 15, color: Colors.grey[800]),),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("400 Comments", style: TextStyle(fontSize: 13, color: Colors.grey[800]),)
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20,),
          //@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              makeLikeButton(isActive : isLiked),
              makeCommentButton(),
              makeShareButton(),
            ],
          ),
          const SizedBox(height: 20,)


        ],
      ),
    );
  }

  //****************************************************************************************************************

  Widget makeLike(){
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          color: Colors.blue,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.thumb_up, size: 12,color: Colors.white,),
      ),
    );
  }

  //*****************************************************************************************************************

  Widget makeLove(){
    return Container(
      height: 25,
      width: 25,
      decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(color: Colors.white)
      ),
      child: const Center(
        child: Icon(Icons.favorite, size: 12,color: Colors.white,),
      ),
    );
  }

  //*****************************************************************************************************************

  Widget makeLikeButton({isActive}){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Icon(Icons.thumb_up, size: 18, color: isActive ? Colors.blue : Colors.grey,),
          const SizedBox(width: 5,),
          Text('Like', style: TextStyle(color: isActive ? Colors.blue : Colors.grey,),)
        ],
      ),
    );
  }

  //*****************************************************************************************************************

  Widget makeCommentButton(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.comment, size: 18, color: Colors.grey,),
          SizedBox(width: 5,),
          Text('Comment', style: TextStyle(color: Colors.grey))
        ],
      ),
    );
  }

  //*****************************************************************************************************************

  Widget makeShareButton(){
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          Icon(Icons.share, size: 18, color: Colors.grey,),
          SizedBox(width: 5,),
          Text('Share', style: TextStyle(color: Colors.grey))
        ],
      ),
    );
  }
}