
// Form Validation

import 'package:flutter/material.dart';

void main() => runApp(formApp());

class formApp extends StatefulWidget {
  formApp({Key key}) : super(key: key);
  @override
  _formAppState createState() => _formAppState();
}

class _formAppState extends State<formApp> {
//form key and autovalidate
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  bool _autoValidate = false;
  String _name;
  String _email;
  String _mobile;

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: new Text('Form Validation'),
        ),
        body: new SingleChildScrollView(
          child: new Container(
            margin: new EdgeInsets.all(15.0),
            child: new Form(
              key: _formKey,
              autovalidate: _autoValidate,
              child: FormUI(),
            ),
          ),
        ),
      ),
    );
  }

  Widget FormUI() {
    return new Column(
      children: <Widget>[
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Name'),
          keyboardType: TextInputType.text,
          validator: validateName,
          onSaved: (String val) {
            _name = val;
          },
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Phone'),
          keyboardType: TextInputType.phone,
          validator: validateMobile,
          onSaved: (String val) {
            _mobile = val;
          },
        ),
        new TextFormField(
          decoration: const InputDecoration(labelText: 'Email'),
          keyboardType: TextInputType.emailAddress,
          validator: validateEmail,
          onSaved: (String val) {
            _email = val;
          },
        ),
        new SizedBox(
          height: 10.0,
        ),
        new RaisedButton(
          // onPressed: _validateInputs,
          onPressed: _sendToServer,
          child: new Text('Validate'),
        )
      ],
    );
  }

  void _sendToServer() {
    if (_formKey.currentState.validate()) {
      // No any error in validation
      _formKey.currentState.save();
      print("Name $_name");
      print("Mobile $_mobile");
      print("Email $_email");
    } else {
      // validation error
      setState(() {
        _autoValidate = true;
      });
    }
  }
}

String validateName(String value) {
  String patttern = r'(^[a-zA-Z ]*$)';
  RegExp regExp = new RegExp(patttern);
  if (value.length == 0) {
    return "Name is Required";
  } else if (!regExp.hasMatch(value)) {
    return "Name must be a-z and A-Z";
  }
  return null;
}

String validateMobile(String value) {
  //Pakistan number is equals to 11 digits
  String patttern = r'(^[0-10]*$)';
  RegExp regExp = new RegExp(patttern);
  if (value.length == 0) {
    return "Mobile is Required";
  } else if (value.length != 10) {
    return "Mobile number must 11 digits";
  } else if (!regExp.hasMatch(value)) {
    return "Mobile Number must be digits";
  }
  return null;
}

String validateEmail(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (!regex.hasMatch(value))
    return 'Enter Valid Email';
  else
    return null;
}


