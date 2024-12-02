import 'package:figma_creation_task/core/constant/string.dart';
import 'package:figma_creation_task/core/models/all_services.dart';
import 'package:figma_creation_task/core/other/Base_view_model.dart';

class AllServicesViewModel extends BaseViewModel {
  List<AllServiceModel> listallServices = [
    AllServiceModel(
      imgUrl: '$staticAssets/nails1.png',
      tittle: 'Nails',
    ),
    AllServiceModel(imgUrl: '$staticAssets/hairs2.png', tittle: 'Hairs'),
    AllServiceModel(imgUrl: '$staticAssets/facial3.png', tittle: 'Facial'),
    AllServiceModel(imgUrl: '$staticAssets/massage4.png', tittle: 'Massage'),
    AllServiceModel(imgUrl: '$staticAssets/waxing5.png', tittle: 'Waxings'),
    AllServiceModel(
        imgUrl: '$staticAssets/threading6.png', tittle: 'Threading'),
    AllServiceModel(
        imgUrl: '$staticAssets/nails1.png', tittle: 'UltraLucious\n    7D hfu'),
    AllServiceModel(imgUrl: '$staticAssets/nails1.png', tittle: 'Nails'),
    AllServiceModel(imgUrl: '$staticAssets/nails1.png', tittle: 'Nails'),
    AllServiceModel(imgUrl: '$staticAssets/nails1.png', tittle: 'Nails'),
    AllServiceModel(imgUrl: '$staticAssets/nails1.png', tittle: 'Nails'),
    AllServiceModel(imgUrl: '$staticAssets/nails1.png', tittle: 'Nails'),
    AllServiceModel(imgUrl: '$staticAssets/nails1.png', tittle: 'Nails'),
  ];
}
