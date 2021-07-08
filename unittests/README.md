 # TAFFO Unit Tests

A set of unit tests based on the Google Test framework.

Following the same structure of the TAFFO pipeline, there is a test suite for each of the 5 LLVM passes and a suite for the utilities:

- [InitializerTest](#InitializerTest)
- [RangeAnalysisTest](#RangeAnalysisTest)
- [DataTypeAllocTest](#DataTypeAllocTest)
- [ConversionTest](#ConversionTest)
- [ErrorAnalysisTest](#ErrorAnalysisTest)
- [TaffoUtilsTest](#TaffoUtilsTest)

## Adding new tests

Let's say we have implemented a `NewPass` and we want to test its component(s): the directory structure will look something like this:

```
.
├── lib
│   ├── NewPass
│   |   ├── NewComponent.cpp
│   |   ├── NewComponent.h
│   |   └── CMakeLists.txt
|   └── CMakeLists.txt
|
├── test
│   └── unittests
│       ├── NewPass
│       |   ├── NewComponentTest.cpp
│       |   └── CMakeLists.txt
|       └── CMakeLists.txt
|
└── [...]
```

It is important to *expose* the header file, so that we can use its functions in the test file: to do so, we'll have to edit `lib/NewPass/CMakeLists.txt` 

```cmake
set(SELF NewPass)

add_llvm_library(${SELF} OBJECT BUILDTREE_ONLY
    NewComponent.cpp

    ADDITIONAL_HEADERS
    NewComponent.h
)

target_include_directories(obj.${SELF} PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})
set_property(TARGET obj.${SELF} PROPERTY POSITION_INDEPENDENT_CODE ON)
```

and add in `lib/CMakeLists.txt`
```cmake
add_subdirectory(NewPass)

add_llvm_library(Taffo MODULE
    $<TARGET_OBJECTS:obj.NewPass>

    [...]
)
```

The structure of the test file `test/unittests/NewPass/NewComponentTest.cpp` will look like the following:
```cpp
#include "llvm/Support/Debug.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Value.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Instructions.h"
#include "gtest/gtest.h"

#include "NewComponent.h"

namespace {
    using namespace llvm;

class NewComponentTest : public testing::Test {
protected:
    /* Attributes to build the testing environment for the components */
    LLVMContext Context;
    Constant *ConstantV;

    NewComponentTest() :
        ConstantV(ConstantInt::get(Type::getInt32Ty(Context), 0))
        {}

    /* Internal methods */
};

/* Actual tests */

TEST_F(NewComponentTest, MockTest) {
    ASSERT_TRUE(true);
}

}
```

To allow the test to be detected, we'll use the `taffo_add_unittest` function, so in `test/unittests/NewPass/CMakeLists.txt` we'll have:

```cmake
taffo_add_unittests(NewPassTests NewPassTests
    NewComponentTest.cpp
)
target_link_libraries(NewPassTests PRIVATE obj.NewPass)
```

## Running the tests

Once we created our test, we can compile and run the test suite with
```sh
$ cd /path/to/the/location/of/TAFFO
$ mkdir build
$ cd build
$ cmake ..
$ make NewPassTests
$ cd test/unittest/NewPass
$ ./NewPassTests
```


# Implemented tests

## InitializerTest

## RangeAnalysisTest

## DataTypeAllocTest

## ConversionTest

## ErrorAnalysisTest

## TaffoUtilsTest
