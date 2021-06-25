/*
 * Licensed under the Apache License, Version 2.0 (the 'License');
 * you may not use this file except in compliance with the License.
 * See the NOTICE file distributed with this work for additional information
 * regarding copyright ownership. You may obtain a copy of the License at
 *
 *  http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
#ifndef WORKLOAD_PARAGRAPH_APPLICATION_H_
#define WORKLOAD_PARAGRAPH_APPLICATION_H_

#include <string>

#include "event/Component.h"
#include "nlohmann/json.hpp"
#include "prim/prim.h"
#include "workload/Application.h"
#include "workload/Workload.h"

class MetadataHandler;

namespace ParaGraph {

class Application : public ::Application {
 public:
  Application(const std::string& _name, const Component* _parent, u32 _id,
              Workload* _workload, MetadataHandler* _metadataHandler,
              nlohmann::json _settings);
  ~Application();
  f64 percentComplete() const override;
  void start() override;
  void stop() override;
  void kill() override;

  void terminalComplete(u32 _id);
  void processEvent(void* _event, s32 _type) override;

 private:
  u32 maxPacketSize_;

  u32 remainingTerminals_;
};

}  // namespace ParaGraph

#endif  // WORKLOAD_PARAGRAPH_APPLICATION_H_