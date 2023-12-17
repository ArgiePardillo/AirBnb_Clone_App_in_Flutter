
import 'package:flutter/material.dart';
import 'package:pardillo_resort/directions/filter.dart';
import "package:flutter_date_pickers/flutter_date_pickers.dart" as dp;
import '../constants/constants.dart';
import '../flutter_counter.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

  final int _defaultValue=0;
  final int _defaultValuePerson=0;

  var _defaultValueNote=3.5;

  final RangeValues _priceRange=const RangeValues(25,180);

  var _rangePriceValeurs=const RangeValues(10,50000);

  var _selectedPeriod=dp.DatePeriod(
      DateTime.now().add(const Duration(days: 4)),
      DateTime.now().subtract(const Duration(days: 4)
      )
  );

  var _apartementSelected=true;
  var _resortSelected=true;
  var _cottageSelected=true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.only(top: 20,left: 10),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back,
                    color: Colors.black87,size: 23,
                  ),
                  onPressed: (){
                    Navigator.pop(context);
                  },),
              ),
              const   SizedBox(height: 30,),
              InkWell(
                child: const Text("Save",style: TextStyle(
                    fontSize: 16,fontWeight: FontWeight.w400
                ),
                ),
                onTap: (){
                  Navigator.pop(context);
                },
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Location".toUpperCase(),
                    style: const TextStyle(color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Material(
                  color: Colors.white,
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black87),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                          hintText: "Where are you going ?",
                          border: InputBorder.none,
                          hintStyle: const TextStyle(color: Colors.grey),
                          prefixIcon: Icon(Icons.room,
                            color: Constants.greenAirbnb,)
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Type".toUpperCase(),
                    style: const TextStyle(
                      color: Colors.grey,fontSize: 12,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: CheckboxListTile(
                    title: const Text("Appartement"),
                    value: _apartementSelected,
                    onChanged: (value){
                      setState(() {
                        _apartementSelected=value!;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: CheckboxListTile(
                    title: const Text("Cottage"),
                    value: _cottageSelected,
                    onChanged: (value){
                      setState(() {
                        _cottageSelected=value!;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: CheckboxListTile(
                    title: const Text("Resort"),
                    value: _resortSelected,
                    onChanged: (value){
                      setState(() {
                        _resortSelected=value!;
                      });
                    }),
              ),
              Padding(
                padding: const EdgeInsets.all(2),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Number of places".toUpperCase(),
                    style: const TextStyle(color: Colors.grey,
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  elevation: 5,
                  child: Container(
                    //margin: EdgeInsets.symmetric(vertical: 25),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,vertical: 2
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black87),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        const Text("Number of adults",
                          style: TextStyle(fontSize: 15),
                        ),
                        Counter(
                          minValue: 1,
                          maxValue: 5,
                          decimalPlaces: 0, // Adjust if needed
                          color: Constants.greenAirbnb,
                          initialValue: _defaultValueNote,
                          step: 1, // Adjust based on desired increment
                          textStyle: const TextStyle(letterSpacing: 1.0),
                          key: UniqueKey(),
                          onChanged: (num value1) {
                            setState(() {
                              _defaultValueNote = num as double; value1;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ), /** **/
              /** **/
              Padding(
                padding: const EdgeInsets.all(15),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  elevation: 5,
                  child: Container(
                    //  margin: EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 2
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black87),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Number of persons",
                          style: TextStyle(fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Counter(
                          minValue: 1,
                          maxValue: 5,
                          decimalPlaces: 0, // Adjust if needed
                          color: Constants.greenAirbnb,
                          initialValue: _defaultValueNote,
                          step: 1, // Adjust based on desired increment
                          textStyle: const TextStyle(letterSpacing: 1.0),
                          key: UniqueKey(),
                          onChanged: (num value1) {
                            setState(() {
                              _defaultValueNote = num as double; value1;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Rating".toUpperCase(),
                    style: const TextStyle(color: Colors.grey,fontSize: 12,
                    ),
                  ),
                ),
              ),
              /** **/
              Padding(
                padding: const EdgeInsets.all(15),
                child: Material(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                  elevation: 5,
                  child: Container(
                    // margin: EdgeInsets.symmetric(vertical: 25),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,vertical: 2),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black87),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children:[
                        const Text("Note",style: TextStyle(
                            fontSize: 15),
                        ),
                        Counter(
                          minValue: 1,
                          maxValue: 5,
                          decimalPlaces: 0, // Adjust if needed
                          color: Constants.greenAirbnb,
                          initialValue: _defaultValueNote,
                          step: 1, // Adjust based on desired increment
                          textStyle: const TextStyle(letterSpacing: 1.0),
                          key: UniqueKey(),
                          onChanged: (num value1) {
                            setState(() {
                              _defaultValueNote = num as double; value1;
                            });
                          },
                        )
                      ],
                    ),
                  ),
                ),
              ),
              /** **/
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Prices".toUpperCase(),
                    style: const TextStyle(color: Colors.grey,fontSize: 12,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Material(
                  color: Colors.white,
                  elevation: 5,
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    //   margin: EdgeInsets.symmetric(vertical: 10),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,vertical: 2
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.black87),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text("Price",style: TextStyle(
                            fontSize: 15),
                        ),
                        RangeSlider(
                          min: 0,
                          max: 50000,
                          activeColor: Constants.greenAirbnb,
                          inactiveColor: Constants.redAirbnb,
                          labels: RangeLabels(
                              "${_rangePriceValeurs.start.toString().split(".").first} pesos ",
                              "${_rangePriceValeurs.end.toString().split(".").first} pesos "
                          ),
                          values: _rangePriceValeurs,
                          divisions: 1000,
                          onChanged: (RangeValues range){
                            setState(() {
                              _rangePriceValeurs=range;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Choose the date of your stay".toUpperCase(),
                    style: const TextStyle(color: Colors.grey,fontSize: 12,
                    ),
                  ),
                ),
              ),
              dp.RangePicker(
                selectedPeriod: _selectedPeriod,
                onChanged: (datePeriod){
                  setState(() {
                    _selectedPeriod=datePeriod;
                  });

                },
                selectableDayPredicate: _isSelectable,
                datePickerStyles: styles,
                firstDate: DateTime.now().subtract(const Duration(days: 1)),
                lastDate: DateTime.now().add(const Duration(days:  365)),

              ),
              const   SizedBox(height: 40,),
              Padding(
                padding: const EdgeInsets.all(15),
                child: Material(
                  color: Colors.white,
                  elevation: 6,
                  borderRadius: BorderRadius.circular(20),
                  child: InkWell(
                    //  borderRadius: BorderRadius.circular(20),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Filter()),
                      );
                    },
                    splashColor: Colors.white,
                    hoverColor: Constants.greenAirbnb,
                    child: Container(
                      // margin: EdgeInsets.symmetric(vertical: 25),
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(color: Colors.black87),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Navigate to your second page here
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => const Filter()),
                              );
                            },
                            child: const Text("Filter"),
                          ),
                          const Icon(Icons.apps),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool _isSelectable(DateTime day) {
    List<DateTime> eventsDates = [

      DateTime(2020,09,12),
      DateTime.now().add(const Duration(days: 4)),
      DateTime.now().add(const Duration(days: 5)),
      DateTime.now().add(const Duration(days: 10))
    ];
    return !eventsDates.any((eventDate) {
      int diffDays = eventDate.difference(day).inDays;
      return (diffDays == 0);
    });
  }
  dp.DatePickerRangeStyles styles = dp.DatePickerRangeStyles(
    selectedPeriodLastDecoration: BoxDecoration(
        color: Constants.greenAirbnb,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(24.0),
            bottomRight: Radius.circular(24.0)
        )
    ),
    selectedPeriodStartDecoration: BoxDecoration(
      color: Constants.greenAirbnb,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(24.0),
          bottomLeft: Radius.circular(24.0)
      ),
    ),
    selectedPeriodMiddleDecoration: BoxDecoration(
        color: Constants.greenAirbnb, shape: BoxShape.rectangle),
    nextIcon: const Icon(Icons.arrow_right),
    prevIcon: const Icon(Icons.arrow_left),
    // dayHeaderStyleBuilder: _dayHeaderStyleBuilder
  );
}