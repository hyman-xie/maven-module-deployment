set currentPath=%CD%
cd %1  
call mvn install  
cd target
copy *-SNAPSHOT.jar %currentPath%\%2
cd %currentPath%  