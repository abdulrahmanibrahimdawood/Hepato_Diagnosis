import 'package:e_commerce/core/helper_functions/api.dart';
import 'package:e_commerce/features/checkout/data/models/advice_model.dart';

class AllAdviceServices {
  Future<List<AdviceModel>> getAllAdvices() async {
    Map<String, dynamic> response = await Api().get(
      url:
          'https://0fd2-156-197-231-205.ngrok-free.app/project/advice/advice.php',
      token: null,
    );

    List<dynamic> data = response['data'];

    List<AdviceModel> adviceList =
        data.map((json) => AdviceModel.fromJson(json)).toList();

    return adviceList;
  }
}
