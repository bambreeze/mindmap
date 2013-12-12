<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1386561895481" ID="ID_829416847" MODIFIED="1386837813117" TEXT="i2c subsystem">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386561935229" ID="ID_1458744004" MODIFIED="1386857434514" POSITION="right" TEXT="I2C core device driver">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386837756259" ID="ID_1367330475" MODIFIED="1386837765965" TEXT="include/linux/i2c.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1386566681040" ID="ID_959187503" MODIFIED="1386837385018" TEXT="drivers/i2c/i2c-core.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1386566717182" ID="ID_208470217" MODIFIED="1386837990454">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">i2c_devinfo</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head&#160;&#160;&#160;&#160;list;
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;busnum;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct i2c_board_info&#160;&#160;&#160;board_info;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386566110083" ID="ID_21007906" MODIFIED="1386838061969" TEXT="drivers/i2c/i2c-boardinfo.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1386566315585" ID="ID_1519416204" MODIFIED="1386838090467">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      DECLARE_RWSEM(__i2c_board_lock);
    </p>
    <p>
      LIST_HEAD(<b><font color="#6600ff">__i2c_board_list</font></b>);
    </p>
    <p>
      int __i2c_first_dynamic_bus_num;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386566915437" ID="ID_838152003" MODIFIED="1386839868955" TEXT="i2c_register_board_info(busnum, info, len)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386567065213" ID="ID_1525751910" MODIFIED="1386837649610" TEXT="statically declare I2C devices, and collect pre-declarations of I2C devices ">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386567077696" ID="ID_360431480" MODIFIED="1386567415408">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Systems using the Linux I2C driver stack can declare tables of board info
    </p>
    <p>
      while they initialize.&#160;&#160;This should be done in board-specific init code
    </p>
    <p>
      near arch_initcall() time, or equivalent, before any I2C adapter driver is
    </p>
    <p>
      registered.&#160;&#160;For example, mainboard init code could define several devices,
    </p>
    <p>
      as could the init code for each daughtercard in a board stack.
    </p>
    <p>
      
    </p>
    <p>
      The I2C devices will be created later, after the adapter for the relevant
    </p>
    <p>
      bus has been registered.&#160;&#160;After that moment, standard driver model tools
    </p>
    <p>
      are used to bind &quot;new style&quot; I2C drivers to the devices.&#160;&#160;The bus number
    </p>
    <p>
      for any device declared using this routine is not available for dynamic
    </p>
    <p>
      allocation.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386567185367" ID="ID_1188782019" MODIFIED="1386838120235">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;struct <b><font color="#6600ff">i2c_devinfo</font></b>&#160;&#160;*devinfo;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;devinfo-&gt;busnum = busnum;
    </p>
    <p>
      &#160;&#160;&#160;&#160;devinfo-&gt;board_info = *info;
    </p>
    <p>
      &#160;&#160;&#160;&#160;list_add_tail(&amp;devinfo-&gt;list, &amp;<b><font color="#6600ff">__i2c_board_list</font></b>);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386661068135" ID="ID_1138031974" MODIFIED="1386837380731" TEXT="drivers/i2c/i2c-core.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1386579472153" ID="ID_1881982904" MODIFIED="1386839864831">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct bus_type <b><font color="#6600ff">i2c_bus_type</font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.name&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &quot;i2c&quot;,&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;.match&#160;&#160;&#160;&#160;&#160;&#160;= i2c_device_match,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.probe&#160;&#160;&#160;&#160;&#160;&#160;= i2c_device_probe,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.remove&#160;&#160;&#160;&#160;&#160;= i2c_device_remove,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.shutdown&#160;&#160;&#160;= i2c_device_shutdown,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.pm&#160;&#160;&#160;&#160;&#160;= &amp;i2c_device_pm_ops,&#160;
    </p>
    <p>
      };
    </p>
    <p>
      struct device_type <b><font color="#6600ff">i2c_adapter_type</font></b><font color="#660099">; </font>
    </p>
    <p>
      struct device_type <b><font color="#6600ff">i2c_client_type;</font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1386661557285" HGAP="18" ID="ID_1392130145" MODIFIED="1386664198030" VSHIFT="5">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_device_match(dev, drv)
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c_match_id(driver-&gt;id_table, client)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;strcmp(<b><font color="#ff0000">client-&gt;name, id-&gt;name</font></b>) == 0
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386662021323" ID="ID_1262428785" MODIFIED="1386664264995" VSHIFT="-3">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_device_probe(dev)
    </p>
    <p>
      &#160;&#160;&#160;&#160;driver = to_i2c_driver(dev-&gt;driver);
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#ff0000">driver-&gt;probe</font></b>(client, i2c_match_id(driver-&gt;id_table, client));
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386664091658" ID="ID_1435485566" MODIFIED="1386664276578">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_device_remove(dev)
    </p>
    <p>
      &#160;&#160;&#160;&#160;driver = to_i2c_driver(dev-&gt;driver);&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#ff0000">driver-&gt;remove</font></b>(client);
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386664324285" ID="ID_609485269" MODIFIED="1386664358500">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_device_shutdown(dev)
    </p>
    <p>
      &#160;&#160;&#160;&#160;driver = to_i2c_driver(dev-&gt;driver);&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#ff0000">driver-&gt;shutdown</font></b>(client);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386645387898" ID="ID_424344602" MODIFIED="1386839863729">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static int __init i2c_init(void)
    </p>
    <p>
      /static void __exit i2c_exit(void)
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386645899702" ID="ID_1125737854" MODIFIED="1386838842423" TEXT="i2c bus main module">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386653433936" ID="ID_1704623931" MODIFIED="1386653445726">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      We must initialize early, because some subsystems register i2c drivers
    </p>
    <p>
      in subsys_initcall() code, but are linked (and initialized) before i2c.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386645907959" ID="ID_1793831769" MODIFIED="1386839648931">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_init()
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#ff0000">bus_register</font></b>(&amp;<b><font color="#6600ff">i2c_bus_type</font></b>)
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c_add_driver(&amp;dummy_driver)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c_register_driver(THIS_MODULE, &amp;dummy_driver)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386577955597" ID="ID_1854986455" MODIFIED="1386839866202">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_add_adapter(adapter)
    </p>
    <p>
      /i2c_del_adapter(adapter)
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386578054468" ID="ID_1266605784" MODIFIED="1386578085299" TEXT="declare i2c adapter, use dynamic bus number">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386565761564" ID="ID_306080231" MODIFIED="1386838403045">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_add_adapter()
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c_register_adapter()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;adap-&gt;dev.bus = &amp;<b><font color="#6600ff">i2c_bus_type</font></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;adap-&gt;dev.type = &amp;<b><font color="#6600ff">i2c_adapter_type</font></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;res = <b><font color="#cc0033">device_register</font></b>(&amp;adap-&gt;dev);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c_scan_static_board_info()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* create pre-declared device nodes */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#0033ff">i2c_new_device</font></b><font color="#0033ff">()</font>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;bus_for_each_drv(&amp;i2c_bus_type...);&#160;&#160;/* Notify drivers */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c_detect()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c_detect_address()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c_check_addr_validity(addr)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c_check_addr_busy(adapter, addr)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c_default_probe(adap, addr)
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;driver-&gt;detect();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#0033ff">i2c_new_device</font></b><font color="#0033ff">()</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386562121189" ID="ID_558056265" MODIFIED="1386838952979">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_new_device(adapt, info)
    </p>
    <p>
      /i2c_unregister_device(client)
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386562548456" ID="ID_1291284547" MODIFIED="1386562612509" TEXT="instantiate an i2c device">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386562206506" ID="ID_1886077450" MODIFIED="1386562269840">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Create an i2c device. Binding is handled through driver model probe()/remove() methods.&#160;&#160;
    </p>
    <p>
      A driver may be bound to this device when we return from this function,
    </p>
    <p>
      or any later moment(e.g. maybe hotplugging will load the driver module).
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386562344123" ID="ID_1985474419" MODIFIED="1386838970703">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_new_device(adapt, info)
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Check for address validity */
    </p>
    <p>
      &#160;&#160;&#160;&#160;status = i2c_check_client_addr_validity(client);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Check for address business */
    </p>
    <p>
      &#160;&#160;&#160;&#160;status = i2c_check_addr_busy(adap, client-&gt;addr);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;client-&gt;dev.parent = &amp;client-&gt;adapter-&gt;dev;
    </p>
    <p>
      &#160;&#160;&#160;&#160;client-&gt;dev.bus = &amp;<b><font color="#6600ff">i2c_bus_type</font></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;client-&gt;dev.type = &amp;<b><font color="#6600ff">i2c_client_type</font></b>;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;status = <b><font color="#cc0033">device_register</font></b>(&amp;client-&gt;dev);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386581425609" ID="ID_26770044" MODIFIED="1386653585287">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_register_driver(ower, driver)
    </p>
    <p>
      /i2c_del_driver(driver)
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386581500041" ID="ID_152267423" MODIFIED="1386582419777" TEXT="register a new i2c driver">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386581692493" ID="ID_1740582358" MODIFIED="1386582376313">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      An i2c_driver is used with one or more i2c_client (device) nodes to access
    </p>
    <p>
      i2c slave chips, on a bus instance associated with some i2c_adapter.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386581997451" ID="ID_152995318" MODIFIED="1386839009664">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_register_driver(ower, driver)
    </p>
    <p>
      &#160;&#160;&#160;&#160;driver-&gt;driver.owner = owner;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;driver-&gt;driver.bus = &amp;<b><font color="#6600ff">i2c_bus_type</font></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;res = <b><font color="#cc0033">driver_register</font></b>(&amp;driver-&gt;driver);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;res = bus_for_each_dev(&amp;i2c_bus_type...);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c_detect()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c_detect_address()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c_check_addr_validity(addr) /* Make sure the address is valid */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c_check_addr_busy(adapter, addr) /* Skip if already in use */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c_default_probe(adap, addr) /* Make sure there is something at this address */
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;driver-&gt;detect();&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* custom detection function */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#0033ff">i2c_new_device</font></b><font color="#0033ff">()</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386582379263" ID="ID_1218556215" MODIFIED="1386582389360">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      When registration returns, the driver core will have called probe() for
    </p>
    <p>
      all matching-but-unbound devices.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386657018156" ID="ID_1527151415" MODIFIED="1386839170038" TEXT="I2C protocal">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386654215775" ID="ID_1457201976" MODIFIED="1386654305076" TEXT="i2c_transfer(adap, msgs, num)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386654251901" ID="ID_975855689" MODIFIED="1386654272450" TEXT="execute a single or combined I2C message">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386654290174" ID="ID_990707182" MODIFIED="1386660654996">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_transfer(adap, msgs, num)
    </p>
    <p>
      &#160;&#160;&#160;&#160;adap-&gt;algo-&gt;<b><font color="#ff0000">master_xfer</font></b>(adap, msgs, num)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386654483788" ID="ID_1370962570" MODIFIED="1386654719294">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_master_send(client, buf, count)
    </p>
    <p>
      /i2c_master_recv(client, buf, count)
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386654557651" ID="ID_1232236694" MODIFIED="1386654581297" TEXT="issue a single I2C message in master transmit mode">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386654585534" ID="ID_619488772" MODIFIED="1386665075308">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_master_send(client, buf, count)
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#0000ff">i2c_transfer</font></b>(adap, &amp;msg, 1)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386655331556" ID="ID_272063657" MODIFIED="1386839150855" TEXT="i2c_default_probe(adap, addr)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386655527453" ID="ID_218357009" MODIFIED="1386655680232">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      if&#160;&#160;&#160;&#160;&#160;- i2c_smbus_xfer(I2C_SMBUS_WRITE, I2C_SMBUS_QUICK);&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      else - i2c_smbus_xfer(I2C_SMBUS_READ, I2C_SMBUS_BYTE);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1386657032364" ID="ID_1403878210" MODIFIED="1386839172527" TEXT="SMBus protocal">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386660307384" ID="ID_780106523" MODIFIED="1386660352647" TEXT="i2c_smbus_xfer()">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386660346311" ID="ID_1584297160" MODIFIED="1386660355278" TEXT="execute SMBus protocol operations">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386660375456" ID="ID_995570383" MODIFIED="1386660467849">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      if&#160;&#160;&#160;&#160;&#160;- adap-&gt;algo-&gt;smbus_xfer()
    </p>
    <p>
      else - adap-&gt;algo-&gt;master_xfer()
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386660813580" ID="ID_1560214910" MODIFIED="1386660893536">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_smbus_read_byte()
    </p>
    <p>
      i2c_smbus_write_byte()
    </p>
    <p>
      i2c_smbus_read_byte_data()
    </p>
    <p>
      i2c_smbus_write_byte_data()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      i2c_smbus_read_word_data()
    </p>
    <p>
      i2c_smbus_write_word_data()
    </p>
    <p>
      i2c_smbus_read_block_data()
    </p>
    <p>
      i2c_smbus_write_block_data()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      i2c_smbus_read_i2c_block_data()
    </p>
    <p>
      i2c_smbus_write_i2c_block_data()
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1386829299952" ID="ID_1463825158" MODIFIED="1386857436844" POSITION="right" TEXT="I2C /dev entries driver">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386829337309" ID="ID_1976511202" MODIFIED="1386839183142">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      drivers/i2c/i2c-dev.c
    </p>
  </body>
</html></richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1386829432282" ID="ID_1381432606" MODIFIED="1386839263882">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">i2c_dev</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head list;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct i2c_adapter *adap;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct device *dev;
    </p>
    <p>
      };
    </p>
    <p>
      static LIST_HEAD(<b><font color="#6600ff">i2c_dev_list</font></b>);
    </p>
    <p>
      static DEFINE_SPINLOCK(i2c_dev_list_lock);
    </p>
  </body>
</html></richcontent>
<node CREATED="1386836240067" ID="ID_1172625597" MODIFIED="1386839338335">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff0000">An i2c_dev represents an i2c_adapter</font></b>&#160;... an I2C or SMBus master, not a
    </p>
    <p>
      slave (i2c_client) with which messages will be exchanged.&#160;&#160;It's coupled
    </p>
    <p>
      with a character special file which is accessed by user mode drivers.
    </p>
    <p>
      The list of i2c_dev structures is parallel to the i2c_adapter lists
    </p>
    <p>
      maintained by the driver model, and is updated using bus notifications.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1386830934405" ID="ID_1087586178" MODIFIED="1386839404793">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static const struct file_operations <b><font color="#6600ff">i2cdev_fops</font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.owner&#160;&#160;&#160;&#160;&#160;&#160;= THIS_MODULE,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.llseek&#160;&#160;&#160;&#160;&#160;= no_llseek,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.read&#160;&#160;&#160;&#160;&#160;&#160;&#160;= <b><font color="#0000ff">i2cdev_read</font></b>,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.write&#160;&#160;&#160;&#160;&#160;&#160;= i2cdev_write,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.unlocked_ioctl = i2cdev_ioctl,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.open&#160;&#160;&#160;&#160;&#160;&#160;&#160;= <b><font color="#0000ff">i2cdev_open</font></b>,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.release&#160;&#160;&#160;&#160;= i2cdev_release,
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1386835326381" ID="ID_1740207201" MODIFIED="1386835556123">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This creates an anonymous i2c_client, which may later be
    </p>
    <p>
      pointed to some address using I2C_SLAVE or I2C_SLAVE_FORCE.
    </p>
    <p>
      This client is ** NEVER REGISTERED ** with the driver model
    </p>
    <p>
      or I2C core code!!&#160;&#160;It just holds private copies of addressing
    </p>
    <p>
      information and maybe a PEC flag.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386835179175" ID="ID_574040933" MODIFIED="1386840134028">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff">i2cdev_open(inode, file)</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int minor = iminor(inode);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c_dev = i2c_dev_get_by_minor(minor);
    </p>
    <p>
      &#160;&#160;&#160;&#160;adap = i2c_get_adapter(i2c_dev-&gt;adap-&gt;nr);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;client = kzalloc(sizeof(*client), GFP_KERNEL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;snprintf(client-&gt;name, I2C_NAME_SIZE, &quot;i2c-dev %d&quot;, adap-&gt;nr);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;client-&gt;adapter = adap;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#ff0000">file-&gt;private_data = client;</font></b>&#160;&#160;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386833569738" ID="ID_1929149895" MODIFIED="1386839439798">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff">i2cdev_read(file, buf, count, offset)</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct i2c_client *client = file-&gt;private_data;
    </p>
    <p>
      &#160;&#160;&#160;&#160;tmp = kmalloc(count, GFP_KERNEL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;ret = <b><font color="#ff0000">i2c_master_recv</font></b>(client, tmp, count);
    </p>
    <p>
      &#160;&#160;&#160;&#160;copy_to_user(buf, tmp, count) ? -EFAULT : ret;
    </p>
    <p>
      &#160;&#160;&#160;&#160;kfree(tmp);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386830633930" ID="ID_1740432312" MODIFIED="1386839458102">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static int __init i2c_dev_init(void)
    </p>
    <p>
      /static void __exit i2c_dev_exit(void)
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386830880774" ID="ID_502347838" MODIFIED="1386839481281" TEXT="module load/unload record keeping">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386832610735" ID="ID_952454595" MODIFIED="1386836141826">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct notifier_block <b><font color="#6600ff">i2cdev_notifier</font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.notifier_call = i2cdev_notifier_call,
    </p>
    <p>
      };&#160;
    </p>
  </body>
</html></richcontent>
<node CREATED="1386836069521" ID="ID_1983209210" MODIFIED="1386836069521" TEXT=""/>
<node CREATED="1386833130738" ID="ID_1528090967" MODIFIED="1386833215147">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2cdev_notifier_call(action, data)
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct device *dev = data;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;switch (action) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;case BUS_NOTIFY_ADD_DEVICE:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return <b><font color="#0000ff">i2cdev_attach_adapter</font></b>(dev, NULL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;case BUS_NOTIFY_DEL_DEVICE:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return i2cdev_detach_adapter(dev, NULL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386830720153" ID="ID_366936750" MODIFIED="1386839674939">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;res = <b><font color="#ff0000">register_chrdev</font></b>(I2C_MAJOR, &quot;i2c&quot;, &amp;<b><font color="#6600ff">i2cdev_fops</font></b>);
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c_dev_class = class_create(THIS_MODULE, &quot;i2c-dev&quot;);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Keep track of adapters which will be added or removed later */
    </p>
    <p>
      &#160;&#160;&#160;&#160;res = bus_register_notifier(&amp;<b><font color="#6600ff">i2c_bus_type</font></b>, &amp;<b><font color="#6600ff">i2cdev_notifier</font></b>);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Bind to already existing adapters right away */
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c_for_each_dev(NULL, <b><font color="#0000ff">i2cdev_attach_adapter</font></b>);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386830017418" ID="ID_807878740" MODIFIED="1386838641386">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">i2cdev_attach_adapter(dev) </font>
    </p>
    <p>
      <font color="#000000">/i2cdev_detach_adapter(dev)</font>
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386836167677" ID="ID_1740528936" MODIFIED="1386836167677" TEXT=""/>
<node CREATED="1386830109864" ID="ID_1735859262" MODIFIED="1386839565196">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;adap = to_i2c_adapter(dev);
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c_dev = get_free_i2c_dev(adap);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* register this i2c device with the driver core */
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c_dev-&gt;dev = <b><font color="#ff0000">device_create</font></b>(i2c_dev_class, &amp;adap-&gt;dev,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;MKDEV(I2C_MAJOR, adap-&gt;nr), NULL,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;i2c-%d&quot;, adap-&gt;nr);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;res = <b><font color="#ff0000">device_create_file</font></b>(i2c_dev-&gt;dev, &amp;dev_attr_name);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1386850370989" ID="ID_60097188" MODIFIED="1386857439121" POSITION="right" TEXT="Multiplexed I2C bus driver">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386850674077" ID="ID_42903251" MODIFIED="1386850709650" TEXT="drivers/i2c/i2c-mux.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1386850714158" ID="ID_874812311" MODIFIED="1386851638853">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* multiplexer per channel data */
    </p>
    <p>
      struct <b><font color="#6600ff">i2c_mux_priv</font></b>&#160;{&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct i2c_adapter adap;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct i2c_algorithm algo;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct i2c_adapter *parent;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;void *mux_priv; /* the mux chip/device */
    </p>
    <p>
      &#160;&#160;&#160;&#160;u32&#160;&#160;chan_id;&#160;&#160;&#160;/* the channel id */
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*select)(struct i2c_adapter *, void *mux_priv, u32 chan_id);
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*deselect)(struct i2c_adapter *, void *mux_priv, u32 chan_id);
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1386854508061" ID="ID_163076454" MODIFIED="1386857064433">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>i2c_add_mux_adapter() </b>
    </p>
    <p>
      <b>/i2c_del_mux_adapter()</b>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1386856715585" ID="ID_1327146270" MODIFIED="1386856715585" TEXT=""/>
<node CREATED="1386854616665" ID="ID_363442124" MODIFIED="1386857101946">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;struct <b><font color="#6600ff">i2c_mux_priv</font></b>&#160;*priv;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv = kzalloc(sizeof(struct i2c_mux_priv), GFP_KERNEL);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Set up private adapter data */
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv-&gt;parent = parent;
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv-&gt;mux_priv = mux_priv;
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv-&gt;chan_id = chan_id;
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv-&gt;select = select;
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv-&gt;deselect = deselect;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Need to do algo dynamically because we don't know ahead
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;* of time what sort of physical adapter we'll be dealing with.
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;*/
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (parent-&gt;algo-&gt;master_xfer)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;priv-&gt;algo.master_xfer = <b><font color="#0000ff">i2c_mux_master_xfer</font></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (parent-&gt;algo-&gt;smbus_xfer)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;priv-&gt;algo.smbus_xfer = i2c_mux_smbus_xfer;
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv-&gt;algo.functionality = i2c_mux_functionality;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Now fill out new adapter structure */
    </p>
    <p>
      &#160;&#160;&#160;&#160;snprintf(priv-&gt;adap.name, sizeof(priv-&gt;adap.name),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&quot;i2c-%d-mux (chan_id %d)&quot;, i2c_adapter_id(parent), chan_id);
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv-&gt;adap.owner = THIS_MODULE;
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv-&gt;adap.algo = &amp;priv-&gt;algo;
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv-&gt;adap.algo_data = priv;
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv-&gt;adap.dev.parent = &amp;parent-&gt;dev;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (force_nr) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;priv-&gt;adap.nr = force_nr;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ret = i2c_add_numbered_adapter(&amp;priv-&gt;adap);
    </p>
    <p>
      &#160;&#160;&#160;&#160;} else {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ret = <b><font color="#ff0000">i2c_add_adapter</font></b>(&amp;priv-&gt;adap);
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1386851293001" ID="ID_661246046" MODIFIED="1386851700350">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>i2c_mux_master_xfer(adap, msgs, num) </b>
    </p>
    <p>
      <b>/i2c_mux_smbus_xfer(...)</b>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1386851337343" ID="ID_482211681" MODIFIED="1386851337343" TEXT=""/>
<node CREATED="1386851348356" ID="ID_1909430479" MODIFIED="1386851538269">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_mux_master_xfer(adap, msgs, num)
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct <b><font color="#6600ff">i2c_mux_priv</font></b>&#160;*priv = adap-&gt;algo_data;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct i2c_adapter *parent = priv-&gt;parent;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Switch to the right mux port and perform the transfer. */
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv-&gt;<b><font color="#ff0000">select</font></b>(parent, priv-&gt;mux_priv, priv-&gt;chan_id);
    </p>
    <p>
      &#160;&#160;&#160;&#160;parent-&gt;algo-&gt;<b><font color="#ff0000">master_xfer</font></b>(parent, msgs, num);
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv-&gt;<b><font color="#ff0000">deselect</font></b>(parent, priv-&gt;mux_priv, priv-&gt;chan_id);
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
</map>
