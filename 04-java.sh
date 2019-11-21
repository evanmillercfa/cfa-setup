#!/usr/bin/env bash

########################################
# Install java development environment #
########################################

#install java 8 and maven
brew tap AdoptOpenJDK/openjdk
brew cask install adoptopenjdk8
brew install maven
mkdir -p ~/.m2
cat > ~/.m2/settings.xml <<EOL
<?xml version="1.0" encoding="UTF-8"?>
<settings xsi:schemaLocation="http://maven.apache.org/SETTINGS/1.1.0 http://maven.apache.org/xsd/settings-1.1.0.xsd" xmlns="http://maven.apache.org/SETTINGS/1.1.0"
xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">

<localRepository>/Applications/development/UTILITIES/M2_REPO</localRepository>

<servers>
<server>
  <id>cfa-release</id>
</server>
<server>
  <id>cfa-snapshot</id>
</server>
</servers>

<mirrors>
 <mirror>
   <!--This sends everything else to /public -->
   <id>cfa-release</id>
   <mirrorOf>*</mirrorOf>
   <url>https://nexus3.ittools.cfahome.com/repository/maven-public</url>
 </mirror>
</mirrors>
<profiles>
 <profile>
   <id>cfa-profile</id>
   <!--Enable snapshots for the built in central repo to direct -->
   <!--all requests to nexus via the mirror -->
   <repositories>
     <repository>
       <id>cfa-release</id>
       <url>https://nexus3.ittools.cfahome.com/repository/maven-releases</url>
       <releases><enabled>true</enabled></releases>
     </repository>
     <repository>
       <id>cfa-snapshot</id>
       <url>https://nexus3.ittools.cfahome.com/repository/maven-snapshots</url>
       <snapshots><enabled>true</enabled></snapshots>
     </repository>
   </repositories>
   <pluginRepositories>
     <pluginRepository>
       <id>central</id>
       <url>http://central</url>
       <releases><enabled>true</enabled></releases>
       <snapshots><enabled>true</enabled></snapshots>
     </pluginRepository>
   </pluginRepositories>
 </profile>
</profiles>

<activeProfiles>
 <!--make the profile active all the time -->
 <activeProfile>cfa-profile</activeProfile>
</activeProfiles>
</settings>
EOL
