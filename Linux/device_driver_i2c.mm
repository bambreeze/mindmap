<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1386561895481" ID="ID_829416847" MODIFIED="1386561908821" TEXT="i2c subsystem">
<node CREATED="1386563101775" ID="ID_495246955" MODIFIED="1386563109107" POSITION="right" TEXT="include/linux/i2c.h"/>
<node CREATED="1386566110083" ID="ID_21007906" MODIFIED="1386566117275" POSITION="right" TEXT="drivers/i2c/i2c-boardinfo.c">
<node CREATED="1386566215387" ID="ID_1674572114" MODIFIED="1386566221305" TEXT="collect pre-declarations of I2C devices">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386566315585" ID="ID_1519416204" MODIFIED="1386567356205">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      DECLARE_RWSEM(__i2c_board_lock);
    </p>
    <p>
      LIST_HEAD(<font color="#660099">__i2c_board_list</font>);
    </p>
    <p>
      int __i2c_first_dynamic_bus_num;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386566915437" ID="ID_838152003" MODIFIED="1386566957443" TEXT="i2c_register_board_info(busnum, info, len)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386567065213" ID="ID_1525751910" MODIFIED="1386567072107" TEXT="statically declare I2C devices">
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
<node CREATED="1386567185367" ID="ID_1188782019" MODIFIED="1386661230163">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;struct <font color="#6600ff">i2c_devinfo</font>&#160;&#160;*devinfo;
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
      &#160;&#160;&#160;&#160;list_add_tail(&amp;devinfo-&gt;list, &amp;<font color="#660099">__i2c_board_list</font>);
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1386566681040" ID="ID_959187503" MODIFIED="1386566684281" POSITION="right" TEXT="drivers/i2c/i2c-core.h">
<node CREATED="1386566837977" ID="ID_150668700" MODIFIED="1386566851471" TEXT="interfaces internal to the I2C framework">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386566717182" ID="ID_208470217" MODIFIED="1386661165353">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#6600ff">i2c_devinfo</font>&#160;{
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
</html>
</richcontent>
</node>
</node>
<node CREATED="1386561935229" ID="ID_1458744004" MODIFIED="1386561944413" POSITION="right" TEXT="drivers/i2c/i2c-core.c">
<node CREATED="1386661068135" ID="ID_1138031974" MODIFIED="1386661075751" TEXT="a device driver for the iic-bus interface">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386562001185" ID="ID_1299361517" MODIFIED="1386567497161">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct device_type <font color="#660099">i2c_client_type</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386561945544" ID="ID_459174141" MODIFIED="1386653555670">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct device_type <font color="#660099">i2c_adapter_type</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386579472153" ID="ID_1881982904" MODIFIED="1386664338546">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct bus_type <font color="#660099">i2c_bus_type</font>&#160;= {
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
<node CREATED="1386562121189" ID="ID_558056265" MODIFIED="1386578536743">
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
<node CREATED="1386562344123" ID="ID_1985474419" MODIFIED="1386664787435">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
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
      &#160;&#160;&#160;&#160;client-&gt;dev.bus = &amp;<font color="#6600ff">i2c_bus_type</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;client-&gt;dev.type = &amp;<font color="#6600ff">i2c_client_type</font>;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;status = <b><font color="#cc0033">device_register</font></b>(&amp;client-&gt;dev);
    </p>
  </body>
</html>
</richcontent>
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
<node CREATED="1386581997451" ID="ID_152995318" MODIFIED="1386665445544">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;driver-&gt;driver.owner = owner;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;driver-&gt;driver.bus = &amp;<font color="#6600ff">i2c_bus_type</font>;
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
</html>
</richcontent>
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
<node CREATED="1386577955597" ID="ID_1854986455" MODIFIED="1386578459421">
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
<node CREATED="1386565761564" ID="ID_306080231" MODIFIED="1386665436947">
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
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;adap-&gt;dev.bus = &amp;<font color="#6600ff">i2c_bus_type</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;adap-&gt;dev.type = &amp;<font color="#6600ff">i2c_adapter_type</font>;
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
</html>
</richcontent>
</node>
</node>
<node CREATED="1386645387898" ID="ID_424344602" MODIFIED="1386645400124" TEXT="i2c_init()/i2c_exit()">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386645899702" ID="ID_1125737854" MODIFIED="1386653469118" TEXT="i2c core init">
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
</html>
</richcontent>
</node>
<node CREATED="1386645907959" ID="ID_1793831769" MODIFIED="1386664688864">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;bus_register(&amp;i2c_bus_type)
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c_add_driver(&amp;dummy_driver)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c_register_driver(THIS_MODULE, &amp;dummy_driver)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1386657018156" ID="ID_1527151415" MODIFIED="1386657138485" TEXT="I2C protocal">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
<node CREATED="1386655331556" ID="ID_272063657" MODIFIED="1386660501029" TEXT="i2c_default_probe(adap, addr)">
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
<node CREATED="1386657032364" ID="ID_1403878210" MODIFIED="1386657048012" TEXT="SMBus protocal">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
</node>
</node>
</map>
