<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1395823619992" ID="ID_1563923874" MODIFIED="1395823745946" TEXT="usb subsystem">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1312615413967" ID="ID_983555545" MODIFIED="1395823821380" POSITION="right" TEXT="USB Device">
<node CREATED="1312615447005" ID="ID_918799922" MODIFIED="1395823824066" TEXT="Endpoints">
<node CREATED="1312615457258" MODIFIED="1312615480236" TEXT="CONTROL"/>
<node CREATED="1312615489624" MODIFIED="1312615491979" TEXT="INTERRUPT"/>
<node CREATED="1312615498116" MODIFIED="1312615499472" TEXT="BULK"/>
<node CREATED="1312615500177" MODIFIED="1312615508442" TEXT="ISOCHRONOUS"/>
</node>
<node CREATED="1312615578301" ID="ID_20997389" MODIFIED="1312615580888" TEXT="Interfaces"/>
<node CREATED="1312615649641" ID="ID_1930270944" MODIFIED="1312615652716" TEXT="Configurations"/>
<node CREATED="1312614568510" FOLDED="true" ID="ID_1474921474" MODIFIED="1395823839907" TEXT="root_hub-hub_port:config.interface">
<node CREATED="1312614645131" MODIFIED="1312614647656" TEXT="root_hub-hub_port-hub_port:config.interface"/>
</node>
</node>
<node CREATED="1312614708565" FOLDED="true" ID="ID_1527814476" MODIFIED="1395823800888" POSITION="right" TEXT="Register Driver">
<node CREATED="1312614929173" MODIFIED="1312614943329" TEXT="MODULE_DEVICE_TABLE (usb, xxx)"/>
<node CREATED="1312615089719" MODIFIED="1312615092268" TEXT="usb_register()"/>
<node CREATED="1312615102504" MODIFIED="1312615105349" TEXT="usb_deregister()"/>
</node>
<node CREATED="1312615871870" ID="ID_279297250" MODIFIED="1395823869128" POSITION="right" TEXT="Urbs">
<node CREATED="1312615936813" FOLDED="true" ID="ID_1127040611" MODIFIED="1395823757427" TEXT="Created by a USB device driver">
<node CREATED="1312616108524" MODIFIED="1312616111187" TEXT="usb_alloc_urb()"/>
<node CREATED="1312616120788" MODIFIED="1312616123849" TEXT="usb_free_urb()"/>
</node>
<node CREATED="1312615952560" FOLDED="true" ID="ID_485920524" MODIFIED="1395823757428" TEXT="Assigned to a specific endpoint of a specific USB device">
<node CREATED="1312616169197" MODIFIED="1312616180289" TEXT="usb_fill_int_urb()"/>
<node CREATED="1312616197772" MODIFIED="1312616200066" TEXT="usb_fill_bulk_urb()"/>
<node CREATED="1312616211420" MODIFIED="1312616213713" TEXT="usb_fill_control_urb()"/>
<node CREATED="1312616235378" MODIFIED="1312616252490" TEXT="Isochronous urbs must be initialized &quot;by hand&quot;"/>
</node>
<node CREATED="1312615955797" FOLDED="true" ID="ID_123056191" MODIFIED="1395823757428" TEXT="Submitted to the USB core, by the USB device driver">
<node CREATED="1312616269231" MODIFIED="1312616272483" TEXT="usb_submit_urb()"/>
</node>
<node CREATED="1312615974595" MODIFIED="1312615977134" TEXT="Submitted to the specific USB host controller driver for the specified device by the USB core"/>
<node CREATED="1312615985842" MODIFIED="1312615988085" TEXT="Processed by the USB host controller driver that makes a USB transfer to the device"/>
<node CREATED="1312615994368" FOLDED="true" ID="ID_1818037577" MODIFIED="1395823757428" TEXT="When the urb is completed, the USB host controller driver notifies the USB device driver">
<node CREATED="1312616310242" MODIFIED="1312616312654" TEXT="usb_kill_urb()"/>
<node CREATED="1312616320613" MODIFIED="1312616322986" TEXT="usb_unlink_urb()"/>
</node>
</node>
<node CREATED="1312614782120" ID="ID_1686636530" MODIFIED="1395823865438" POSITION="right" TEXT="Data Structures">
<node CREATED="1312614793510" MODIFIED="1312614801737" TEXT="usb_device_id"/>
<node CREATED="1312614808739" FOLDED="true" ID="ID_699198797" MODIFIED="1395823757429" TEXT="usb_driver">
<node CREATED="1312614980366" MODIFIED="1312614984392" TEXT="id_table"/>
<node CREATED="1312614988414" FOLDED="true" ID="ID_1735775653" MODIFIED="1395823757428" TEXT="proble()">
<node CREATED="1312615212970" MODIFIED="1312615216716" TEXT="usb_register_dev()"/>
</node>
<node CREATED="1312614993348" FOLDED="true" ID="ID_287828208" MODIFIED="1395823757428" TEXT="disconnect()">
<node CREATED="1312615261742" MODIFIED="1312615264641" TEXT="usb_deregister_dev()"/>
</node>
<node CREATED="1312615047597" MODIFIED="1312615061093" TEXT="suspend()"/>
<node CREATED="1312615053245" MODIFIED="1312615056969" TEXT="resume()"/>
<node CREATED="1312615063675" MODIFIED="1312615067688" TEXT="ioctl()"/>
</node>
<node CREATED="1312615793439" MODIFIED="1312615800167" TEXT="usb_class_driver"/>
<node CREATED="1312615539160" FOLDED="true" ID="ID_206113610" MODIFIED="1395823757429" TEXT="usb_host_endpoint">
<node CREATED="1312615554253" MODIFIED="1312615556720" TEXT="usb_endpoint_descriptor"/>
</node>
<node CREATED="1312615600370" FOLDED="true" ID="ID_1706497353" MODIFIED="1395823757429" TEXT="usb_interface">
<node CREATED="1312615632781" MODIFIED="1312615635296" TEXT="usb_host_interface"/>
</node>
<node CREATED="1312615720086" MODIFIED="1312615722521" TEXT="usb_host_config"/>
<node CREATED="1312615775188" MODIFIED="1312615778325" TEXT="usb_device"/>
</node>
</node>
</map>