name := """api"""
organization := "ss"

version := "1.0-SNAPSHOT"

lazy val root = (project in file(".")).enablePlugins(PlayScala)

scalaVersion := "2.13.10"

libraryDependencies += guice
libraryDependencies += "org.scalatestplus.play" %% "scalatestplus-play" % "5.0.0" % Test

lazy val dependencies =
  new {
    val scalikeJDBCV = "4.0.0"

    // ScalikeJDBC
    val scalikeJDBC = "org.scalikejdbc" %% "scalikejdbc" % scalikeJDBCV
    val scalikeJDBCConfig =
      "org.scalikejdbc" %% "scalikejdbc-config" % scalikeJDBCV
    val scalikeJDBCJodaTime =
      "org.scalikejdbc" %% "scalikejdbc-joda-time" % scalikeJDBCV
    val scalikeJDBCPlayInitializer =
      "org.scalikejdbc" %% "scalikejdbc-play-initializer" % "2.8.0-scalikejdbc-3.5"
    val scalikeJDBCTest =
      "org.scalikejdbc" %% "scalikejdbc-test" % scalikeJDBCV % Test
    val mysqlConnectorJava = "mysql" % "mysql-connector-java" % "8.0.32"
  }

lazy val baseDependencies = Seq(
  dependencies.mysqlConnectorJava,
  dependencies.scalikeJDBC,
  dependencies.scalikeJDBCConfig,
  dependencies.scalikeJDBCTest,
  dependencies.scalikeJDBCJodaTime
)

libraryDependencies ++= baseDependencies

dependencyOverrides += "org.scala-lang.modules" %% "scala-parser-combinators" % "2.1.0"