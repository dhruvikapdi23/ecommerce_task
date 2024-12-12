import 'package:ecommerce_task/config/app_config.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class AppHelper {

  static init()async{
    WidgetsFlutterBinding.ensureInitialized();

    await dotenv.load(fileName: ".env");


  }
}
