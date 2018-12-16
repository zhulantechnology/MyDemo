/*
 * Copyright (C) 2014 The Android Open Source Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

package com.android.internal.telecom;

import android.telecom.VideoProfile;

 /**
  * Internal definition of a callback interface, used for an InCallUi to respond to video
  * telephony changes.
  *
  * @see android.telecom.InCallService.VideoCall.Listener
  *
  * {@hide}
  */
oneway interface IVideoCallback {
    void receiveSessionModifyRequest(in VideoProfile videoProfile);

    void receiveSessionModifyResponse(
            int status,
            in VideoProfile requestedProfile,
            in VideoProfile responseProfile);

    void handleCallSessionEvent(int event);

    void changePeerDimensions(int width, int height);

    /* M: ViLTE part start */
    /* Different from AOSP, additional parameter "rotation" is added. */
    void changePeerDimensionsWithAngle(int width, int height, int rotation);
    /* M: ViLTE part end */

    void changeCallDataUsage(long dataUsage);

    void changeCameraCapabilities(in VideoProfile.CameraCapabilities cameraCapabilities);

    void changeVideoQuality(int videoQuality);
}
