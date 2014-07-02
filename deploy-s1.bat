set v=1.8.0.apt

echo -----------------------------------------------
echo --- START LOCAL DEPLOY OF VERSION %v% ---
echo -----------------------------------------------

::call mvn install:install-file -Dfile=aj-build/dist/tools/lib/aspectjtools.jar -DgroupId=org.aspectj  -DartifactId=aspectjtools -Dversion=%v% -Dpackaging=jar
::call mvn install:install-file -Dfile=aj-build/dist/tools/lib/aspectjrt.jar -DgroupId=org.aspectj  -DartifactId=aspectjrt -Dversion=%v% -Dpackaging=jar

call mvn deploy:deploy-file -Durl=http://s1-artifactory.mail.msk/artifactory/s1-local -DrepositoryId=s1-local -Dfile=aj-build/dist/tools/lib/aspectjtools.jar -DgroupId=org.aspectj -DartifactId=aspectjtools -Dversion=%v% -Dpackaging=jar
call mvn deploy:deploy-file -Durl=http://s1-artifactory.mail.msk/artifactory/s1-local -DrepositoryId=s1-local -Dfile=aj-build/dist/tools/lib/aspectjrt.jar -DgroupId=org.aspectj  -DartifactId=aspectjrt -Dversion=%v% -Dpackaging=jar