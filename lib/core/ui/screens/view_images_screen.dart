// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:photo_view/photo_view.dart';
//
// import '../../../features/moment/domain/entity/moment_entity.dart';
//
// class ImageListScreen extends StatefulWidget {
//   final List<ImagesEntity> images;
//
//   ImageListScreen({required this.images});
//
//   @override
//   _ImageListScreenState createState() => _ImageListScreenState();
// }
//
// class _ImageListScreenState extends State<ImageListScreen> {
//   List<String> imageList = [
//     "image1.jpg",
//     "image2.jpg",
//     "image3.jpg",
//     "image4.jpg",
//     // Add more image paths here
//   ];
//
//   int currentIndex = 0;
//   double zoom = 1.0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//         child: Stack(
//           children: [
//             Expanded(
//               child: PageView.builder(
//                 itemCount: widget.images.length,
//                 onPageChanged: (index) {
//                   setState(() {
//                     currentIndex = index;
//                   });
//                 },
//                 itemBuilder: (context, index) {
//                   return PhotoView.customChild(
//                     minScale: 1.0,
//                     maxScale: 3.0,
//                     scaleStateController: PhotoViewScaleStateController(),
//                     child: CachedNetworkImage(
//                       imageUrl: isValidURL(widget.images[index].imageUrl!)
//                           ? widget.images[index].imageUrl!
//                           : "",
//                       placeholder: (context, url) => const SizedBox(),
//                       errorWidget: (context, url, error) =>
//                           const Icon(Icons.error),
//                       fit: BoxFit.contain,
//                     ),
//                   );
//                 },
//               ),
//             ),
//             Align(
//               alignment: AlignmentDirectional.topEnd,
//               child: Container(
//                 margin: const EdgeInsets.all(8.0),
//                 child: CircleAvatar(
//                   backgroundColor: Colors.white,
//                   child: IconButton(
//                     icon: const Icon(Icons.cancel),
//                     color: Colors.black,
//                     onPressed: () {
//                       Navigator.of(context).pop();
//                     },
//                   ),
//                 ),
//               ),
//             ),

//da
//             Positioned(
//               bottom: 20,
//               child: Container(
//                 padding: const EdgeInsets.all(16.0),
//                 alignment: Alignment.center,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: List.generate(
//                     widget.images.length,
//                     (index) {
//                       return Container(
//                         margin: const EdgeInsets.symmetric(horizontal: 5.0),
//                         width: 10.0,
//                         height: 10.0,
//                         decoration: BoxDecoration(
//                           color: currentIndex == index
//                               ? Colors.white
//                               : Colors.grey,
//                           shape: BoxShape.circle,
//                         ),
//                       );
//                     },
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
//
//   bool isValidURL(String urlString) {
//     try {
//       final uri = Uri.parse(urlString);
//       // Check if the scheme is http or https (or other schemes you want to allow)
//       return (uri.scheme == 'http' || uri.scheme == 'https');
//     } catch (e) {
//       return false;
//     }
//   }
// }
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';
import 'package:starter_application/core/common/app_colors.dart';
import 'package:starter_application/core/navigation/nav.dart';

import '../../../features/moment/domain/entity/moment_entity.dart';

class ImageListScreen extends StatefulWidget {
  final List<ImagesEntity> images;
  int currentIndex;

  ImageListScreen({required this.images, required this.currentIndex});

  @override
  _ImageListScreenState createState() => _ImageListScreenState();
}

class _ImageListScreenState extends State<ImageListScreen> {
  PageController _pageController = PageController();
  int currentPageIndex = 0;
  List<ImagesEntity> modifiedImages = [];

  @override
  void initState() {
    modifiedImages = List.from(widget.images);
    ImagesEntity image = modifiedImages[widget.currentIndex];
    modifiedImages.removeAt(widget.currentIndex);
    modifiedImages.insert(0, image);

    super.initState();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WillPopScope(
        onWillPop: () => Future.value(false),
        child: Scaffold(
          body: Container(
            height: 1.sh,
            width: 1.sw,
            child: Stack(
              children: [
                PhotoViewGallery.builder(
                  itemCount:  modifiedImages.length,
                  builder: (context, index) {
                    return PhotoViewGalleryPageOptions(
                      imageProvider: CachedNetworkImageProvider(
                        modifiedImages[currentPageIndex].imageUrl!,
                        errorListener: (p0) {},
                      ),
                      minScale: PhotoViewComputedScale.contained,
                      maxScale: PhotoViewComputedScale.covered * 2,
                      onTapUp: (context, details, controllerValue) {
                        // Nav.pop();
                      },
                      onTapDown: (context, details, controllerValue) {
                        // Nav.pop();
                      },
                    );
                  },
                  scrollPhysics: const BouncingScrollPhysics(),
                  backgroundDecoration: const BoxDecoration(
                    color: Colors.black,
                  ),
                  pageController: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      currentPageIndex = index;
                    });
                  },
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: buildCircleIndicator(),
                ),
                Align(
                  alignment: AlignmentDirectional.topEnd,
                  child: Container(
                    margin: const EdgeInsets.all(8.0),
                    child: CircleAvatar(
                      backgroundColor: Colors.white,
                      child: IconButton(
                        icon: const Icon(Icons.cancel),
                        color: AppColors.black,
                        onPressed: () {
                          Nav.pop();
                          Nav.pop();
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildCircleIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        modifiedImages.length,
        (index) => Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            width: 8,
            height: 8,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: currentPageIndex == index
                  ? Colors.white
                  : AppColors.mansourDarkOrange,
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }
}
