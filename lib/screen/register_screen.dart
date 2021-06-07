import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  String _email = '';
  String _password = '';
  String _user = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _logoWidget(),
              _formWidget(),
              _buttonWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _logoWidget() {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(top: 100, bottom: 20),
          child: Image.asset(
            'images/logo.png',
            width: 100,
            height: 100,
          ),
        ),
        Text(
          'Store Geming',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        )
      ],
    );
  }

  Widget _nameWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 70.0, 20, 0.0),
      child: TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          hintText: 'Enter Name',
          icon: Icon(
            Icons.person,
            color: Colors.black,
          ),
        ),
        onChanged: (value) {
          setState(() {
            _user = value;
          });
        },
      ),
    );
  }

  Widget _emailWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10.0, 20, 0.0),
      child: TextFormField(
        maxLines: 1,
        keyboardType: TextInputType.emailAddress,
        autofocus: false,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          hintText: 'Enter Email',
          icon: Icon(
            Icons.mail,
            color: Colors.black,
          ),
        ),
        onChanged: (value) {
          setState(() {
            _email = value;
          });
        },
      ),
    );
  }

  Widget _passwordWidget() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 10.0, 20, 0.0),
      child: TextFormField(
        maxLines: 1,
        autofocus: false,
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black, width: 1.0),
            borderRadius: BorderRadius.all(Radius.circular(10)),
          ),
          hintText: 'Enter Password',
          icon: Icon(
            Icons.lock,
            color: Colors.black,
          ),
        ),
        onChanged: (value) {
          setState(() {
            _password = value;
          });
        },
      ),
    );
  }

  Widget _formWidget() {
    return Column(
      children: [
        _nameWidget(),
        _emailWidget(),
        _passwordWidget(),
      ],
    );
  }

  Widget _buttonWidget() {
    return Padding(
      padding: EdgeInsets.fromLTRB(0.0, 45.0, 0.0, 0.0),
      child: ConstrainedBox(
        constraints: BoxConstraints.tightFor(
          width: MediaQuery.of(context).size.width * 0.80,
          height: 45,
        ),
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.black),
          ),
          child: Text(
            'Register',
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
          onPressed: () {
            doLogin();
          },
        ),
      ),
    );
  }

  void doLogin() {
    if (_email != '' && _password != '' && _user != '') {
      Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Please complete the data !'),
        ),
      );
    }
  }
}
