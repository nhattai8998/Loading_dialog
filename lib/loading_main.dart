import 'package:flutter/material.dart';
import 'package:loading_dialog/loading_custom.dart';

class LoadingDialogMain extends StatefulWidget {
  @override
  _LoadingDialogMainState createState() => _LoadingDialogMainState();
}

class _LoadingDialogMainState extends State<LoadingDialogMain> {
  LoadingDialog _loadingDialog;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _loadingDialog = LoadingDialog(
      context,
      showLogs: true,
      isDismissible: false,
    );
    _loadingDialog.style(message: "Đang tải");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FlatButton(
            onPressed: () async {
              _loadingDialog.show();
              var result = await Future.delayed(Duration(seconds: 5));
              _loadingDialog.hide();
            },
            child: Text("Display dialog box for 5s")),
      ),
    );
  }
}
