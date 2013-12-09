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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
<node CREATED="1386567185367" ID="ID_1188782019" MODIFIED="1386567447167">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;struct <font color="#0033ff">i2c_devinfo</font>&#160;&#160;*devinfo;
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
<node CREATED="1386566717182" ID="ID_208470217" MODIFIED="1386566757977">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#0033ff">i2c_devinfo</font>&#160;{
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
<node CREATED="1386562001185" ID="ID_1299361517" MODIFIED="1386567497161">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct device_type <font color="#660099">i2c_client_type</font>
    </p>
  </body>
</html>
</richcontent>
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
</html>
</richcontent>
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
<node CREATED="1386562344123" ID="ID_1985474419" MODIFIED="1386567505633">
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
      &#160;&#160;&#160;&#160;client-&gt;dev.bus = &amp;i2c_bus_type;
    </p>
    <p>
      &#160;&#160;&#160;&#160;client-&gt;dev.type = &amp;<font color="#660099">i2c_client_type</font>;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;status = <font color="#cc0033"><b>device_register</b></font>(&amp;client-&gt;dev);
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1386561945544" ID="ID_459174141" MODIFIED="1386579579203">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct device_type <font color="#660099">i2c_adapter_type</font>
    </p>
  </body>
</html>
</richcontent>
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
</html>
</richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386578054468" ID="ID_1266605784" MODIFIED="1386578085299" TEXT="declare i2c adapter, use dynamic bus number">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386565761564" ID="ID_306080231" MODIFIED="1386579590000">
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
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;adap-&gt;dev.bus = &amp;<font color="#660099">i2c_bus_type</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;adap-&gt;dev.type = &amp;<font color="#660099">i2c_adapter_type</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;res = <font color="#cc0033"><b>device_register</b></font>(&amp;adap-&gt;dev);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c_scan_static_board_info()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* create pre-declared device nodes */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<font color="#0033ff">i2c_new_device()</font>
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
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;driver-&gt;detect();&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* custom detection function */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<font color="#0033ff">i2c_new_device()</font>
    </p>
    <p>
      &#160;&#160;
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1386579472153" ID="ID_1881982904" MODIFIED="1386579646111">
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
</html>
</richcontent>
</node>
<node CREATED="1386581425609" ID="ID_26770044" MODIFIED="1386581461047" TEXT="i2c_register_driver(ower, driver)">
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
</html>
</richcontent>
</node>
<node CREATED="1386581997451" ID="ID_152995318" MODIFIED="1386582394370">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;driver-&gt;driver.owner = owner;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;driver-&gt;driver.bus = &amp;<font color="#660099">i2c_bus_type</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;res = <font color="#cc0033"><b>driver_register</b></font>(&amp;driver-&gt;driver);
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
</html>
</richcontent>
</node>
</node>
</node>
</node>
</map>
