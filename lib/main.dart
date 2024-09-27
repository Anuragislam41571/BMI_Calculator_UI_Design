import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

void main (){



  runApp(myapp());






}



class myapp extends StatelessWidget {
  const myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: home(),);
  }
}


class home extends StatelessWidget {
  const home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
backgroundColor: Colors.white38,
      appBar: AppBar(

        actions: [


          IconButton(onPressed: (){}, icon: Icon(Icons.replay)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),

        ],
        backgroundColor: Colors.red,
        title: Text('BMI Calculator',style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 24
        ),),
      ),


body: SingleChildScrollView(
  child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
  
  
  
  
      children: [
  
  
       Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           SizedBox(
             width: 60,
             child: TextFormField(

  
               decoration: InputDecoration(

                 labelText: 'Age',

                 border: OutlineInputBorder(
                     borderSide: BorderSide(width: 2)

                 ),

                 focusedBorder: OutlineInputBorder(
                   borderSide: BorderSide(width: 2)
                 )
  
               ),
  
             ),
           ),
           SizedBox(
             width: 80,
             child: TextFormField(
  
               decoration: InputDecoration(
  
                 labelText: 'Ht(ft)',

                   border: OutlineInputBorder(
                       borderSide: BorderSide(width: 2)

                   ),

                   focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(width: 2)
                   )


               ),
  
             ),
           ),
           SizedBox(
             width: 70,
             child: TextFormField(
  
               decoration: InputDecoration(
  
                 labelText: 'Ht(in)',

                   border: OutlineInputBorder(
                       borderSide: BorderSide(width: 2)

                   ),

                   focusedBorder: OutlineInputBorder(
                       borderSide: BorderSide(width: 2)
                   )

               ),
  
             ),
           )
  
         ],
       ),
  
  const SizedBox(
    height: 30,
  ),
  
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
  
          children: [
            
            Icon(Icons.male,size: 28,),
            Text('|',style: TextStyle(fontSize: 30),),
            Icon(Icons.female,size: 28,),
  
            SizedBox(
              width: 90,
              child: TextFormField(
  
                decoration: InputDecoration(
                  labelText: 'Weight(kg)',
                  labelStyle: TextStyle(
                    fontSize: 16,
  
                  ),
                    border: OutlineInputBorder(
                        borderSide: BorderSide(width: 2)

                    ),

                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(width: 2)
                    )


                ),
              ),
            ),
            
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios_sharp,size: 20,
            color: Colors.red,))
  
  
          ],
        ),
  
   SizedBox(
     height: 39,
   ),
  
      SizedBox(
        height: 350,
        child: SfRadialGauge(
            axes: <RadialAxis>[
              RadialAxis(minimum: 0, maximum: 40,
                  ranges: <GaugeRange>[
                    GaugeRange(startValue: 0, endValue: 18, color:Colors.green),
                    GaugeRange(startValue: 18,endValue: 24,color: Colors.orange),
                    GaugeRange(startValue: 24,endValue: 40,color: Colors.red)],
                  pointers: <GaugePointer>[
                    NeedlePointer(value: 90)],
                  annotations: <GaugeAnnotation>[
                    GaugeAnnotation(widget: Container(child:
                    Text('90.0',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold))),
                        angle: 90, positionFactor: 0.5
                    )]
              )]
        ),
      ),
    
    
    
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            Text('Very Serverely Underweight'),
            Text('<- 15.9')
          ],
        ),
        
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            
            
            Text('serverely Underweight'),
            Text('16.0-16.9')
            
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


            Text('Underweight'),
            Text('17.0-18.4')

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


            Text('Normal'),
            Text('18.5-24.9')

          ],
        ),


        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


            Text(' overweight'),
            Text('25.0-29.9'),

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


            Text('Obese Class |'),
            Text('30.0-29.9')

          ],
        ),



        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


            Text('Obese Class ||'),
            Text('30.0-39.9')

          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [


            Text('Obese Class |'),
            Text('>=45.0')

          ],
        ),
        
        
        Text('Normal Weight:119.180',
        style:  TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w900,
          color: Colors.red
        ),)
    
    
    
      ]
  )
      ),
)
    );



  }
}

