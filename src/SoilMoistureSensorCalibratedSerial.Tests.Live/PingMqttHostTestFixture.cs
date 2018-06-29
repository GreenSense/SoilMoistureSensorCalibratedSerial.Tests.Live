using System;
using NUnit.Framework;
using System.IO;
using System.Net.NetworkInformation;

namespace SoilMoistureSensorCalibratedSerial.Tests.Live
{
	[TestFixture]
	public class PingMqttHostTestFixture : BaseTestFixture
	{
		[Test]
		public void Test_PingMqttHost()
		{
			var host = GetSecurityValue("mqtt-host", "MQTT_HOST");

			var helper = new PingMqttHostTestHelper(host);

			helper.TestPingMqttHost();
		}
	}
}

