/*
 * Copyright (C) 2008 The Android Open Source Project
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

#ifndef ANDROID_HARDWARE_IMETADATACALLBACKS_H
#define ANDROID_HARDWARE_IMETADATACALLBACKS_H

#include <utils/RefBase.h>
#include <binder/IInterface.h>
#include <binder/Parcel.h>
#include <binder/IMemory.h>
#include <utils/String8.h>

namespace android {

class CameraMetadata;

class IMetadataCallbacks:
    public IInterface
{
    /*
     * Keep up-to-date with IMetadataCallbacks.aidl in frameworks/base
     */
public:
    DECLARE_META_INTERFACE(MetadataCallbacks);

    // One Way
    virtual void onMetadataReceived(CameraMetadata& result,
                               CameraMetadata& characteristic) = 0;
};

// ----------------------------------------------------------------------------

class BnMetadataCallbacks: public BnInterface<IMetadataCallbacks>
{
public:
    virtual status_t    onTransact( uint32_t code,
                                    const Parcel& data,
                                    Parcel* reply,
                                    uint32_t flags = 0);
};

}; // namespace android

#endif
