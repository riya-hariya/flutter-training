import 'package:ci_task_1/widgets/divider.dart';
import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}


class _MyHomePageState extends State<MyHomePage> {
  List<String> treeName1 = ['Tulsi', 'Gulab', 'Krotan', 'Nagfani'];
  List<String> treeName2 = ['Nagol', 'Karen', 'Champo', 'Ardusi','Sitafal'];
  List<String> treeName3 = ['Gulmahor', 'Vadlo', 'Piplo', 'Limbdo'];
  Map<String, bool> selectedTrees0 = {};
  Map<String, bool> selectedTrees1 = {};
  Map<String, bool> selectedTrees2 = {};
   
  int tulToNagPrice = 0;
  int defaultPrice1=500;
  int defaultPrice2=500;
  int totalPrice=0;

  

  void calculateTotalPrice(){
  int treeprice0 = selectedTrees0.values.where((e) => e).length*35;
  int treeprice1 = selectedTrees1.values.where((e) => e).length*defaultPrice1;
  int treeprice2 = selectedTrees2.values.where((e) => e).length*defaultPrice2;
  totalPrice = treeprice1+treeprice2+treeprice0;
    //totalPrice = (selectedTreeCount * (defaultPrice1+defaultPrice2)+totalPrice1);
}

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: false,
        backgroundColor: Colors.blue,
        title: Text("Codeflash Interview Task 1",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //3 feet tree
              MyDivider(txt: "3 Feet Tree"),
              //3 feet tree
          
              Text("Rs. 35(per pot)-Ready pot will be provided"),
          
              //Tulsi Gulab Krotan Nagfani
              for (String i in treeName1) 
                CheckboxListTile(
                activeColor: Colors.blue,
                title: Text(i),
                value: selectedTrees0[i] ?? false,
                onChanged: (value) {
                  setState(() {
                    selectedTrees0[i] = value!;
                    //tulToNagPrice=tulToNagPrice+(selectedTrees0.values.where((e) => e).length*35);

                  });
                },
              ),
          
              
          
            //15feetTree
            MyDivider(txt: "15 Feet Tree"),
              //15 feet tree
          
              SizedBox(height: 10,),
          
              //15feetTree option1  radio buttons
              Row(
                children: [
                  Radio(
                    activeColor: Colors.blue,
                    value: 900,
                    groupValue: defaultPrice1,
                    onChanged: (value){
                      setState(() {
                        defaultPrice1=value as int;
                      });
                    }),
                    SizedBox(width: 7,),
                    Flexible(
                      child: Text("Option-1: Rs. 900(per tree)-Planting a tree on the main roads will be the responsibility of the organization to maintain the tree for three years.",
                      overflow: TextOverflow.visible,
                      maxLines: 4,),
                    )
                ],
              ),
              
              //15feetTree option2 Radio button
              SizedBox(height: 15,),
              //MyRadioButton(txt: "Option-2: Rs. 500(per tree)- Your chosen tree with tree guard and seedlings will be planted on your site. Which must be maintained.", maxLines: 3,value: 2)
              Row(
                children: [
                  Radio(
                    activeColor: Colors.blue,
                    value: 500,
                    groupValue: defaultPrice1,
                    onChanged: (value){
                      setState(() {
                        defaultPrice1=value as int;
                      });
                    }),
                    SizedBox(width: 7,),
                    Flexible(
                      child: Text("Option-2: Rs. 500(per tree)- Your chosen tree with tree guard and seedlings will be planted on your site. Which must be maintained.",
                      overflow: TextOverflow.visible,
                      maxLines: 3,
                      ),
                    )
                ],
              ),//option2
          
              SizedBox(height: 10,),

              //Nagol to ardusi
              for (String i in treeName2) 
                CheckboxListTile(
                activeColor: Colors.blue,
                title: Text(i),
                value: selectedTrees1[i] ?? false,
                onChanged: (value) {
                  setState(() {
                    selectedTrees1[i] = value!;
                  });
                },
              ),//Nagol to ardusi
          
              
          
              SizedBox(height: 10,),
              
              //More than 15 Feet Tree
              MyDivider(txt: "More than 15 Feet Tree"),
               SizedBox(height: 10,),

              //More than 15 Feet Tree option1
              Row(
                children: [
                  Radio(
                    activeColor: Colors.blue,
                    value: 900,
                    groupValue: defaultPrice2,
                    onChanged: (value){
                      setState(() {
                        defaultPrice2=value as int;
                      });
                    }),
                    SizedBox(width: 7,),
                    Flexible(
                      child: Text("Option-1: Rs. 900(per tree)-Planting a tree on the main roads will be the responsibility of the organization to maintain the tree for three years.",
                      overflow: TextOverflow.visible,
                      maxLines: 4,),
                    )
                ],
              ),
              
              //More than 15 Feet Tree option2 
              SizedBox(height: 15,),
              Row(
                children: [
                  Radio(
                    activeColor: Colors.blue,
                    value: 500,
                    groupValue: defaultPrice2,
                    onChanged: (value){
                      setState(() {
                        defaultPrice2=value as int;
                      });
                    }),
                    SizedBox(width: 7,),
                    Flexible(
                      child: Text("Option-2: Rs. 500(per tree)- Your chosen tree with tree guard and seedlings will be planted on your site. Which must be maintained.",
                      overflow: TextOverflow.visible,
                      maxLines: 3,
                      ),
                    )
                ],
              ),
              //More than 15 Feet Tree option2

              //Gulmohar to Limbdo
              for (String i in treeName3) 
                CheckboxListTile(
                activeColor: Colors.blue,
                title: Text(i),
                value: selectedTrees2[i] ?? false,
                onChanged: (value) {
                  setState(() {
                    selectedTrees2[i] = value!;
                  });
                },
              ),

              
              SizedBox(height: 20,),
              Center(child: Text("Total Cost: rs {$totalPrice}")),

              //Submit Button
              SizedBox(height: 10,),
              ElevatedButton(
                style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.grey[100]),foregroundColor: MaterialStatePropertyAll(Colors.black)),
                onPressed: () {
                  calculateTotalPrice();
                }, 
                child: Text("Submit")),

              SizedBox(height: 30,),
          ]),
        ),
      ),
    );
  }
}