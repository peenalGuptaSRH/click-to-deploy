# Copyright 2019 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# comment added to check changes reflect to gcp

FROM marketplace.gcr.io/google/debian11

ENV DOCKER_TOOLS_TAG v1.0.0

RUN set -eux \
    && apt-get update \
    && apt-get install wget -y


RUN set -eux \
    && wget https://github.com/GoogleCloudPlatform/click-to-deploy/releases/download/${DOCKER_TOOLS_TAG}/cloudbuild -O /bin/cloudbuild \
    && wget https://github.com/GoogleCloudPlatform/click-to-deploy/releases/download/${DOCKER_TOOLS_TAG}/dockerfiles -O /bin/dockerfiles \
    && chmod +x /bin/cloudbuild \
    && chmod +x /bin/dockerfiles
