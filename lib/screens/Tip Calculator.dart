
import 'package:assignmnet/Widget/Simple%20Input%20Field.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class TipCalculator extends StatefulWidget {
  const TipCalculator({super.key});

  @override
  State<TipCalculator> createState() => _TipCalculatorState();
}

class _TipCalculatorState extends State<TipCalculator> {

  final formKey=GlobalKey<FormState>();

  final totalBillController= TextEditingController();
  final totalTipController= TextEditingController();
  final totalPeopleController= TextEditingController();

  static const Color containerColor = Color(0xffF5F8FB);
  static const Color textBlack = Color(0xff232323);
  static const Color textLightBlack = Color(0xff717171);
  static const Color clearButtonColor = Color(0xffFF7511);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tip Calculator",style: TextStyle(color: Colors.black87 ,fontWeight: FontWeight.w700),),
        centerTitle: true,
        elevation: 3,
        shadowColor: Colors.black.withOpacity(0.3),
        backgroundColor: Colors.white,
      ),
      body:Padding(
          padding: const EdgeInsets.all(10),
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            /// top section
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color:containerColor,
                borderRadius: BorderRadius.circular(5)
              ),
              padding: const EdgeInsets.all(15),
              child: Column(
                children: [
                  Text("Total Bill",style: TextStyle(color: textLightBlack),),
                  Text("\$ ${totalBillController.text}",style: TextStyle(fontSize: 26,fontWeight: FontWeight.w700,color: textBlack),),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Total Person",style: TextStyle(color: textLightBlack),),
                      Text("Tip Amount",style: TextStyle(color: textLightBlack),),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("05",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500, color: textBlack),),
                      Text("\$ 20.0",style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: textBlack),),
                    ],
                  ),

                ],

              ),

            ),
            ///gap
            const SizedBox(
              height: 10,
            ),
            ///per person section
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  color:containerColor,
                  borderRadius: BorderRadius.circular(5)
              ),
              padding: const EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children:[
                  Text("Amount Per person",style: TextStyle( color: textLightBlack),),
                  Text("\$ 20.0",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: textBlack),),
                ],
              ),
            ),
            const Spacer(),
            SimpleInputField(
                controller: totalBillController,
                title: "Total Bill",
                iconData: Icons.attach_money,
                hintText: "Please enter total bill"
            ),
            SimpleInputField(
                controller: totalTipController,
                title: "Tip Percentage",
                iconData: Icons.percent,
                hintText: "Please enter tip percentage"
            ),
            SimpleInputField(
                controller: totalPeopleController,
                title: "Number of people",
                hintText: "Please enter total number"
            ),

            Row(
              children: [

                Expanded(
                  child: GestureDetector(
                    onTap: (){
                      formKey.currentState!.validate();

                    },
                    child: Container(
                      margin: const EdgeInsets.only(top:10),
                      padding: const EdgeInsets.symmetric(vertical:10, horizontal: 45),
                      decoration:  BoxDecoration(
                        color: Colors.black87,
                        borderRadius: BorderRadius.circular(10)

                      ),
                      alignment:Alignment.center ,
                      child: const Text("calculate" ,style: TextStyle( color: Colors.white),),
                    ),

                  ),
                ),

                const SizedBox(width: 10,),
                GestureDetector(
                  onTap: (){

                  },
                  child: Container(
                    margin: const EdgeInsets.only(top:10),
                    padding: const EdgeInsets.symmetric(vertical:10, horizontal: 45),
                    decoration:  BoxDecoration(
                        color: clearButtonColor,
                        borderRadius: BorderRadius.circular(10)

                    ),
                    child: const Text("Clear" ,style: TextStyle( color: Colors.white),),
                  ),

                ),

              ],
            )
          ],
        ),
      ),
      ) ,

    );
  }
}
//const Text("Total Bill",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500, color: textBlack),),
//const SizedBox(height: 5,),
/*TextFormField(
controller: totalBillController,
keyboardType: TextInputType.number,
decoration:InputDecoration(
hintText: "Please enter total bill amount",
hintStyle: const TextStyle(fontSize: 13, color:textLightBlack ,fontWeight: FontWeight.w700),
suffixIcon: const Icon(Icons.attach_money,color: textBlack,),
filled: true,
fillColor: containerColor,
border: OutlineInputBorder(
borderSide: BorderSide(width: 0 ,color:Colors.transparent),
borderRadius: BorderRadius.circular(5),
),
enabledBorder: OutlineInputBorder(
borderSide: BorderSide(width: 0 ,color:Colors.transparent),
borderRadius: BorderRadius.circular(5),
),
focusedBorder: OutlineInputBorder(
borderSide: BorderSide(width: 0 ,color:Colors.transparent),
borderRadius: BorderRadius.circular(5),
),

) ,

onFieldSubmitted: (value){
if( value.isEmpty)
{
totalBillController.text="0.00";
}
totalBillController.text=value.toString();
setState(() {});
},

)

 */