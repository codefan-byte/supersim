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
#ifndef NETWORK_NETWORK_H_
#define NETWORK_NETWORK_H_

#include <string>
#include <tuple>
#include <unordered_map>
#include <vector>

#include "event/Component.h"
#include "interface/Interface.h"
#include "metadata/MetadataHandler.h"
#include "network/Channel.h"
#include "nlohmann/json.hpp"
#include "prim/prim.h"
#include "router/Router.h"
#include "routing/InjectionAlgorithm.h"
#include "routing/RoutingAlgorithm.h"
#include "stats/ChannelLog.h"
#include "stats/TrafficLog.h"

#define NETWORK_ARGS \
  const std::string&, const Component*, MetadataHandler*, nlohmann::json

class Network : public Component {
 public:
  Network(const std::string& _name, const Component* _parent,
          MetadataHandler* _metadataHandler, nlohmann::json _settings);
  virtual ~Network();

  // this is a network factory
  static Network* create(NETWORK_ARGS);

  // this is an injection algorithm factory definition
  virtual InjectionAlgorithm* createInjectionAlgorithm(
      u32 _inputPc, const std::string& _name, const Component* _parent,
      Interface* _interface) = 0;

  // this is a routing algorithm factory definition
  virtual RoutingAlgorithm* createRoutingAlgorithm(u32 _inputPort, u32 _inputVc,
                                                   const std::string& _name,
                                                   const Component* _parent,
                                                   Router* _router) = 0;

  virtual u32 numRouters() const = 0;
  virtual u32 numInterfaces() const = 0;
  virtual Router* getRouter(u32 _id) const = 0;
  virtual Interface* getInterface(u32 _id) const = 0;
  virtual void translateInterfaceIdToAddress(
      u32 _id, std::vector<u32>* _address) const = 0;
  virtual u32 translateInterfaceAddressToId(
      const std::vector<u32>* _address) const = 0;
  virtual void translateRouterIdToAddress(u32 _id,
                                          std::vector<u32>* _address) const = 0;
  virtual u32 translateRouterAddressToId(
      const std::vector<u32>* _address) const = 0;
  virtual u32 computeMinimalHops(
      const std::vector<u32>* _source,
      const std::vector<u32>* _destination) const = 0;
  MetadataHandler* metadataHandler() const;

  void startMonitoring();
  void endMonitoring();
  bool monitoring() const;

  struct PcVcInfo {
    u32 baseVc;
    u32 numVcs;
  };

  u32 numPcs() const;
  u32 numVcs() const;
  PcVcInfo pcVcs(u32 _pc) const;
  u32 vcToPc(u32 _vc) const;

  // this function logs traffic
  void logTraffic(const Component* _device, u32 _inputPort, u32 _inputVc,
                  u32 _outputPort, u32 _outputVc, u32 _flits);

 protected:
  // this is used by network implementations to create routing algorithms
  struct PcSettings {
    u32 baseVc;
    u32 numVcs;
    nlohmann::json injection;
    nlohmann::json routing;
  };

  virtual void collectChannels(std::vector<Channel*>* _channels) = 0;

  // this loads the routing algorithm info vector
  void loadProtocolClassInfo(nlohmann::json _settings);

  // this only works between load and clear calls
  const PcSettings& pcSettings(u32 _pc) const;

  // this clears the routingAlgorithmInfo_ vector
  void clearProtocolClassInfo();

  const u32 numVcs_;

 private:
  ChannelLog* channelLog_;
  TrafficLog* trafficLog_;
  MetadataHandler* metadataHandler_;
  bool monitoring_;

  std::vector<PcVcInfo> pcVcs_;
  std::unordered_map<u32, u32> vcToPc_;
  std::vector<PcSettings> pcSettings_;  // only valid during construction
};

#endif  // NETWORK_NETWORK_H_
