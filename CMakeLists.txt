cmake_minimum_required(VERSION 3.10)
project(supersim)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED True)

include(FindPkgConfig)

# zlib
find_library(ZLIB_A NAMES libz.a PATHS ${CMAKE_INSTALL_RPATH})
if(ZLIB_A MATCHES "NOTFOUND")
  message(FATAL_ERROR "libz.a not found")
endif()
string(REPLACE lib/libz.a include/ ZLIB_INC ${ZLIB_A})
if(NOT EXISTS ${ZLIB_INC})
  message(FATAL_ERROR "zlib include dir doesn't exist")
endif()

# nlohmann_json
find_package(nlohmann_json REQUIRED)
get_target_property(
  NLOHMANN_JSON_INC
  nlohmann_json::nlohmann_json
  INTERFACE_INCLUDE_DIRECTORIES
)

# libprim
find_library(LIBPRIM_A NAMES libprim.a PATHS ${CMAKE_INSTALL_RPATH})
if(LIBPRIM_A MATCHES "NOTFOUND")
  message(FATAL_ERROR "libprim.a not found")
endif()
string(REPLACE lib/libprim.a include/ LIBPRIM_INC ${LIBPRIM_A})
if(NOT EXISTS ${LIBPRIM_INC})
  message(FATAL_ERROR "libprim include dir doesn't exist")
endif()

# libcolhash
find_library(LIBCOLHASH_A NAMES libcolhash.a PATHS ${CMAKE_INSTALL_RPATH})
if(LIBCOLHASH_A MATCHES "NOTFOUND")
  message(FATAL_ERROR "libcolhash.a not found")
endif()
string(REPLACE lib/libcolhash.a include/ LIBCOLHASH_INC ${LIBCOLHASH_A})
if(NOT EXISTS ${LIBCOLHASH_INC})
  message(FATAL_ERROR "libcolhash include dir doesn't exist")
endif()

# libfactory
find_library(LIBFACTORY_A NAMES libfactory.a PATHS ${CMAKE_INSTALL_RPATH})
if(LIBFACTORY_A MATCHES "NOTFOUND")
  message(FATAL_ERROR "libfactory.a not found")
endif()
string(REPLACE lib/libfactory.a include/ LIBFACTORY_INC ${LIBFACTORY_A})
if(NOT EXISTS ${LIBFACTORY_INC})
  message(FATAL_ERROR "libfactory include dir doesn't exist")
endif()

# librnd
find_library(LIBRND_A NAMES librnd.a PATHS ${CMAKE_INSTALL_RPATH})
if(LIBRND_A MATCHES "NOTFOUND")
  message(FATAL_ERROR "librnd.a not found")
endif()
string(REPLACE lib/librnd.a include/ LIBRND_INC ${LIBRND_A})
if(NOT EXISTS ${LIBRND_INC})
  message(FATAL_ERROR "librnd include dir doesn't exist")
endif()

# libmut
find_library(LIBMUT_A NAMES libmut.a PATHS ${CMAKE_INSTALL_RPATH})
if(LIBMUT_A MATCHES "NOTFOUND")
  message(FATAL_ERROR "libmut.a not found")
endif()
string(REPLACE lib/libmut.a include/ LIBMUT_INC ${LIBMUT_A})
if(NOT EXISTS ${LIBMUT_INC})
  message(FATAL_ERROR "libmut include dir doesn't exist")
endif()

# libbits
find_library(LIBBITS_A NAMES libbits.a PATHS ${CMAKE_INSTALL_RPATH})
if(LIBBITS_A MATCHES "NOTFOUND")
  message(FATAL_ERROR "libbits.a not found")
endif()
string(REPLACE lib/libbits.a include/ LIBBITS_INC ${LIBBITS_A})
if(NOT EXISTS ${LIBBITS_INC})
  message(FATAL_ERROR "libbits include dir doesn't exist")
endif()

# libstrop
find_library(LIBSTROP_A NAMES libstrop.a PATHS ${CMAKE_INSTALL_RPATH})
if(LIBSTROP_A MATCHES "NOTFOUND")
  message(FATAL_ERROR "libstrop.a not found")
endif()
string(REPLACE lib/libstrop.a include/ LIBSTROP_INC ${LIBSTROP_A})
if(NOT EXISTS ${LIBSTROP_INC})
  message(FATAL_ERROR "libstrop include dir doesn't exist")
endif()

# libfio
find_library(LIBFIO_A NAMES libfio.a PATHS ${CMAKE_INSTALL_RPATH})
if(LIBFIO_A MATCHES "NOTFOUND")
  message(FATAL_ERROR "libfio.a not found")
endif()
string(REPLACE lib/libfio.a include/ LIBFIO_INC ${LIBFIO_A})
if(NOT EXISTS ${LIBFIO_INC})
  message(FATAL_ERROR "libfio include dir doesn't exist")
endif()

# libsettings
find_library(LIBSETTINGS_A NAMES libsettings.a PATHS ${CMAKE_INSTALL_RPATH})
if(LIBSETTINGS_A MATCHES "NOTFOUND")
  message(FATAL_ERROR "libsettings.a not found")
endif()
string(REPLACE lib/libsettings.a include/ LIBSETTINGS_INC ${LIBSETTINGS_A})
if(NOT EXISTS ${LIBSETTINGS_INC})
  message(FATAL_ERROR "libsettings include dir doesn't exist")
endif()

# absl
find_package(absl REQUIRED)
get_target_property(
  ABSL_BASE_INC
  absl::base
  INTERFACE_INCLUDE_DIRECTORIES
  )
list(APPEND ABSL_LIBS
  absl::bad_any_cast_impl
  absl::bad_optional_access
  absl::bad_variant_access
  absl::base
  absl::city
  absl::civil_time
  absl::cord
  absl::debugging_internal
  absl::demangle_internal
  absl::examine_stack
  absl::exponential_biased
  absl::failure_signal_handler
  absl::flags_commandlineflag_internal
  absl::flags_commandlineflag
  absl::flags_config
  absl::flags_internal
  absl::flags_marshalling
  absl::flags_parse
  absl::flags_private_handle_accessor
  absl::flags_program_name
  absl::flags_reflection
  absl::flags
  absl::flags_usage_internal
  absl::flags_usage
  absl::graphcycles_internal
  absl::hash
  absl::hashtablez_sampler
  absl::int128
  absl::leak_check_disable
  absl::leak_check
  absl::log_severity
  absl::malloc_internal
  absl::periodic_sampler
  absl::random_distributions
  absl::random_internal_distribution_test_util
  absl::random_internal_platform
  absl::random_internal_pool_urbg
  absl::random_internal_randen_hwaes_impl
  absl::random_internal_randen_hwaes
  absl::random_internal_randen_slow
  absl::random_internal_randen
  absl::random_internal_seed_material
  absl::random_seed_gen_exception
  absl::random_seed_sequences
  absl::raw_hash_set
  absl::raw_logging_internal
  absl::scoped_set_env
  absl::spinlock_wait
  absl::stacktrace
  absl::statusor
  absl::status
  absl::strerror
  absl::str_format_internal
  absl::strings_internal
  absl::strings
  absl::symbolize
  absl::synchronization
  absl::throw_delegate
  absl::time
  absl::time_zone
  )  

# protobuf
find_package(Protobuf REQUIRED)
get_target_property(
  PROTOBUF_INC
  protobuf::libprotobuf
  INTERFACE_INCLUDE_DIRECTORIES
  )

# paragraph
find_library(PARAGRAPH_A NAMES libparagraph.a PATHS ${CMAKE_INSTALL_RPATH})
if(PARAGRAPH_A MATCHES "NOTFOUND")
  message(FATAL_ERROR "libparagraph.a not found")
endif()
string(REPLACE lib/libparagraph.a include/ PARAGRAPH_INC ${PARAGRAPH_A})
if(NOT EXISTS ${PARAGRAPH_INC})
  message(FATAL_ERROR "paragraph include dir doesn't exist")
endif()

add_executable(
  supersim
  ${PROJECT_SOURCE_DIR}/src/main.cc
  ${PROJECT_SOURCE_DIR}/src/workload/util.cc
  ${PROJECT_SOURCE_DIR}/src/workload/Terminal.cc
  ${PROJECT_SOURCE_DIR}/src/workload/Workload.cc
  ${PROJECT_SOURCE_DIR}/src/workload/Application.cc
  ${PROJECT_SOURCE_DIR}/src/workload/NullTerminal.cc
  ${PROJECT_SOURCE_DIR}/src/workload/MessageDistributor.cc
  ${PROJECT_SOURCE_DIR}/src/workload/RateMonitor.cc
  ${PROJECT_SOURCE_DIR}/src/workload/simplemem/Application.cc
  ${PROJECT_SOURCE_DIR}/src/workload/simplemem/ProcessorTerminal.cc
  ${PROJECT_SOURCE_DIR}/src/workload/simplemem/MemoryTerminal.cc
  ${PROJECT_SOURCE_DIR}/src/workload/simplemem/MemoryOp.cc
  ${PROJECT_SOURCE_DIR}/src/workload/blast/Application.cc
  ${PROJECT_SOURCE_DIR}/src/workload/blast/BlastTerminal.cc
  ${PROJECT_SOURCE_DIR}/src/workload/alltoall/AllToAllTerminal.cc
  ${PROJECT_SOURCE_DIR}/src/workload/alltoall/Application.cc
  ${PROJECT_SOURCE_DIR}/src/workload/stencil/StencilTerminal.cc
  ${PROJECT_SOURCE_DIR}/src/workload/stencil/Application.cc
  ${PROJECT_SOURCE_DIR}/src/workload/paragraph/Application.cc
  ${PROJECT_SOURCE_DIR}/src/workload/paragraph/GraphTerminal.cc
  ${PROJECT_SOURCE_DIR}/src/workload/stream/StreamTerminal.cc
  ${PROJECT_SOURCE_DIR}/src/workload/stream/Application.cc
  ${PROJECT_SOURCE_DIR}/src/workload/pulse/Application.cc
  ${PROJECT_SOURCE_DIR}/src/workload/pulse/PulseTerminal.cc
  ${PROJECT_SOURCE_DIR}/src/congestion/BufferOccupancy.cc
  ${PROJECT_SOURCE_DIR}/src/congestion/util.cc
  ${PROJECT_SOURCE_DIR}/src/congestion/NullSensor.cc
  ${PROJECT_SOURCE_DIR}/src/congestion/CongestionSensor.cc
  ${PROJECT_SOURCE_DIR}/src/event/Component.cc
  ${PROJECT_SOURCE_DIR}/src/event/Simulator.cc
  ${PROJECT_SOURCE_DIR}/src/event/VectorQueue.cc
  ${PROJECT_SOURCE_DIR}/src/stats/MessageLog.cc
  ${PROJECT_SOURCE_DIR}/src/stats/TrafficLog.cc
  ${PROJECT_SOURCE_DIR}/src/stats/ChannelLog.cc
  ${PROJECT_SOURCE_DIR}/src/stats/InfoLog.cc
  ${PROJECT_SOURCE_DIR}/src/stats/RateLog.cc
  ${PROJECT_SOURCE_DIR}/src/interface/Interface.cc
  ${PROJECT_SOURCE_DIR}/src/interface/standard/MessageReassembler.cc
  ${PROJECT_SOURCE_DIR}/src/interface/standard/Interface.cc
  ${PROJECT_SOURCE_DIR}/src/interface/standard/PacketReassembler.cc
  ${PROJECT_SOURCE_DIR}/src/interface/standard/OutputQueue.cc
  ${PROJECT_SOURCE_DIR}/src/interface/standard/Ejector.cc
  ${PROJECT_SOURCE_DIR}/src/util/DimensionIterator.cc
  ${PROJECT_SOURCE_DIR}/src/arbiter/ComparingArbiter.cc
  ${PROJECT_SOURCE_DIR}/src/arbiter/RandomArbiter.cc
  ${PROJECT_SOURCE_DIR}/src/arbiter/Arbiter.cc
  ${PROJECT_SOURCE_DIR}/src/arbiter/LruArbiter.cc
  ${PROJECT_SOURCE_DIR}/src/arbiter/DualStageClassArbiter.cc
  ${PROJECT_SOURCE_DIR}/src/arbiter/RandomPriorityArbiter.cc
  ${PROJECT_SOURCE_DIR}/src/arbiter/LslpArbiter.cc
  ${PROJECT_SOURCE_DIR}/src/allocator/CrSeparableAllocator.cc
  ${PROJECT_SOURCE_DIR}/src/allocator/RSeparableAllocator.cc
  ${PROJECT_SOURCE_DIR}/src/allocator/WavefrontAllocator.cc
  ${PROJECT_SOURCE_DIR}/src/allocator/Allocator.cc
  ${PROJECT_SOURCE_DIR}/src/allocator/RcSeparableAllocator.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/size/RandomMSD.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/size/ProbabilityMSD.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/size/ReadWriteMSD.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/size/MessageSizeDistribution.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/size/SingleMSD.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/BitReverseCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/LocalRandomRemoteAttackCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/UniformRandomCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/BitRotateCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/LoopbackCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/BitTransposeCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/MatrixCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/NeighborCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/RandomExchangeCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/DimRotateCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/DimBisectionStressCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/DimReverseCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/DimComplementReverseCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/ScanCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/UniformRandomQuadrantCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/RandomExchangeQuadrantCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/Swap2CTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/GroupAttackCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/TornadoCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/DimTransposeCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/BitComplementCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/RandomBlockOutCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/RandomExchangeNeighborCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/ContinuousTrafficPattern.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/UniformRandomBisectionCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/LocalRemoteRandomCTP.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/distribution/DistributionTrafficPattern.cc
  ${PROJECT_SOURCE_DIR}/src/traffic/distribution/RandomDTP.cc
  ${PROJECT_SOURCE_DIR}/src/architecture/util.cc
  ${PROJECT_SOURCE_DIR}/src/architecture/VcScheduler.cc
  ${PROJECT_SOURCE_DIR}/src/architecture/Crossbar.cc
  ${PROJECT_SOURCE_DIR}/src/architecture/FlitDistributor.cc
  ${PROJECT_SOURCE_DIR}/src/architecture/CreditWatcher.cc
  ${PROJECT_SOURCE_DIR}/src/architecture/CrossbarScheduler.cc
  ${PROJECT_SOURCE_DIR}/src/architecture/PortedDevice.cc
  ${PROJECT_SOURCE_DIR}/src/metadata/ZeroMetadataHandler.cc
  ${PROJECT_SOURCE_DIR}/src/metadata/MetadataHandler.cc
  ${PROJECT_SOURCE_DIR}/src/metadata/LocalTimestampMetadataHandler.cc
  ${PROJECT_SOURCE_DIR}/src/metadata/CreationTimestampMetadataHandler.cc
  ${PROJECT_SOURCE_DIR}/src/types/CreditSender.cc
  ${PROJECT_SOURCE_DIR}/src/types/Flit.cc
  ${PROJECT_SOURCE_DIR}/src/types/StatusReceiver.cc
  ${PROJECT_SOURCE_DIR}/src/types/Message.cc
  ${PROJECT_SOURCE_DIR}/src/types/Packet.cc
  ${PROJECT_SOURCE_DIR}/src/types/FlitReceiver.cc
  ${PROJECT_SOURCE_DIR}/src/types/Credit.cc
  ${PROJECT_SOURCE_DIR}/src/types/FlitSender.cc
  ${PROJECT_SOURCE_DIR}/src/types/MessageReceiver.cc
  ${PROJECT_SOURCE_DIR}/src/types/CreditReceiver.cc
  ${PROJECT_SOURCE_DIR}/src/types/MessageOwner.cc
  ${PROJECT_SOURCE_DIR}/src/routing/util.cc
  ${PROJECT_SOURCE_DIR}/src/routing/WeightedReduction.cc
  ${PROJECT_SOURCE_DIR}/src/routing/InjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/routing/Reduction.cc
  ${PROJECT_SOURCE_DIR}/src/routing/mode.cc
  ${PROJECT_SOURCE_DIR}/src/routing/RoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/routing/RegularNonMinimalWeightFunc.cc
  ${PROJECT_SOURCE_DIR}/src/routing/AllMinimalReduction.cc
  ${PROJECT_SOURCE_DIR}/src/routing/NonMinimalWeightFunc.cc
  ${PROJECT_SOURCE_DIR}/src/routing/LeastCongestedMinimalReduction.cc
  ${PROJECT_SOURCE_DIR}/src/router/Router.cc
  ${PROJECT_SOURCE_DIR}/src/router/inputqueued/Router.cc
  ${PROJECT_SOURCE_DIR}/src/router/inputqueued/OutputQueue.cc
  ${PROJECT_SOURCE_DIR}/src/router/inputqueued/InputQueue.cc
  ${PROJECT_SOURCE_DIR}/src/router/outputqueued/Router.cc
  ${PROJECT_SOURCE_DIR}/src/router/outputqueued/OutputQueue.cc
  ${PROJECT_SOURCE_DIR}/src/router/outputqueued/InputQueue.cc
  ${PROJECT_SOURCE_DIR}/src/router/outputqueued/Ejector.cc
  ${PROJECT_SOURCE_DIR}/src/router/inputoutputqueued/Router.cc
  ${PROJECT_SOURCE_DIR}/src/router/inputoutputqueued/OutputQueue.cc
  ${PROJECT_SOURCE_DIR}/src/router/inputoutputqueued/InputQueue.cc
  ${PROJECT_SOURCE_DIR}/src/router/inputoutputqueued/Ejector.cc
  ${PROJECT_SOURCE_DIR}/src/network/Network.cc
  ${PROJECT_SOURCE_DIR}/src/network/Channel.cc
  ${PROJECT_SOURCE_DIR}/src/network/cube/util.cc
  ${PROJECT_SOURCE_DIR}/src/network/common/injection.cc
  ${PROJECT_SOURCE_DIR}/src/network/interfaceonly/InjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/interfaceonly/CommonInjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/interfaceonly/Network.cc
  ${PROJECT_SOURCE_DIR}/src/network/singlerouter/InjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/singlerouter/DirectRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/singlerouter/CommonInjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/singlerouter/Network.cc
  ${PROJECT_SOURCE_DIR}/src/network/singlerouter/RoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/fattree/util.cc
  ${PROJECT_SOURCE_DIR}/src/network/fattree/InjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/fattree/CommonInjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/fattree/Network.cc
  ${PROJECT_SOURCE_DIR}/src/network/fattree/RoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/fattree/CommonAncestorRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/torus/ValiantsRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/torus/util.cc
  ${PROJECT_SOURCE_DIR}/src/network/torus/InjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/torus/DimOrderRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/torus/CommonInjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/torus/Network.cc
  ${PROJECT_SOURCE_DIR}/src/network/torus/RoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/mesh/ValiantsRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/mesh/util.cc
  ${PROJECT_SOURCE_DIR}/src/network/mesh/InjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/mesh/DimOrderRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/mesh/CommonInjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/mesh/Network.cc
  ${PROJECT_SOURCE_DIR}/src/network/mesh/RoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/SkippingDimensionsRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/ValiantsRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/util.cc
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/InjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/DimOrderRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/CommonInjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/Network.cc
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/RoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/MinRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/DalRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/LeastCongestedQueueRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/UgalRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/butterfly/util.cc
  ${PROJECT_SOURCE_DIR}/src/network/butterfly/InjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/butterfly/CommonInjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/butterfly/Network.cc
  ${PROJECT_SOURCE_DIR}/src/network/butterfly/DestTagRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/butterfly/RoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/parkinglot/InjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/parkinglot/CommonInjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/parkinglot/Network.cc
  ${PROJECT_SOURCE_DIR}/src/network/parkinglot/RoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/parkinglot/ExitLotRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/ValiantsRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/util.cc
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/InjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/CommonInjectionAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/MinimalRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/Network.cc
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/AdaptiveRoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/RoutingAlgorithm.cc
  ${PROJECT_SOURCE_DIR}/src/workload/Application.h
  ${PROJECT_SOURCE_DIR}/src/workload/Workload.h
  ${PROJECT_SOURCE_DIR}/src/workload/MessageDistributor.h
  ${PROJECT_SOURCE_DIR}/src/workload/NullTerminal.h
  ${PROJECT_SOURCE_DIR}/src/workload/util.h
  ${PROJECT_SOURCE_DIR}/src/workload/Terminal.h
  ${PROJECT_SOURCE_DIR}/src/workload/RateMonitor.h
  ${PROJECT_SOURCE_DIR}/src/workload/simplemem/Application.h
  ${PROJECT_SOURCE_DIR}/src/workload/simplemem/MemoryTerminal.h
  ${PROJECT_SOURCE_DIR}/src/workload/simplemem/MemoryOp.h
  ${PROJECT_SOURCE_DIR}/src/workload/simplemem/ProcessorTerminal.h
  ${PROJECT_SOURCE_DIR}/src/workload/blast/Application.h
  ${PROJECT_SOURCE_DIR}/src/workload/blast/BlastTerminal.h
  ${PROJECT_SOURCE_DIR}/src/workload/alltoall/Application.h
  ${PROJECT_SOURCE_DIR}/src/workload/alltoall/AllToAllTerminal.h
  ${PROJECT_SOURCE_DIR}/src/workload/stencil/Application.h
  ${PROJECT_SOURCE_DIR}/src/workload/stencil/StencilTerminal.h
  ${PROJECT_SOURCE_DIR}/src/workload/paragraph/Application.h
  ${PROJECT_SOURCE_DIR}/src/workload/paragraph/GraphTerminal.h
  ${PROJECT_SOURCE_DIR}/src/workload/stream/Application.h
  ${PROJECT_SOURCE_DIR}/src/workload/stream/StreamTerminal.h
  ${PROJECT_SOURCE_DIR}/src/workload/pulse/Application.h
  ${PROJECT_SOURCE_DIR}/src/workload/pulse/PulseTerminal.h
  ${PROJECT_SOURCE_DIR}/src/congestion/NullSensor.h
  ${PROJECT_SOURCE_DIR}/src/congestion/BufferOccupancy.h
  ${PROJECT_SOURCE_DIR}/src/congestion/util.h
  ${PROJECT_SOURCE_DIR}/src/congestion/CongestionSensor.h
  ${PROJECT_SOURCE_DIR}/src/event/VectorQueue.h
  ${PROJECT_SOURCE_DIR}/src/event/Component.h
  ${PROJECT_SOURCE_DIR}/src/event/Simulator.h
  ${PROJECT_SOURCE_DIR}/src/stats/MessageLog.h
  ${PROJECT_SOURCE_DIR}/src/stats/RateLog.h
  ${PROJECT_SOURCE_DIR}/src/stats/TrafficLog.h
  ${PROJECT_SOURCE_DIR}/src/stats/InfoLog.h
  ${PROJECT_SOURCE_DIR}/src/stats/ChannelLog.h
  ${PROJECT_SOURCE_DIR}/src/interface/Interface.h
  ${PROJECT_SOURCE_DIR}/src/interface/standard/PacketReassembler.h
  ${PROJECT_SOURCE_DIR}/src/interface/standard/Interface.h
  ${PROJECT_SOURCE_DIR}/src/interface/standard/Ejector.h
  ${PROJECT_SOURCE_DIR}/src/interface/standard/OutputQueue.h
  ${PROJECT_SOURCE_DIR}/src/interface/standard/MessageReassembler.h
  ${PROJECT_SOURCE_DIR}/src/util/DimensionIterator.h
  ${PROJECT_SOURCE_DIR}/src/util/DimensionalArray.h
  ${PROJECT_SOURCE_DIR}/src/arbiter/Arbiter.h
  ${PROJECT_SOURCE_DIR}/src/arbiter/LruArbiter.h
  ${PROJECT_SOURCE_DIR}/src/arbiter/LslpArbiter.h
  ${PROJECT_SOURCE_DIR}/src/arbiter/RandomArbiter.h
  ${PROJECT_SOURCE_DIR}/src/arbiter/ComparingArbiter.h
  ${PROJECT_SOURCE_DIR}/src/arbiter/DualStageClassArbiter.h
  ${PROJECT_SOURCE_DIR}/src/arbiter/RandomPriorityArbiter.h
  ${PROJECT_SOURCE_DIR}/src/allocator/RcSeparableAllocator.h
  ${PROJECT_SOURCE_DIR}/src/allocator/WavefrontAllocator.h
  ${PROJECT_SOURCE_DIR}/src/allocator/RSeparableAllocator.h
  ${PROJECT_SOURCE_DIR}/src/allocator/Allocator.h
  ${PROJECT_SOURCE_DIR}/src/allocator/CrSeparableAllocator.h
  ${PROJECT_SOURCE_DIR}/src/traffic/size/ReadWriteMSD.h
  ${PROJECT_SOURCE_DIR}/src/traffic/size/MessageSizeDistribution.h
  ${PROJECT_SOURCE_DIR}/src/traffic/size/RandomMSD.h
  ${PROJECT_SOURCE_DIR}/src/traffic/size/ProbabilityMSD.h
  ${PROJECT_SOURCE_DIR}/src/traffic/size/SingleMSD.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/UniformRandomQuadrantCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/UniformRandomBisectionCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/BitReverseCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/UniformRandomCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/RandomBlockOutCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/DimBisectionStressCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/LocalRandomRemoteAttackCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/NeighborCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/RandomExchangeCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/LoopbackCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/MatrixCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/BitTransposeCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/LocalRemoteRandomCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/DimReverseCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/Swap2CTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/BitRotateCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/RandomExchangeQuadrantCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/TornadoCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/BitComplementCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/DimComplementReverseCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/ScanCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/GroupAttackCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/RandomExchangeNeighborCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/ContinuousTrafficPattern.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/DimRotateCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/continuous/DimTransposeCTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/distribution/RandomDTP.h
  ${PROJECT_SOURCE_DIR}/src/traffic/distribution/DistributionTrafficPattern.h
  ${PROJECT_SOURCE_DIR}/src/architecture/CrossbarScheduler.h
  ${PROJECT_SOURCE_DIR}/src/architecture/util.h
  ${PROJECT_SOURCE_DIR}/src/architecture/FlitDistributor.h
  ${PROJECT_SOURCE_DIR}/src/architecture/VcScheduler.h
  ${PROJECT_SOURCE_DIR}/src/architecture/PortedDevice.h
  ${PROJECT_SOURCE_DIR}/src/architecture/CreditWatcher.h
  ${PROJECT_SOURCE_DIR}/src/architecture/Crossbar.h
  ${PROJECT_SOURCE_DIR}/src/metadata/LocalTimestampMetadataHandler.h
  ${PROJECT_SOURCE_DIR}/src/metadata/CreationTimestampMetadataHandler.h
  ${PROJECT_SOURCE_DIR}/src/metadata/MetadataHandler.h
  ${PROJECT_SOURCE_DIR}/src/metadata/ZeroMetadataHandler.h
  ${PROJECT_SOURCE_DIR}/src/types/CreditSender.h
  ${PROJECT_SOURCE_DIR}/src/types/Credit.h
  ${PROJECT_SOURCE_DIR}/src/types/FlitSender.h
  ${PROJECT_SOURCE_DIR}/src/types/MessageOwner.h
  ${PROJECT_SOURCE_DIR}/src/types/Packet.h
  ${PROJECT_SOURCE_DIR}/src/types/FlitReceiver.h
  ${PROJECT_SOURCE_DIR}/src/types/Message.h
  ${PROJECT_SOURCE_DIR}/src/types/StatusReceiver.h
  ${PROJECT_SOURCE_DIR}/src/types/Flit.h
  ${PROJECT_SOURCE_DIR}/src/types/MessageReceiver.h
  ${PROJECT_SOURCE_DIR}/src/types/CreditReceiver.h
  ${PROJECT_SOURCE_DIR}/src/routing/Reduction.h
  ${PROJECT_SOURCE_DIR}/src/routing/util.h
  ${PROJECT_SOURCE_DIR}/src/routing/mode.h
  ${PROJECT_SOURCE_DIR}/src/routing/InjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/routing/WeightedReduction.h
  ${PROJECT_SOURCE_DIR}/src/routing/LeastCongestedMinimalReduction.h
  ${PROJECT_SOURCE_DIR}/src/routing/AllMinimalReduction.h
  ${PROJECT_SOURCE_DIR}/src/routing/NonMinimalWeightFunc.h
  ${PROJECT_SOURCE_DIR}/src/routing/RoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/router/Router.h
  ${PROJECT_SOURCE_DIR}/src/router/inputqueued/Router.h
  ${PROJECT_SOURCE_DIR}/src/router/inputqueued/OutputQueue.h
  ${PROJECT_SOURCE_DIR}/src/router/inputqueued/InputQueue.h
  ${PROJECT_SOURCE_DIR}/src/router/outputqueued/Router.h
  ${PROJECT_SOURCE_DIR}/src/router/outputqueued/Ejector.h
  ${PROJECT_SOURCE_DIR}/src/router/outputqueued/OutputQueue.h
  ${PROJECT_SOURCE_DIR}/src/router/outputqueued/InputQueue.h
  ${PROJECT_SOURCE_DIR}/src/router/inputoutputqueued/Router.h
  ${PROJECT_SOURCE_DIR}/src/router/inputoutputqueued/Ejector.h
  ${PROJECT_SOURCE_DIR}/src/router/inputoutputqueued/OutputQueue.h
  ${PROJECT_SOURCE_DIR}/src/router/inputoutputqueued/InputQueue.h
  ${PROJECT_SOURCE_DIR}/src/network/Channel.h
  ${PROJECT_SOURCE_DIR}/src/network/Network.h
  ${PROJECT_SOURCE_DIR}/src/network/cube/util.h
  ${PROJECT_SOURCE_DIR}/src/network/common/injection.h
  ${PROJECT_SOURCE_DIR}/src/network/interfaceonly/CommonInjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/interfaceonly/InjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/interfaceonly/Network.h
  ${PROJECT_SOURCE_DIR}/src/network/singlerouter/CommonInjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/singlerouter/InjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/singlerouter/DirectRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/singlerouter/Network.h
  ${PROJECT_SOURCE_DIR}/src/network/singlerouter/RoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/fattree/CommonInjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/fattree/util.h
  ${PROJECT_SOURCE_DIR}/src/network/fattree/InjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/fattree/CommonAncestorRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/fattree/Network.h
  ${PROJECT_SOURCE_DIR}/src/network/fattree/RoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/torus/CommonInjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/torus/DimOrderRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/torus/util.h
  ${PROJECT_SOURCE_DIR}/src/network/torus/InjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/torus/ValiantsRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/torus/Network.h
  ${PROJECT_SOURCE_DIR}/src/network/torus/RoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/mesh/CommonInjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/mesh/DimOrderRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/mesh/util.h
  ${PROJECT_SOURCE_DIR}/src/network/mesh/InjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/mesh/ValiantsRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/mesh/Network.h
  ${PROJECT_SOURCE_DIR}/src/network/mesh/RoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/CommonInjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/DimOrderRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/DalRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/MinRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/UgalRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/util.h
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/SkippingDimensionsRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/InjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/ValiantsRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/LeastCongestedQueueRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/Network.h
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/RoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/butterfly/CommonInjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/butterfly/DestTagRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/butterfly/util.h
  ${PROJECT_SOURCE_DIR}/src/network/butterfly/InjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/butterfly/Network.h
  ${PROJECT_SOURCE_DIR}/src/network/butterfly/RoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/parkinglot/CommonInjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/parkinglot/InjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/parkinglot/ExitLotRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/parkinglot/Network.h
  ${PROJECT_SOURCE_DIR}/src/network/parkinglot/RoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/CommonInjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/AdaptiveRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/util.h
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/InjectionAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/MinimalRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/ValiantsRoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/Network.h
  ${PROJECT_SOURCE_DIR}/src/network/dragonfly/RoutingAlgorithm.h
  ${PROJECT_SOURCE_DIR}/src/util/DimensionalArray.tcc
  ${PROJECT_SOURCE_DIR}/src/network/hyperx/util.tcc
  )

target_include_directories(
  supersim
  PUBLIC
  ${PROJECT_SOURCE_DIR}/src
  ${ZLIB_INC}
  ${NLOHMANN_JSON_INC}
  ${PARAGRAPH_INC}
  ${PROTOBUF_INC}
  ${COM_GOOGLE_ABSL_INC}
  ${LIBPRIM_INC}
  ${LIBCOLHASH_INC}
  ${LIBFACTORY_INC}
  ${LIBRND_INC}
  ${LIBMUT_INC}
  ${LIBBITS_INC}
  ${LIBSTROP_INC}
  ${LIBFIO_INC}
  ${LIBSETTINGS_INC}
  )

target_link_libraries(
  supersim
  protobuf::libprotobuf
  "${ABSL_LIBS}"
  ${PARAGRAPH_A}
  ${ZLIB_A}
  ${LIBPRIM_A}
  ${LIBCOLHASH_A}
  ${LIBFACTORY_A}
  ${LIBRND_A}
  ${LIBMUT_A}
  ${LIBBITS_A}
  ${LIBSTROP_A}
  ${LIBFIO_A}
  ${LIBSETTINGS_A}
  ${LIBFIO_A}
  ${LIBSTROP_A}
  ${LIBBITS_A}
  ${LIBMUT_A}
  ${LIBRND_A}
  ${LIBFACTORY_A}
  ${LIBCOLHASH_A}
  ${LIBPRIM_A}
  ${ZLIB_A}
  ${PARAGRAPH_A}
  "${ABSL_LIBS}"
  protobuf::libprotobuf
  )

include(GNUInstallDirs)

install(
  TARGETS
  supersim
  )

