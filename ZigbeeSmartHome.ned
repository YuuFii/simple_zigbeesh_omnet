import inet.networklayer.configurator.ipv4.Ipv4NetworkConfigurator;
import inet.node.inet.SensorNode;
import inet.physicallayer.wireless.ieee802154.packetlevel.Ieee802154NarrowbandScalarRadioMedium;
import inet.visualizer.common.IntegratedMultiVisualizer;
import inet.environment.common.PhysicalEnvironment;

network ZigbeeSH
{
    parameters:
    	@display("bgb=50,50,,,0;bgi=showcases/floorplan,s");
    	@figure[title](type=label; pos=0,-1; anchor=sw; color=darkblue);
    	
    submodules:
        sensor1: SensorNode {
            @display("p=23,8;i=misc/sensor");
        }
        sensor2: SensorNode {
            @display("p=16,26;i=misc/sensor");
        }
        sensor3: SensorNode {
            @display("p=44,23;i=misc/sensor");
        }
        sensor4: SensorNode {
            @display("p=13,43;i=misc/sensor");
        }
        sensor5: SensorNode {
            @display("p=33,43;i=misc/sensor");
        }
        lamp1: SensorNode {
            @display("p=10,8;i=status/bulb");
        }
        lamp2: SensorNode {
            @display("p=10,36;i=status/bulb");
        }
        lamp3: SensorNode {
            @display("p=21,36;i=status/bulb");
        }
        lamp4: SensorNode {
            @display("p=23,18;i=status/bulb");
        }
        lamp5: SensorNode {
            @display("p=33,29;i=status/bulb");
        }
        lamp6: SensorNode {
            @display("p=46.48,32.16;i=status/bulb");
        }
        coordinator: SensorNode {
            @display("p=22.96,24.72;i=misc/sensorgateway");
        }
        configurator: Ipv4NetworkConfigurator {
            @display("p=35.28,2.32");
        }
        radioMedium: Ieee802154NarrowbandScalarRadioMedium {
            @display("p=41.6,2.24");
        }
        visualizer: IntegratedMultiVisualizer {
            @display("p=47.6,2.32");
        }
        physicalEnvironment: PhysicalEnvironment {

            @display("p=29,2.1666667");
        }
}
