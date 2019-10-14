import 'package:articles/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SecondPage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 5,
        initialIndex: 0,
        child: Scaffold(
           body: SingleChildScrollView(
             child: Column(
               crossAxisAlignment : CrossAxisAlignment.start,
               children: <Widget>[
                 SizedBox(height: 20,),
                 _buildSearchField(context),
                 SizedBox(height: 20.0,),
                 _buildTabs(),
                 SizedBox(height: 20.0,),
                 _buildHorizontalList(),
                 SizedBox(height: 20.0,),
                 _buildGreyLine(15.0),
                 SizedBox(height: 20.0,),
                 _buildRowTitle(),
                 SizedBox(height: 20.0,),
                 _buildGrid()
               ],
             ),
           ),
        ),
      ),
    );
  }


  Widget _buildSearchField(BuildContext context){
    return Row(
      children: <Widget>[
          SizedBox(
            width: 15.0,
          ),
          Material(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20.0)),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.09),
                borderRadius: BorderRadius.all(Radius.circular(20.0)),
              ),
              padding: EdgeInsets.symmetric(horizontal: 15.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  GestureDetector(
                    child: Icon(
                      Icons.search,
                      color: Colors.black54,
                    ),
                    onTap: () {},
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.6,
                    child:TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Search..."
                      ),
                    ),
                  ),
                ],
              ),
            ),
        ),
        SizedBox(
          width: 15.0,
        ),
        Container(
          alignment: Alignment.center,
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            gradient: LinearGradient(
              colors: [
                Colors.pink,
                Colors.deepOrangeAccent
              ],
              begin: Alignment.bottomLeft,
              end: Alignment.bottomRight
            )
          ),
          child: IconButton(
            icon: Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () => Navigator.of(context).push(
                MaterialPageRoute(builder: (context) => HomePage())
            )
          ),
        ),
      ],
    );
  }


  Widget _buildTabs(){
    return TabBar(
      isScrollable: true,
      indicatorColor: Colors.transparent,
      labelColor: Colors.black,
      labelStyle: TextStyle(fontWeight: FontWeight.bold,fontSize: 17.0),
      unselectedLabelStyle: TextStyle(fontSize: 14.0),
      unselectedLabelColor: Colors.grey.withOpacity(0.6),
      tabs: [
        Tab(child: Text('For you')),
        Tab(child: Text('Editor\'s pickes')),
        Tab(child: Text('Top stories')),
        Tab(child: Text('Bookring')),
        Tab(child: Text('Timeline')),
      ],
    );
  }


  Widget _buildStatusImage(String pathImage, String profilePath, String name){
    return Container(
      width: 130.0,
      height: 250.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0)
      ),
      child: Stack(
        children: <Widget>[
          ClipRRect(
              child: Image.asset(
                pathImage,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10.0)
          ),
          Positioned(
            top: 8.0,
            right: 8.0,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 4.0,horizontal: 5.0),
              decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius: BorderRadius.circular(5.0),
              ),
              child: Text(
                'FEATURED',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 9.0,
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
          Positioned(
            left: 5.0,
            bottom: 12.0,
            child: Row(
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      border: Border.all(color: Colors.pink,width: 2.0),
                      shape: BoxShape.circle
                  ),
                  child: Container(
                    child: CircleAvatar(
                      radius: 15.0,
                      backgroundImage: AssetImage(profilePath),
                    ),
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.transparent,width: 2.0),
                      shape: BoxShape.circle
                    ),
                  ),
                ),
                SizedBox(width: 5.0,),
                Text(
                  name,
                  style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                     fontSize: 11.0
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }


  Widget _buildHorizontalList(){
    return Container(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          SizedBox(width: 10.0,),
          _buildStatusImage('assets/image8.jpg','assets/image7.jpg','Jennifer ganrer'),
          SizedBox(width: 10.0,),
          _buildStatusImage('assets/image12.jpg','assets/image10.jpg','Leo Messi'),
          SizedBox(width: 10.0,),
          _buildStatusImage('assets/hairstyle.jpg','assets/image8.jpg','Jessica biel'),
          SizedBox(width: 10.0,),
          _buildStatusImage('assets/image9.jpg','assets/image3.jpg','Zoey Deshanel'),
          SizedBox(width: 10.0,),
          _buildStatusImage('assets/image10.jpg','assets/image5.jpg','Chris Hims'),
        ],
      ),
    );
  }


  Widget _buildGreyLine(double heightLine){
    return Container(
      width: double.infinity,
      height: heightLine,
      color: Colors.grey.withOpacity(0.2),
    );
  }


  Widget _buildRowTitle(){
    return Padding(
      padding: const EdgeInsets.only(left: 20.0,right: 20.0),
      child: Row(
        children: <Widget>[
            Text(
              'Most popular',
              style: TextStyle(
                fontSize: 19.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            Spacer(),
            Text(
              'Show all',
              style: TextStyle(
                color: Colors.pink,
                fontSize: 16.0
              ),
            ),
            SizedBox(width: 5.0,),
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.pink,width: 2.0)
              ),
              child: Icon(Icons.navigate_next,color: Colors.pink),
            )
        ],
      ),
    );
  }


  Widget _buildGrid(){
    return Padding(
      padding: EdgeInsets.only(left: 10.0,right: 10.0),
      child: GridView(
        shrinkWrap: true,
        physics: BouncingScrollPhysics(),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
           crossAxisCount: 2,
           childAspectRatio: 0.75,
           mainAxisSpacing: 10.0,
           crossAxisSpacing: 10.0
        ),
        scrollDirection: Axis.vertical,
        children: <Widget>[
            _buildGridItem('assets/festival2.jpg'),
            _buildGridItem('assets/building.jpg'),
            _buildGridItem('assets/jogging.jpg'),
            _buildGridItem('assets/moto.jpg'),
            _buildGridItem('assets/festival.jpg'),
            _buildGridItem('assets/festival2.jpg'),
            _buildGridItem('assets/building.jpg'),
            _buildGridItem('assets/jogging.jpg'),

        ],
      ),
    );
  }


  Widget _buildGridItem(String pathImage){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
            child: Image.asset(
              pathImage,
              fit: BoxFit.cover,
              height: 120,
            ),
            borderRadius: BorderRadius.circular(5.0)
        ),
        SizedBox(height: 8.0,),
        Text(
          'Search Engine\nOptimization and \nAdvertinsing',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold
          ),
        ),
        SizedBox(height: 10.0,),
        Text(
          'Yesterday',
           style: TextStyle(
             fontSize: 12.0,
             color: Colors.grey
           ),
        ),
        SizedBox(height: 10.0,),

      ],
    );
  }

}