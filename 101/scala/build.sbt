lazy val root = (project in file("."))
  .settings(
    name := "Code Samples 101",
    scalaVersion := "2.12.6"
  )

libraryDependencies += "org.scalactic" %% "scalactic" % "3.0.5"
libraryDependencies += "org.scalatest" %% "scalatest" % "3.0.5" % "test"

resolvers += "Artima Maven Repository" at "http://repo.artima.com/releases"

addSbtPlugin("com.artima.supersafe" % "sbtplugin" % "1.1.3")
