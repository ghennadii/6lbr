<?xml version="1.0" encoding="UTF-8"?>
<simconf>
  <project EXPORT="discard">[APPS_DIR]/mrm</project>
  <project EXPORT="discard">[APPS_DIR]/mspsim</project>
  <project EXPORT="discard">[APPS_DIR]/avrora</project>
  <project EXPORT="discard">[APPS_DIR]/serial_socket</project>
  <project EXPORT="discard">[APPS_DIR]/collect-view</project>
  <project EXPORT="discard">[APPS_DIR]/powertracker</project>
  <simulation>
    <title>6lbr template</title>
    <speedlimit>1.0</speedlimit>
    <randomseed>generated</randomseed>
    <motedelay_us>1000000</motedelay_us>
    <radiomedium>
      org.contikios.cooja.radiomediums.UDGM
      <transmitting_range>45.0</transmitting_range>
      <interference_range>45.0</interference_range>
      <success_ratio_tx>1.0</success_ratio_tx>
      <success_ratio_rx>1.0</success_ratio_rx>
    </radiomedium>
    <events>
      <logoutput>1000000</logoutput>
    </events>
    <motetype>
	  org.contikios.cooja.contikimote.ContikiMoteType
	  <identifier>slipradio</identifier>
	  <description>6LBR Slip Radio</description>
	  <source EXPORT="discard">[CONFIG_DIR]/../firmwares/slip-radio/slip-radio.c</source>
	  <commands EXPORT="discard">make slip-radio.cooja TARGET=cooja </commands>
	  <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
	  <moteinterface>org.contikios.cooja.interfaces.Battery</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiVib</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiIPAddress</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiButton</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiClock</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiLED</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
	  <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
	  <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
	  <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
	  <symbols>false</symbols>
    </motetype>
    <motetype>
	  org.contikios.cooja.contikimote.ContikiMoteType
	  <identifier>node</identifier>
	  <description>6LBR Demo</description>
	  <source EXPORT="discard">[CONFIG_DIR]/../firmwares/node/6lbr-demo.c</source>
	  <commands EXPORT="discard">make 6lbr-demo.cooja TARGET=cooja </commands>
	  <moteinterface>org.contikios.cooja.interfaces.Position</moteinterface>
	  <moteinterface>org.contikios.cooja.interfaces.Battery</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiVib</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiMoteID</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRS232</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiBeeper</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiIPAddress</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiRadio</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiButton</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiPIR</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiClock</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiLED</moteinterface>
	  <moteinterface>org.contikios.cooja.contikimote.interfaces.ContikiCFS</moteinterface>
	  <moteinterface>org.contikios.cooja.interfaces.Mote2MoteRelations</moteinterface>
	  <moteinterface>org.contikios.cooja.interfaces.RimeAddress</moteinterface>
	  <moteinterface>org.contikios.cooja.interfaces.MoteAttributes</moteinterface>
	  <symbols>false</symbols>
    </motetype>
    <mote>
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>59.0</x>
        <y>-71.0</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.contikimote.interfaces.ContikiMoteID
        <id>1</id>
      </interface_config>
      <interface_config>
        org.contikios.cooja.contikimote.interfaces.ContikiRadio
        <bitrate>250.0</bitrate>
      </interface_config>
      <motetype_identifier>slipradio</motetype_identifier>
    </mote>
    <mote>
      <interface_config>
        org.contikios.cooja.interfaces.Position
        <x>57.63888888888887</x>
        <y>-38.87500000000001</y>
        <z>0.0</z>
      </interface_config>
      <interface_config>
        org.contikios.cooja.contikimote.interfaces.ContikiMoteID
        <id>2</id>
      </interface_config>
      <interface_config>
        org.contikios.cooja.contikimote.interfaces.ContikiRadio
        <bitrate>250.0</bitrate>
      </interface_config>
      <motetype_identifier>node</motetype_identifier>
    </mote>
  </simulation>
  <plugin>
    org.contikios.cooja.plugins.SimControl
    <width>280</width>
    <z>2</z>
    <height>160</height>
    <location_x>465</location_x>
    <location_y>0</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.Visualizer
    <plugin_config>
      <skin>org.contikios.cooja.plugins.skins.IDVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.GridVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.TrafficVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.UDGMVisualizerSkin</skin>
      <skin>org.contikios.cooja.plugins.skins.MoteTypeVisualizerSkin</skin>
      <viewport>1.3090909090909089 0.0 0.0 1.3090909090909089 146.45454545454544 173.0</viewport>
    </plugin_config>
    <width>462</width>
    <z>1</z>
    <height>400</height>
    <location_x>1</location_x>
    <location_y>1</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.LogListener
    <plugin_config>
      <filter />
      <formatted_time />
      <coloring />
    </plugin_config>
    <width>1213</width>
    <z>4</z>
    <height>821</height>
    <location_x>466</location_x>
    <location_y>161</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.Notes
    <plugin_config>
      <notes>6LBR Test Support</notes>
      <decorations>true</decorations>
    </plugin_config>
    <width>932</width>
    <z>3</z>
    <height>162</height>
    <location_x>745</location_x>
    <location_y>-1</location_y>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.ScriptRunner
    <plugin_config>
      <script>TIMEOUT(999999999);&#xD;
sim.setSpeedLimit(1);&#xD;
}</script>
      <active>false</active>
    </plugin_config>
    <width>462</width>
    <z>-1</z>
    <height>335</height>
    <location_x>3</location_x>
    <location_y>646</location_y>
    <minimized>true</minimized>
  </plugin>
  <plugin>
    org.contikios.cooja.serialsocket.SerialSocketServer
    <mote_arg>0</mote_arg>
    <plugin_config>
      <port>60001</port>
      <bound>true</bound>
    </plugin_config>
    <width>459</width>
    <z>-1</z>
    <height>119</height>
    <location_x>5</location_x>
    <location_y>525</location_y>
    <minimized>true</minimized>
  </plugin>
  <plugin>
    org.contikios.cooja.plugins.RadioLogger
    <plugin_config>
      <split>150</split>
      <formatted_time />
      <showdups>false</showdups>
      <hidenodests>false</hidenodests>
      <analyzers name="6lowpan-pcap" />
    </plugin_config>
    <width>462</width>
    <z>0</z>
    <height>570</height>
    <location_x>1</location_x>
    <location_y>402</location_y>
  </plugin>
</simconf>

