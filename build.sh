echo "Starting build for project"
echo "Dir: $PWD"

DIR=$PWD

msbuild src/SoilMoistureSensorCalibratedSerial.Tests.Live.sln /p:Configuration=Release
