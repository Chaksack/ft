import 'package:fieldteller/pages/home_page.dart';
import 'package:fieldteller/widgets/float_actions_widget/floatform_form.dart';
import 'package:fieldteller/widgets/float_actions_widget/float_option.dart';
import 'package:flutter/material.dart';
import '/theme.dart';
import '/widgets/primary_button.dart';

class floatactionfromchild extends StatefulWidget {
  floatactionfromchild({Key? key}) : super(key: key);

  @override
  _floatactionfromchild createState() => _floatactionfromchild();
}

class _floatactionfromchild extends State<floatactionfromchild> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Float transfer from Child")),
      body: Padding(
        padding: kDefaultPadding,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 120,
              ),
              Text(
                'Welcome Back',
                style: titleText,
              ),

              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Text(
                    'Enter details',
                    style: subTitle,
                  ),
                  SizedBox(
                    width: 5,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
              FloatForm(),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  showAlertDialog();
                },
                child: Container(
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(20.0),
                    shadowColor: Colors.redAccent,
                    color: Colors.red,
                    elevation: 7.0,
                    child: Center(
                      child: Text('Transfer Float',
                          style: TextStyle(
                              color: Colors.white, fontFamily: 'Montserrat')),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              // Text(
              //   'Or log in with:',
              //   style: subTitle.copyWith(color: kBlackColor),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
              // LoginOption(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> showAlertDialog() {
    return showDialog(
        context: context,
        barrierDismissible: true,
        builder: (context) {
          return AlertDialog(
            title: Text('Transaction'),
            content: Text('Amount has been succesfully transfered'),
            actions: [
              TextButton(
                child: Text('ok'),
                onPressed: () {
                  Navigator.pop(context);
                },
              )
            ],
          );
        });
  }
}
