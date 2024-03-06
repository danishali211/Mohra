import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:starter_application/core/navigation/nav.dart';
import 'package:starter_application/core/params/screen_params/live_location_screen_params.dart';
import 'package:starter_application/features/messages/domain/entity/messaging_entity.dart';
import 'package:starter_application/features/messages/presentation/screen/live_location_screen.dart';

class LiveLocationMessageWidget extends StatelessWidget {
  final MessagingLiveLocationMessageEntity messagingLiveLocationEntity;
  const LiveLocationMessageWidget(
      {Key? key, required this.messagingLiveLocationEntity})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: BoxConstraints(maxWidth: 0.9.sw, maxHeight: 0.9.sw),
        child: InkWell(
            onTap: () {
              Nav.to(LiveLocationScreen.routeName,arguments:  LiveLocationScreenParams(id: messagingLiveLocationEntity.senderId));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                        target: LatLng(messagingLiveLocationEntity.lat,
                            messagingLiveLocationEntity.lng),
                        zoom: 15),
                    scrollGesturesEnabled: false,
                    rotateGesturesEnabled: false,
                    tiltGesturesEnabled: false,
                    zoomGesturesEnabled: false,
                    mapToolbarEnabled: false,
                    zoomControlsEnabled: false,
                    markers: [
                      Marker(
                          markerId: const MarkerId('1'),
                          position: LatLng(messagingLiveLocationEntity.lat,
                              messagingLiveLocationEntity.lng))
                    ].toSet(),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ), /*
                Text(messagingLocationEntity.info)*/
              ],
            )));
  }
}
