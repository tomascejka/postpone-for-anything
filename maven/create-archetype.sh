#!/bin/bash
#
#  Create maven archetype directory structure with pom.xml and archetype descriptor.xml
#  TODO [cejka]
#

name=$1
group=$2
archid=$3

#  CHECK INCOMING PARAMETERS
if [ -z "$name" ];
  echo "Project name cannot be null - it is FIRST parameter"
  exit 1
fi
if [ -z "$group" ];
  echo "GroupId cannot be null (can contains dots) - it is SECOND parameter"
  exit 1
fi
if [ -z "$archid" ];
  echo "ArtifactId cannot be null - it is THIRD parameter";
  exit 1
fi

mkdir $name

# ARCHETYPE
resources=$name/src/main/resources
mkdir -p $resources/META-INF/maven
mkdir -p $resources/archetype-resources

cat > pom.xml <<EOF
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>

  <groupId>cz.tomascejka.$group</groupId>
  <artifactId>$archid</artifactId>
  <version>1.0-SNAPSHOT</version>
  <packaging>jar</packaging>
  
  <properties>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    <project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>
  </properties>
</project>
EOF

cd $resources/META-INF/maven
cat > archetype-metadata.xml <<EOF
<archetype-descriptor name="spring-mvc-quickstart"
xmlns="http://maven.apache.org/plugins/maven-archetype-plugin/archetype-descriptor/1.0.0"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
xsi:schemaLocation="http://maven.apache.org/plugins/maven-archetype-plugin/archetype-descriptor/1.0.0 http://maven.apache.org/xsd/archetype-descriptor-1.0.0.xsd">
<fileSets>
<fileSet filtered="true" packaged="true">
<directory>src/main/java</directory>
<includes>
<include>**/*.java</include>
</includes>
</fileSet>
<fileSet filtered="true">
<directory>src/main/resources</directory>
</fileSet>
<fileSet filtered="false" encoding="UTF-8">
<directory>src/main/webapp</directory>
</fileSet>
<fileSet filtered="true" packaged="true">
<directory>src/test/java</directory>
<includes>
<include>**/*.java</include>
</includes>
</fileSet>
<fileSet filtered="true">
<directory>src/test/resources</directory>
</fileSet>
</fileSets>
</archetype-descriptor>
EOF

# ARCHETYPE RESOURCES
archetype=$resources/archetype-resources
mkdir -p $archetype/src/main/java
mkdir -p $archetype/src/main/resources
mkdir -p $archetype/src/test/java
mkdir -p $archetype/src/test/resources

cd $archetype
cat > pom.xml <<EOF
<project xmlns="http://maven.apache.org/POM/4.0.0" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
  <modelVersion>4.0.0</modelVersion>

  <groupId>${groupId}</groupId>
  <artifactId>${artifactId}</artifactId>
  <version>${version}</version>
  <packaging>jar</packaging>

  <name>$name</name>
  <url>http://www.myorganization.org</url>
  
  <properties>
    <project.build.sourceEncoding>UTF-8</project.build.sourceEncoding>
    <project.reporting.outputEncoding>UTF-8</project.reporting.outputEncoding>
  </properties>

  <dependencies>
    <dependency>
      <groupId>junit</groupId>
      <artifactId>junit</artifactId>
      <version>4.11</version>
      <scope>test</scope>
    </dependency>
  </dependencies>
</project>
EOF
