name := """api"""
organization := "ss"

version := "1.0-SNAPSHOT"

lazy val root = (project in file(".")).enablePlugins(PlayScala)

scalaVersion := "2.13.10"

libraryDependencies += filters
libraryDependencies += guice
libraryDependencies += "org.scalatestplus.play" %% "scalatestplus-play" % "5.0.0" % Test

val scalikeJDBCV = "4.0.0"
libraryDependencies ++= Seq(
  "org.scalikejdbc" %% "scalikejdbc" % scalikeJDBCV,
  "org.scalikejdbc" %% "scalikejdbc-config" % scalikeJDBCV,
  "org.scalikejdbc" %% "scalikejdbc-joda-time" % scalikeJDBCV,
  "org.scalikejdbc" %% "scalikejdbc-play-initializer" % "2.8.0-scalikejdbc-4.0",
  "org.scalikejdbc" %% "scalikejdbc-test" % scalikeJDBCV % Test,
  "mysql" % "mysql-connector-java" % "8.0.32"
)

dependencyOverrides += "org.scala-lang.modules" %% "scala-parser-combinators" % "2.1.0"
// DI Setting
routesGenerator := InjectedRoutesGenerator
