# Loading_dialog
1.Import
    import 'package:loading_dialog/loading_dialog.dart';
2. Decleare
    _loadingDialog = LoadingDialog(
         context,
         showLogs: true,
         isDismissible: false,
       );
       _loadingDialog.style(message: "Đang tải test....");
3. Use
    _loadingDialog.show();
    _loadingDialog.hide();


