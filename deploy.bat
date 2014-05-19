set v=1.8.0.apt

call mvn install:install-file -Dfile=aj-build/dist/tools/lib/aspectjtools.jar -DgroupId=org.aspectj  -DartifactId=aspectjtools -Dversion=%v% -Dpackaging=jar
call mvn install:install-file -Dfile=aj-build/dist/tools/lib/aspectjrt.jar -DgroupId=org.aspectj  -DartifactId=aspectjrt -Dversion=%v% -Dpackaging=jar