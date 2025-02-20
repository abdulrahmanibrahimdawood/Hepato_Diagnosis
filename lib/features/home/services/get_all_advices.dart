import 'package:e_commerce/core/helper_functions/api.dart';
import 'package:e_commerce/features/checkout/data/models/advice_model.dart';

class AllAdviceServices {
  Future<List<AdviceModel>> getAllAdvices() async {
    List<dynamic> data = await Api().get(
      url:
          'https://b866-156-197-137-73.ngrok-free.app/project/advice/advice.php',
      token: null,
    );

    List<AdviceModel> productList = [];
    for (int i = 0; i < data.length; i++) {
      productList.add(
        AdviceModel.fromJson(data[i]),
      );
    }
    return productList;
  }
}
