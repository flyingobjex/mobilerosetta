#!/usr/bin/env bash

cp ../../../javascript/MobileRosetta/src/*.js ../code-bdd/
cp ../../../javascript/MobileRosetta/test/*.js ../code-bdd/

cp ../../../ios/MobileRosetta/MobileRosetta/src/*.swift ../code-bdd/
cp ../../../ios/MobileRosetta/MobileRosettaTests/*.swift ../code-bdd/

cp ../../../android/MobileRosetta/app/src/main/java/org/mobilerosetta/mobilerosetta/*.kt ../code-bdd
cp ../../../android/MobileRosetta/app/src/test/java/org/mobilerosetta/mobilerosetta/*.kt ../code-bdd

cd ../code-bdd
sed -i  "" -e 's/</\&lt;/g' *

yarn build

#sed -i "" -e 's/&lt;/\&lt;/g' ./code-bdd/RxObserverExample.kt
#cd ../code-bdd
ls
#sed -i  "" -e 's/</\&lt;/g' *
