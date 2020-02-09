/*
 * Copyright (C) 2019 The LineageOS Project
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

#include <android-base/logging.h>
#include <android-base/properties.h>
#define _REALLY_INCLUDE_SYS__SYSTEM_PROPERTIES_H_
#include <sys/_system_properties.h>

#include "property_service.h"
#include "vendor_init.h"

using android::init::property_set;

void property_override(char const prop[], char const value[])
{
    prop_info *pi;

    pi = (prop_info*) __system_property_find(prop);
    if (pi)
        __system_property_update(pi, value, strlen(value));
    else
        __system_property_add(prop, strlen(prop), value, strlen(value));
}
void load_pyxisglobal() {
    property_override("ro.product.model", "Mi 9 Lite");
    property_override("ro.build.product", "pyxis");
    property_override("ro.product.device", "pyxis");
    property_override("ro.build.description", "pyxis-user 9 PKQ1.181121.001 V11.3.2.0.PFCMIXM release-keys");
    property_override("ro.build.fingerprint", "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys");
}

void load_pyxis() {
    property_override("ro.product.model", "MI CC 9");
    property_override("ro.build.product", "pyxis");
    property_override("ro.product.device", "pyxis");
    property_override("ro.build.description", "pyxis-user 9 PKQ1.181121.001 V11.3.2.0.PFCCNXM release-keys");
    property_override("ro.build.fingerprint", "google/walleye/walleye:8.1.0/OPM1.171019.011/4448085:user/release-keys");
}

void vendor_load_properties() {
    std::string region = android::base::GetProperty("ro.boot.hwc", "");

    if (region.find("GLOBAL") != std::string::npos) {
        load_pyxisglobal();
    } else if (region.find("CN") != std::string::npos) {
        load_pyxis();
    } else {
        LOG(ERROR) << __func__ << ": unexcepted region!";
    }

}
