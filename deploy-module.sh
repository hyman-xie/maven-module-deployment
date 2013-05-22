currentPath=`dirname $0`
cd `dirname $0`/$1 
pwd

echo "install maven module"
mvn install

arr=$(echo $1 | tr "/" "\n")
for x in $arr
do
  modulejarname=$x
done 
module_jar_name="$modulejarname-$2-SNAPSHOT.jar"
echo "copy $module_jar_name to Tomcat "
cp target/$module_jar_name $currentPath/$3
echo "done"

