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
#include "traffic/continuous/DimTransposeCTP.h"

#include <cassert>

#include "bits/bits.h"
#include "gtest/gtest.h"
#include "nlohmann/json.hpp"
#include "prim/prim.h"
#include "test/TestSetup_TESTLIB.h"

TEST(DimTransposeCTP, no_enabled_dims) {
  TestSetup test(1, 1, 1, 1, 0xBAADF00D);
  u32 src, dst, numTerminals;
  nlohmann::json settings;
  DimTransposeCTP* tp;
  std::map<u32, u32> pairs;

  settings["dimensions"][0] = nlohmann::json(3);
  settings["dimensions"][1] = nlohmann::json(3);
  settings["dimensions"][2] = nlohmann::json(3);
  settings["concentration"] = nlohmann::json(4);
  settings["interface_ports"] = nlohmann::json(1);

  numTerminals = 4 * 3 * 3 * 3 * 1;
  pairs = {{0, 0},   {1, 3},   {2, 6},   {3, 1},   {4, 4},   {5, 7},   {6, 2},
           {7, 5},   {8, 8},   {9, 9},   {10, 12}, {11, 15}, {12, 10}, {13, 13},
           {14, 16}, {15, 11}, {16, 14}, {17, 17}, {18, 18}, {19, 21}, {20, 24},
           {21, 19}, {22, 22}, {23, 25}, {24, 20}, {25, 23}, {26, 26}};

  for (u32 iface = 0; iface < 4; ++iface) {
    for (const auto& p : pairs) {
      src = p.first * 4 + iface;
      dst = p.second * 4 + iface;
      tp = new DimTransposeCTP("TP", nullptr, numTerminals, src, settings);
      for (u32 idx = 0; idx < 100; ++idx) {
        u32 next = tp->nextDestination();
        ASSERT_LT(next, numTerminals);
        ASSERT_EQ(next, dst);
      }
      delete tp;
    }
  }
}

TEST(DimTransposeCTP, enabled_dims_0_1) {
  TestSetup test(1, 1, 1, 1, 0xBAADF00D);
  u32 src, dst, numTerminals;
  nlohmann::json settings;
  DimTransposeCTP* tp;
  std::map<u32, u32> pairs;

  settings["dimensions"][0] = nlohmann::json(3);
  settings["dimensions"][1] = nlohmann::json(3);
  settings["dimensions"][2] = nlohmann::json(3);
  settings["concentration"] = nlohmann::json(4);
  settings["interface_ports"] = nlohmann::json(1);
  settings["enabled_dimensions"][0] = true;
  settings["enabled_dimensions"][1] = true;
  settings["enabled_dimensions"][2] = false;

  numTerminals = 4 * 3 * 3 * 3 * 1;
  pairs = {{0, 0},   {1, 3},   {2, 6},   {3, 1},   {4, 4},   {5, 7},   {6, 2},
           {7, 5},   {8, 8},   {9, 9},   {10, 12}, {11, 15}, {12, 10}, {13, 13},
           {14, 16}, {15, 11}, {16, 14}, {17, 17}, {18, 18}, {19, 21}, {20, 24},
           {21, 19}, {22, 22}, {23, 25}, {24, 20}, {25, 23}, {26, 26}};

  for (u32 iface = 0; iface < 4; ++iface) {
    for (const auto& p : pairs) {
      src = p.first * 4 + iface;
      dst = p.second * 4 + iface;
      tp = new DimTransposeCTP("TP", nullptr, numTerminals, src, settings);
      for (u32 idx = 0; idx < 100; ++idx) {
        u32 next = tp->nextDestination();
        ASSERT_LT(next, numTerminals);
        ASSERT_EQ(next, dst);
      }
      delete tp;
    }
  }
}

TEST(DimTransposeCTP, enabled_dims_0_2) {
  TestSetup test(1, 1, 1, 1, 0xBAADF00D);
  u32 src, dst, numTerminals;
  nlohmann::json settings;
  DimTransposeCTP* tp;
  std::map<u32, u32> pairs;

  settings["dimensions"][0] = nlohmann::json(3);
  settings["dimensions"][1] = nlohmann::json(3);
  settings["dimensions"][2] = nlohmann::json(3);
  settings["concentration"] = nlohmann::json(4);
  settings["interface_ports"] = nlohmann::json(1);
  settings["enabled_dimensions"][0] = true;
  settings["enabled_dimensions"][1] = false;
  settings["enabled_dimensions"][2] = true;

  numTerminals = 4 * 3 * 3 * 3 * 1;
  pairs = {{0, 0},   {1, 9},   {2, 18},  {3, 3},   {4, 12},  {5, 21},  {6, 6},
           {7, 15},  {8, 24},  {9, 1},   {10, 10}, {11, 19}, {12, 4},  {13, 13},
           {14, 22}, {15, 7},  {16, 16}, {17, 25}, {18, 2},  {19, 11}, {20, 20},
           {21, 5},  {22, 14}, {23, 23}, {24, 8},  {25, 17}, {26, 26}};

  for (u32 iface = 0; iface < 4; ++iface) {
    for (const auto& p : pairs) {
      src = p.first * 4 + iface;
      dst = p.second * 4 + iface;
      tp = new DimTransposeCTP("TP", nullptr, numTerminals, src, settings);
      for (u32 idx = 0; idx < 100; ++idx) {
        u32 next = tp->nextDestination();
        ASSERT_LT(next, numTerminals);
        ASSERT_EQ(next, dst);
      }
      delete tp;
    }
  }
}
