echo "Downloading and compiling cookjson"

git clone https://github.com/coconut2015/cookjson.git
cp /vagrant/diffs/cookjson.diff cookjson/
cd cookjson/
git apply cookjson.diff
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64/
mvn package -Dmaven.test.skip=true
cd -