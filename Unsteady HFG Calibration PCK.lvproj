<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="21008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="Controls" Type="Folder">
			<Item Name="Channel Selection" Type="Folder">
				<Item Name="Volt Chl.ctl" Type="VI" URL="../Controls/Channel Selection/Volt Chl.ctl"/>
			</Item>
			<Item Name="App Data.ctl" Type="VI" URL="../Controls/App Data.ctl"/>
			<Item Name="UI References.ctl" Type="VI" URL="../Controls/UI References.ctl"/>
		</Item>
		<Item Name="SubVIs" Type="Folder">
			<Item Name="Channel Selection" Type="Folder">
				<Item Name="Channel Validation.vi" Type="VI" URL="../SubVIs/Channel Selection/Channel Validation.vi"/>
				<Item Name="DAQ Channel Dlg_V0.vi" Type="VI" URL="../SubVIs/Channel Selection/DAQ Channel Dlg_V0.vi"/>
				<Item Name="PhyicalChannelConvertor_V0.vi" Type="VI" URL="../SubVIs/Channel Selection/PhyicalChannelConvertor_V0.vi"/>
			</Item>
			<Item Name="Create File.vi" Type="VI" URL="../SubVIs/Create File.vi"/>
			<Item Name="Enable UI.vi" Type="VI" URL="../SubVIs/Enable UI.vi"/>
			<Item Name="Initialise Front Panel.vi" Type="VI" URL="../SubVIs/Initialise Front Panel.vi"/>
			<Item Name="Loop Error Stop.vi" Type="VI" URL="../SubVIs/Loop Error Stop.vi"/>
			<Item Name="Write and Convert Waveform to File.vi" Type="VI" URL="../SubVIs/Write and Convert Waveform to File.vi"/>
		</Item>
		<Item Name="Main.vi" Type="VI" URL="../Main.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="Clear Errors.vi" Type="VI" URL="/&lt;vilib&gt;/Utility/error.llb/Clear Errors.vi"/>
			</Item>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
