<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1386561895481" ID="ID_829416847" MODIFIED="1387639208626" TEXT="i2c subsystem">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1387030241997" ID="ID_1551463806" MODIFIED="1387639625875" POSITION="right" TEXT="I2C overview">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1387030294070" ID="ID_1214907439" MODIFIED="1387030904283">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      I2C (pronounce: I squared C) is a protocol developed by Philips. It is a slow two-wire protocol (variable speed, up to 400 kHz), with a high speed extension (3.4 MHz). SMBus (System Management Bus) is based on the I2C protocol, and is mostly a subset of I2C protocols and signaling.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1387030324190" ID="ID_465593156" MODIFIED="1387639625880">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="driver/i2c/i2c_layers.png" />
  </body>
</html></richcontent>
<node CREATED="1387030950083" ID="ID_4189981" MODIFIED="1387030981973">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Terminology
    </p>
    <p>
      ===========
    </p>
    <p>
      
    </p>
    <p>
      When we talk about I2C, we use the following terms:
    </p>
    <p>
      &#160;&#160;Bus&#160;&#160;&#160;&#160;-&gt; Algorithm
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Adapter
    </p>
    <p>
      &#160;&#160;Device -&gt; Driver
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;Client
    </p>
    <p>
      
    </p>
    <p>
      An Algorithm driver contains general code that can be used for a whole class
    </p>
    <p>
      of I2C adapters. Each specific adapter driver either depends on one algorithm
    </p>
    <p>
      driver, or includes its own implementation.
    </p>
    <p>
      
    </p>
    <p>
      A Driver driver (yes, this sounds ridiculous, sorry) contains the general
    </p>
    <p>
      code to access some type of device. Each detected device gets its own
    </p>
    <p>
      data in the Client structure. Usually, Driver and Client are more closely
    </p>
    <p>
      integrated than Algorithm and Adapter.
    </p>
    <p>
      
    </p>
    <p>
      For a given configuration, you will need a driver for your I2C bus, and
    </p>
    <p>
      drivers for your I2C devices (usually one driver for each device).
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1387030933357" ID="ID_27829827" MODIFIED="1387639625882" TEXT="references">
<node CREATED="1387030492673" ID="ID_1733078940" MODIFIED="1387030534372" TEXT="&lt;Linux&gt;/Documentation/i2c/*">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1387030541996" ID="ID_1205514936" MODIFIED="1387030577737" TEXT="https://i2c.wiki.kernel.org/index.php/Main_Page">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1387030626138" ID="ID_1914125047" MODIFIED="1387030739540" TEXT="http://lm-sensors.org/wiki/I2CTools">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1387030582090" ID="ID_1115248634" MODIFIED="1387030674947" TEXT="http://smbus.org">
<font ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1387606626755" ID="ID_142022489" MODIFIED="1387639625883" POSITION="right" TEXT="I2C driver framework">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386561935229" ID="ID_1458744004" MODIFIED="1387639625914" TEXT="I2C core driver">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386837756259" ID="ID_1367330475" MODIFIED="1386837765965" TEXT="include/linux/i2c.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1387024097734" ID="ID_598102674" MODIFIED="1387639625919">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* represent an I2C slave device */
    </p>
    <p>
      struct <font color="#6600ff"><b>i2c_client</b></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned short flags;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* div., see below&#160;&#160;&#160;&#160;&#160;&#160;*/&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned short <font color="#ff0000"><b>addr</b></font>;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* chip address - NOTE: 7bit&#160;&#160;&#160;&#160;*/&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;char name[I2C_NAME_SIZE];
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct i2c_adapter *<font color="#ff0000"><b>adapter</b></font>;&#160;&#160;&#160;&#160;/* the adapter we sit on&#160;&#160;&#160;&#160;*/
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct i2c_driver *<font color="#ff0000"><b>driver</b></font>;&#160;&#160;/* and our access routines&#160;&#160;*/
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct device <font color="#ff0000"><b>dev</b></font>;&#160;&#160;&#160;&#160;&#160;&#160;/* the device structure&#160;&#160;&#160;&#160;&#160;*/
    </p>
    <p>
      &#160;&#160;&#160;&#160;int irq;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* irq issued by device&#160;&#160;&#160;&#160;&#160;*/
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#ff0000"><b>detected</b></font>;
    </p>
    <p>
      };
    </p>
    <p>
      #define to_i2c_client(d) container_of(d, struct i2c_client, dev)
    </p>
  </body>
</html></richcontent>
<node CREATED="1387023218310" ID="ID_589735197" MODIFIED="1387026287550">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* represent an I2C device driver */
    </p>
    <p>
      struct <font color="#6600ff"><b>i2c_driver</b></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int class;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<font color="#000000">struct device_driver</font><font color="#ff0000"><b>&#160;driver;&#160;</b></font>&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<font color="#000000">const struct i2c_device_id</font><font color="#ff0000"><b>&#160;*id_table;</b></font>
    </p>
    <p>
      &#160;&#160;&#160;&#160;const unsigned short *address_list;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<font color="#000000">struct list_head</font><font color="#ff0000"><b>&#160;clients;</b></font>
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Standard driver model interfaces */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*probe)(struct i2c_client *, const struct i2c_device_id *);
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*remove)(struct i2c_client *);
    </p>
    <p>
      &#160;&#160;&#160;&#160;void (*shutdown)(struct i2c_client *);
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*suspend)(struct i2c_client *, pm_message_t mesg);
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*resume)(struct i2c_client *);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* a ioctl like command that can be used to perform specific functions with the device. */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*command)(struct i2c_client *client, unsigned int cmd, void *arg);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Device detection callback for automatic device creation */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*detect)(struct i2c_client *, struct i2c_board_info *);
    </p>
    <p>
      };
    </p>
    <p>
      #define to_i2c_driver(d) container_of(d, struct i2c_driver, driver)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1387026672707" ID="ID_1819296979" MODIFIED="1387639625923">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#6600ff"><b>i2c_adapter</b></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct module *owner;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int class;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* classes to allow probing for */
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct i2c_algorithm *<font color="#ff0000"><b>algo</b></font>; /* the algorithm to access the bus */
    </p>
    <p>
      &#160;&#160;&#160;&#160;void *algo_data;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* data fields that are valid for all devices&#160;&#160;&#160;*/
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct rt_mutex bus_lock;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;int timeout;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* in jiffies */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int retries;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct device <font color="#ff0000"><b>dev</b></font>;&#160;&#160;&#160;&#160;&#160;&#160;/* the adapter device */
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;int nr;
    </p>
    <p>
      &#160;&#160;&#160;&#160;char name[48];
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct completion dev_released;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct mutex userspace_clients_lock;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#ff0000"><b>userspace_clients</b></font>;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct i2c_bus_recovery_info *bus_recovery_info;
    </p>
    <p>
      };
    </p>
    <p>
      #define to_i2c_adapter(d) container_of(d, struct i2c_adapter, dev)
    </p>
  </body>
</html></richcontent>
<node CREATED="1387026304982" ID="ID_1810925000" MODIFIED="1387026666148">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#6600ff"><b>i2c_algorithm</b></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*<font color="#ff0000"><b>master_xfer</b></font>)(struct i2c_adapter *adap, struct i2c_msg *msgs, int num);
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*smbus_xfer) (struct i2c_adapter *adap, u16 addr,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;unsigned short flags, char read_write,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;u8 command, int size, union i2c_smbus_data *data);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* To determine what the adapter supports */
    </p>
    <p>
      &#160;&#160;&#160;&#160;u32 (*functionality) (struct i2c_adapter *);
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1387025752429" ID="ID_1812933240" MODIFIED="1387639625926">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* template for device creation */
    </p>
    <p>
      struct <font color="#6600ff"><b>i2c_board_info</b></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;char&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;type[I2C_NAME_SIZE];
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned short&#160;&#160;flags;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned short&#160;&#160;addr;
    </p>
    <p>
      &#160;&#160;&#160;&#160;void&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;*platform_data;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct dev_archdata *archdata;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct device_node *of_node;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct acpi_dev_node acpi_node;
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;&#160;&#160;&#160;irq;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1387026131699" ID="ID_1132906319" MODIFIED="1387026140639">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_board_info is used to build tables of information listing I2C devices
    </p>
    <p>
      that are present.&#160;&#160;This information is used to grow the driver model tree.
    </p>
    <p>
      For mainboards this is done statically using i2c_register_board_info();
    </p>
    <p>
      bus numbers identify adapters that aren't yet available.&#160;&#160;For add-on boards,
    </p>
    <p>
      i2c_new_device() does this dynamically with the adapter already known.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386566681040" ID="ID_959187503" MODIFIED="1386837385018" TEXT="drivers/i2c/i2c-core.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1386566717182" ID="ID_208470217" MODIFIED="1387027033120">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#6600ff"><b>i2c_devinfo</b></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head&#160;&#160;&#160;&#160;list;
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;busnum;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct i2c_board_info&#160;&#160;&#160;<font color="#6600ff"><b>board_info</b></font>;
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
<node CREATED="1386566915437" ID="ID_838152003" MODIFIED="1387639625932" TEXT="i2c_register_board_info(busnum, info, len)">
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
<node CREATED="1386579472153" ID="ID_1881982904" MODIFIED="1387639625940">
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
<node CREATED="1386645387898" ID="ID_424344602" MODIFIED="1387639625945">
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
<node CREATED="1386577955597" ID="ID_1854986455" MODIFIED="1387639625951">
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
<node CREATED="1386565761564" ID="ID_306080231" MODIFIED="1387025477377">
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
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;adap-&gt;dev.bus = &amp;<font color="#6600ff"><b>i2c_bus_type</b></font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;adap-&gt;dev.type = &amp;<font color="#6600ff"><b>i2c_adapter_type</b></font>;
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
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<font color="#0033ff"><b>i2c_new_device</b>()</font>
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
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<font color="#0033ff"><b>i2c_new_device</b>() </font>
    </p>
    <p>
      <font color="#0033ff">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </font><font color="#000000">list_add_tail(&amp;client-&gt;detected, &amp;driver-&gt;clients);</font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386562121189" ID="ID_558056265" MODIFIED="1387639625957">
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
<node CREATED="1386581425609" ID="ID_26770044" MODIFIED="1387639625967">
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
<node CREATED="1386581997451" ID="ID_152995318" MODIFIED="1387025489893">
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
      &#160;&#160;&#160;&#160;driver-&gt;driver.bus = &amp;<font color="#6600ff"><b>i2c_bus_type</b></font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;res = <font color="#cc0033"><b>driver_register</b></font>(&amp;driver-&gt;driver);
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
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<font color="#0033ff"><b>i2c_new_device</b>() </font>
    </p>
    <p>
      <font color="#0033ff">&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </font><font color="#000000">list_add_tail(&amp;client-&gt;detected, &amp;driver-&gt;clients);</font>
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
<node CREATED="1386657018156" ID="ID_1527151415" MODIFIED="1387639625969" TEXT="I2C protocal">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386654215775" ID="ID_1457201976" MODIFIED="1387639625971" TEXT="i2c_transfer(adap, msgs, num)">
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
<node CREATED="1386654483788" ID="ID_1370962570" MODIFIED="1387639625973">
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
<node CREATED="1386655331556" ID="ID_272063657" MODIFIED="1387639625975" TEXT="i2c_default_probe(adap, addr)">
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
<node CREATED="1386657032364" ID="ID_1403878210" MODIFIED="1387639625978" TEXT="SMBus protocal">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386660307384" ID="ID_780106523" MODIFIED="1387639625981" TEXT="i2c_smbus_xfer()">
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
<node CREATED="1386850370989" ID="ID_60097188" MODIFIED="1387639625988" TEXT="I2C Multiplexed bus driver">
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
</html></richcontent>
</node>
<node CREATED="1386854508061" ID="ID_163076454" MODIFIED="1387639625996">
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
</html></richcontent>
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
</html></richcontent>
</node>
</node>
<node CREATED="1386851293001" ID="ID_661246046" MODIFIED="1387639626000">
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
</html></richcontent>
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
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1386829299952" ID="ID_1463825158" MODIFIED="1387639626011" TEXT="I2C /dev entries driver">
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
<node CREATED="1386829432282" ID="ID_1381432606" MODIFIED="1387639626013">
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
<node CREATED="1386830934405" ID="ID_1087586178" MODIFIED="1387639626021">
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
<node CREATED="1386830633930" ID="ID_1740432312" MODIFIED="1387639626027">
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
<node CREATED="1386832610735" ID="ID_952454595" MODIFIED="1387639626031">
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
<node CREATED="1386830017418" ID="ID_807878740" MODIFIED="1387639626035">
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
<node CREATED="1386901114779" ID="ID_1662636845" MODIFIED="1387639626043" TEXT="I2C stub driver">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386901148610" ID="ID_686456387" MODIFIED="1386901161933" TEXT="drivers/i2c/i2c-stub.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1386901164242" ID="ID_1677742688" MODIFIED="1387639626047" TEXT="I2C/SMBus chip emulator">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386901230209" ID="ID_1108453791" MODIFIED="1386902588812">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct stub_chip *<b><font color="#6600ff">stub_chips</font></b>;
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386901232713" ID="ID_1239105113" MODIFIED="1386903208670">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#000000">stub_chip</font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;u8 pointer;
    </p>
    <p>
      &#160;&#160;&#160;&#160;u16 words[256];&#160;&#160;&#160;&#160;&#160;/* Byte operations use the LSB as per SMBus specification */
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386902840514" ID="ID_1140028937" MODIFIED="1387637403279">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct i2c_adapter <b><font color="#6600ff">stub_adapter</font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.owner&#160;&#160;&#160;&#160;&#160;&#160;= THIS_MODULE,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.class&#160;&#160;&#160;&#160;&#160;&#160;= I2C_CLASS_HWMON | I2C_CLASS_SPD,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.algo&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &amp;<b><font color="#6600ff">smbus_algorithm</font></b>,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.name&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &quot;SMBus stub driver&quot;,
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1386902741260" ID="ID_725264904" MODIFIED="1386903053051">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static const struct i2c_algorithm <b><font color="#6600ff">smbus_algorithm</font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.functionality&#160;&#160;= <font color="#000000">stub_func</font>,&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;.smbus_xfer = <b><font color="#0000ff">stub_xfer</font></b>,&#160;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1386902564894" ID="ID_866725830" MODIFIED="1387639626049">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      stub_xfer()
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386902604741" ID="ID_267085311" MODIFIED="1386902604741" TEXT=""/>
<node CREATED="1386902240507" ID="ID_1564537113" MODIFIED="1386902644340">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      stub_xfer(adap, addr, flags,&#160;read_write, command, size, data)
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct stub_chip *chip = NULL;
    </p>
    <p>
      &#160;&#160;&#160;&#160;chip = <b><font color="#6600ff">stub_chips</font></b>&#160;&#160;+ i;
    </p>
    <p>
      &#160;&#160;&#160;&#160;chip-&gt;pointer = command;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386902954069" ID="ID_350629315" MODIFIED="1387639626051">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static int __init i2c_stub_init(void)
    </p>
    <p>
      /static void __exit i2c_stub_exit(void)
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386903118218" ID="ID_402866461" MODIFIED="1386903194823">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static int __init i2c_stub_init(void)
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Allocate memory for all chips at once */
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#6600ff">stub_chips</font></b>&#160;= kzalloc(i * sizeof(struct stub_chip), GFP_KERNEL);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;ret = i2c_add_adapter(&amp;<b><font color="#6600ff">stub_adapter</font></b>);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1386920727348" ID="ID_223580320" MODIFIED="1387639626061" TEXT="SMBus extensions to the I2C protocol">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1386920745776" ID="ID_639602991" MODIFIED="1386920760586" TEXT="drivers/i2c/i2c-smbus.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1386920763216" ID="ID_695622774" MODIFIED="1387639626063">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">i2c_smbus_alert</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;alert_edge_triggered:1;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;irq;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct work_struct&#160;&#160;alert;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct i2c_client&#160;&#160;&#160;*ara;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Alert response address */&#160;&#160;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1386920799509" ID="ID_97272624" MODIFIED="1386923633436">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#000000">alert_data</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned short&#160;&#160;&#160;&#160;&#160;&#160;addr;
    </p>
    <p>
      &#160;&#160;&#160;&#160;u8&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;flag:1;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386920895763" ID="ID_435325719" MODIFIED="1387639626066">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct i2c_driver <b><font color="#6600ff">smbalert_driver</font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.driver = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.name&#160;&#160;&#160;= &quot;smbus_alert&quot;,&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;},
    </p>
    <p>
      &#160;&#160;&#160;&#160;.probe&#160;&#160;&#160;&#160;&#160;&#160;= <b><font color="#0000ff">smbalert_probe</font></b>,&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;.remove&#160;&#160;&#160;&#160;&#160;= smbalert_remove,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.id_table&#160;&#160;&#160;= <b>smbalert_ids</b>,&#160;&#160;&#160;
    </p>
    <p>
      };
    </p>
    <p>
      <b><font color="#ff0000">module_i2c_driver</font></b>(<b><font color="#6600ff">smbalert_driver</font></b>)
    </p>
  </body>
</html></richcontent>
<node CREATED="1386920887171" ID="ID_1301056453" MODIFIED="1386921294813">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static const struct i2c_device_id <b><font color="#000000">smbalert_ids</font></b>[] = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;{ &quot;smbus_alert&quot;, 0 },
    </p>
    <p>
      &#160;&#160;&#160;&#160;{ /* LIST END */ }
    </p>
    <p>
      };
    </p>
    <p>
      MODULE_DEVICE_TABLE(i2c, smbalert_ids);
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1386925451770" ID="ID_1790636665" MODIFIED="1387639626067" TEXT="Setup SMBus alert support">
<node CREATED="1386925274699" ID="ID_1676351521" MODIFIED="1386925383375">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_setup_smbus_alert()
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c_new_device()
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386925450090" ID="ID_617250352" MODIFIED="1387639626069" TEXT="Handle an SMBus alert">
<node CREATED="1386925373776" ID="ID_1744431559" MODIFIED="1386925390198">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_handle_smbus_alert()
    </p>
    <p>
      &#160;&#160;&#160;&#160;schedule_work(&amp;alert-&gt;alert);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386921376443" ID="ID_168385861" MODIFIED="1387639626072">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      smbalert_probe(ara, id)
    </p>
    <p>
      /smbalert_remove(ara)
    </p>
  </body>
</html></richcontent>
<node CREATED="1386922104972" ID="ID_1355266874" MODIFIED="1386922104972" TEXT=""/>
<node CREATED="1386921561791" ID="ID_248409127" MODIFIED="1386922045434">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      smbalert_probe(ara, id)
    </p>
    <p>
      &#160;&#160;&#160;&#160;alert-&gt;alert_edge_triggered = setup-&gt;alert_edge_triggered;
    </p>
    <p>
      &#160;&#160;&#160;&#160;alert-&gt;irq = setup-&gt;irq;
    </p>
    <p>
      &#160;&#160;&#160;&#160;INIT_WORK(&amp;alert-&gt;alert, <b><font color="#0000ff">smbus_alert</font></b>);
    </p>
    <p>
      &#160;&#160;&#160;&#160;alert-&gt;ara = ara;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;devm_request_irq(&amp;ara-&gt;dev, setup-&gt;irq, <b><font color="#0000ff">smbalert_irq</font></b>, 0, &quot;smbus_alert&quot;, alert);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c_set_clientdata(ara, alert);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386922198285" ID="ID_1451765340" MODIFIED="1387639626075" TEXT="smbalert_irq(int irq, void *d)">
<node CREATED="1386922634059" ID="ID_1038505360" MODIFIED="1386922634059" TEXT=""/>
<node CREATED="1386922494856" ID="ID_1820243204" MODIFIED="1386923313466">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      smbalert_irq(int irq, void *d)
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct i2c_smbus_alert *alert = d;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#ff0000">disable_irq_nosync</font></b>(irq);
    </p>
    <p>
      &#160;&#160;&#160; <b><font color="#ff0000">schedule_work</font></b>(&amp;alert-&gt;alert);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386922788809" ID="ID_1981824037" MODIFIED="1387639626078" TEXT="smbus_alert(work)">
<node CREATED="1386923358831" ID="ID_1072436545" MODIFIED="1386923358831" TEXT=""/>
<node CREATED="1386922810572" ID="ID_1418180784" MODIFIED="1386923322642">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static void smbus_alert(struct work_struct *work)
    </p>
    <p>
      &#160;&#160;&#160;&#160;status = i2c_smbus_read_byte(ara);
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Notify driver for the device which issued the alert */
    </p>
    <p>
      &#160;&#160;&#160;&#160;device_for_each_child(&amp;ara-&gt;adapter-&gt;dev, &amp;data,<b><font color="#0000ff">smbus_do_alert</font></b>);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#ff0000">enable_irq</font></b>(alert-&gt;irq);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1386923375180" ID="ID_1024924005" MODIFIED="1387639626080" TEXT="smbus_do_alert(dev, addrp)">
<node CREATED="1386923558547" ID="ID_874899733" MODIFIED="1386923558547" TEXT=""/>
<node CREATED="1386923511990" ID="ID_591570992" MODIFIED="1386923591013">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      smbus_do_alert(dev, addrp)
    </p>
    <p>
      &#160;&#160;&#160;&#160;device_lock(dev);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#ff0000">client-&gt;driver-&gt;alert</font></b>(client, data-&gt;flag);
    </p>
    <p>
      &#160;&#160;&#160;&#160;device_unlock(dev);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1387606681253" ID="ID_686318781" MODIFIED="1387639211016" POSITION="right" TEXT="I2C example">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1387637133616" ID="ID_1066129414" MODIFIED="1387639626101" TEXT="MINI2440 I2C board specific">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1387638466652" ID="ID_623387066" MODIFIED="1387639218267" TEXT="platform devices">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1387638486918" ID="ID_504152091" MODIFIED="1387638541780" TEXT="arch/arm/plat-samsung/devs.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1387638543631" ID="ID_500819615" MODIFIED="1387638783836">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct resource <font color="#6600ff"><b>s3c_i2c0_resource</b></font>[] = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;[0] = DEFINE_RES_MEM(S3C_PA_IIC, SZ_4K),
    </p>
    <p>
      &#160;&#160;&#160;&#160;[1] = DEFINE_RES_IRQ(IRQ_IIC),
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1387638624182" ID="ID_1190061183" MODIFIED="1387638758437">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct platform_device <font color="#6600ff"><b>s3c_device_i2c0</b></font>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.name&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &quot;s3c2410-i2c&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.id&#160;&#160;&#160;&#160;&#160;= 0,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.num_resources&#160;&#160;= ARRAY_SIZE(<font color="#6600ff"><b>s3c_i2c0_resource</b></font>),
    </p>
    <p>
      &#160;&#160;&#160;&#160;.resource&#160;&#160;&#160;= s3c_i2c0_resource,
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1387637385268" ID="ID_1950246786" MODIFIED="1387638461998" TEXT="arch/arm/mach-s3c24xx/mach-mini2440.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1387638911410" ID="ID_69984574" MODIFIED="1387639089467">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct platform_device *<font color="#6600ff"><b>mini2440_devices</b></font>[] __initdata = {
    </p>
    <p>
      ...
    </p>
    <p>
      &#160;&#160;&#160;&#160;&amp;<font color="#6600ff"><b>s3c_device_i2c0</b></font>,
    </p>
    <p>
      ...
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1387637717654" ID="ID_245089107" MODIFIED="1387639218270">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff">mini2440_init()</font>
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1387637778956" ID="ID_1045706761" MODIFIED="1387637858790" TEXT=""/>
<node CREATED="1387637783834" ID="ID_871250695" MODIFIED="1387639066976">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static void __init <font color="#000000">mini2440_init</font>(void)
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;<font color="#ff0000"><b>platform_add_devices</b></font>(<font color="#6600ff"><b>mini2440_devices</b></font>, ARRAY_SIZE(mini2440_devices));
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1387637909695" ID="ID_246037059" MODIFIED="1387639218276" TEXT="i2c devices">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1387637385268" ID="ID_1284093478" MODIFIED="1387638461998" TEXT="arch/arm/mach-s3c24xx/mach-mini2440.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1387637414131" ID="ID_515613542" MODIFIED="1387638479783">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct at24_platform_data <font color="#6600ff"><b>at24c08</b></font>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.byte_len&#160;&#160;&#160;= SZ_8K / 8,&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;.page_size&#160;&#160;= 16,
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1387637651236" ID="ID_1691271227" MODIFIED="1387638141194">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct i2c_board_info <font color="#6600ff"><b>mini2440_i2c_devs</b></font>[] __initdata = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;{&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;I2C_BOARD_INFO(&quot;24c08&quot;, 0x50),
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.platform_data = &amp;<font color="#6600ff"><b>at24c08</b></font>,&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;},
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1387637717654" ID="ID_314289850" MODIFIED="1387639218279">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff">mini2440_init()</font>
    </p>
  </body>
</html>
</richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1387637778956" ID="ID_856363458" MODIFIED="1387637858790" TEXT=""/>
<node CREATED="1387637783834" ID="ID_611448845" MODIFIED="1387638123061">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static void __init <font color="#000000">mini2440_init</font>(void)
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;<font color="#ff0000"><b>i2c_register_board_info</b></font>(0, <font color="#6600ff"><b>mini2440_i2c_devs</b></font>, ARRAY_SIZE(mini2440_i2c_devs));
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1387606036869" ID="ID_69172693" MODIFIED="1387639626106" TEXT="S3C2410 I2C Controller">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1387607958368" ID="ID_269254366" MODIFIED="1387608029839" TEXT="drivers/i2c/busses/i2c-s3c2410.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1387608038058" ID="ID_48844617" MODIFIED="1387627116382">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#6600ff"><b>s3c24xx_i2c</b></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;wait_queue_head_t&#160;&#160;&#160;wait;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct i2c_msg&#160;&#160;&#160;&#160;&#160;&#160;*msg;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;msg_num;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;msg_idx;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;msg_ptr;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;irq;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;void __iomem&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;*regs;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct device&#160;&#160;&#160;&#160;&#160;&#160;&#160;*dev;
    </p>
    <p>
      &#160;&#160;&#160; <font color="#ff0000"><b>struct i2c_adapter&#160;&#160;adap;</b></font>
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct s3c2410_platform_i2c *pdata;
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1387636285621" ID="ID_391017260" MODIFIED="1387639626114" TEXT="platform driver">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1387636317140" ID="ID_734267201" MODIFIED="1387636375583" TEXT="device driver for platform bus bits">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1387608525934" ID="ID_1763268698" MODIFIED="1387636540563">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct platform_device_id <font color="#6600ff"><b>s3c24xx_driver_ids</b></font>[] = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;{&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.name&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &quot;s3c2410-i2c&quot;,&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.driver_data&#160;&#160;&#160;&#160;= 0,
    </p>
    <p>
      &#160;&#160;&#160;&#160;}, {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.name&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &quot;s3c2440-i2c&quot;,&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.driver_data&#160;&#160;&#160;&#160;= QUIRK_S3C2440,
    </p>
    <p>
      &#160;&#160;&#160;&#160;}, {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.name&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &quot;s3c2440-hdmiphy-i2c&quot;,&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.driver_data&#160;&#160;&#160;&#160;= QUIRK_S3C2440 | QUIRK_HDMIPHY | QUIRK_NO_GPIO,
    </p>
    <p>
      &#160;&#160;&#160;&#160;}, { },
    </p>
    <p>
      };
    </p>
    <p>
      MODULE_DEVICE_TABLE(platform, s3c24xx_driver_ids);
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1387608572864" ID="ID_122260290" MODIFIED="1387639626132">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct platform_driver <font color="#6600ff"><b>s3c24xx_i2c_driver</b></font>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.probe&#160;&#160;&#160;&#160;&#160;&#160;= <font color="#0000ff"><b>s3c24xx_i2c_probe</b></font>,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.remove&#160;&#160;&#160;&#160;&#160;= s3c24xx_i2c_remove,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.id_table&#160;&#160;&#160;= <font color="#6600ff"><b>s3c24xx_driver_ids</b></font>,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.driver&#160;&#160;&#160;&#160;&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.owner&#160;&#160;= THIS_MODULE,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.name&#160;&#160;&#160;= &quot;s3c-i2c&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.pm = S3C24XX_DEV_PM_OPS,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;.of_match_table = of_match_ptr(s3c24xx_i2c_match),
    </p>
    <p>
      &#160;&#160;&#160;&#160;},
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1387634232902" ID="ID_1601334840" MODIFIED="1387634237107" TEXT="called by the bus driver when a suitable device is found">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1387634060698" ID="ID_1646392176" MODIFIED="1387639626136">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><b>s3c24xx_i2c_probe</b></font>(struct platform_device *pdev)
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;strlcpy(i2c-&gt;adap.name, &quot;s3c2410-i2c&quot;, sizeof(i2c-&gt;adap.name));
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c-&gt;adap.owner&#160;&#160;&#160;= THIS_MODULE;
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c-&gt;adap.algo&#160;&#160;&#160;&#160;= &amp;<font color="#6600ff"><b>s3c24xx_i2c_algorithm</b></font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* map the registers */
    </p>
    <p>
      &#160;&#160;&#160;&#160;res = platform_get_resource(pdev, IORESOURCE_MEM, 0);
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c-&gt;regs = devm_ioremap_resource(&amp;pdev-&gt;dev, res);
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* setup info block for the i2c core */
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c-&gt;adap.algo_data = i2c;
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c-&gt;adap.dev.parent = &amp;pdev-&gt;dev;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* initialise the i2c controller */
    </p>
    <p>
      &#160;&#160;&#160;&#160;ret = <font color="#0000ff"><b>s3c24xx_i2c_init</b></font>(i2c);
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* find the IRQ for this unit (note, this relies on the init call to
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;* ensure no current IRQs pending
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;*/
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c-&gt;irq = platform_get_irq(pdev, 0);
    </p>
    <p>
      &#160;&#160;&#160;&#160;ret = devm_request_irq(&amp;pdev-&gt;dev, i2c-&gt;irq, s3c24xx_i2c_irq, 0,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;dev_name(&amp;pdev-&gt;dev), i2c);
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c-&gt;adap.nr = i2c-&gt;pdata-&gt;bus_num;
    </p>
    <p>
      &#160;&#160;&#160;&#160;ret = <font color="#ff0000"><b>i2c_add_numbered_adapter</b></font>(&amp;i2c-&gt;adap);
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;platform_set_drvdata(pdev, i2c);
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1387627403432" ID="ID_991318749" MODIFIED="1387627410854" TEXT="initialise the controller, set the IO lines and frequency">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1387627198166" ID="ID_1049053733" MODIFIED="1387636721710">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><b>s3c24xx_i2c_init</b></font>(i2c)
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long iicon = S3C2410_IICCON_IRQEN | S3C2410_IICCON_ACKEN;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* write slave address */
    </p>
    <p>
      &#160;&#160;&#160;&#160;writeb(pdata-&gt;slave_addr, i2c-&gt;regs + S3C2410_IICADD);
    </p>
    <p>
      &#160;&#160;&#160;&#160;writel(iicon, i2c-&gt;regs + S3C2410_IICCON);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* we need to work out the divisors for the clock... */
    </p>
    <p>
      &#160;&#160;&#160;&#160;s3c24xx_i2c_clockrate(i2c, &amp;freq)
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1387633901837" ID="ID_1338184200" MODIFIED="1387639626138">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      i2c_adap_s3c_init()
    </p>
    <p>
      /i2c_adap_s3c_exit()
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1387636646033" ID="ID_1822405169" MODIFIED="1387636646033" TEXT=""/>
<node CREATED="1387633945257" ID="ID_1975312651" MODIFIED="1387634167780">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static int __init i2c_adap_s3c_init(void)
    </p>
    <p>
      &#160;&#160;&#160;&#160;<font color="#ff0000"><b>platform_driver_register</b></font>(&amp;<font color="#6600ff"><b>s3c24xx_i2c_driver</b></font>);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1387636777180" ID="ID_241629133" MODIFIED="1387639626141" TEXT="i2c adapt driver">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1387613101799" ID="ID_848980447" MODIFIED="1387639626151">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static const struct i2c_algorithm <font color="#6600ff"><b>s3c24xx_i2c_algorithm</b></font>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.master_xfer&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;= <font color="#0000ff"><b>s3c24xx_i2c_xfer</b></font>,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.functionality&#160;&#160;&#160;&#160;&#160;&#160;= s3c24xx_i2c_func,
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1387613457236" ID="ID_112446555" MODIFIED="1387636864179" TEXT="starts an i2c transfer">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1387613281965" ID="ID_847138677" MODIFIED="1387636849908">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><b>s3c24xx_i2c_xfer(adap, msgs, num)</b></font>
    </p>
    <p>
      &#160;&#160;&#160;&#160;s3c24xx_i2c_doxfer(i2c, msgs, num)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* get the i2c bus for a master transaction */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<font color="#0000ff"><b>s3c24xx_i2c_set_master</b></font>(i2c)
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;while (timeout-- &gt; 0) { </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;iicstat = readl(i2c-&gt;regs + S3C2410_IICSTAT); </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if (!(iicstat &amp; S3C2410_IICSTAT_BUSBUSY)) </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return 0; </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;msleep(1); </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;} </i>
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c-&gt;msg&#160;&#160;&#160;&#160;&#160;= msgs;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c-&gt;msg_num = num;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c-&gt;msg_ptr = 0;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c-&gt;msg_idx = 0;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;i2c-&gt;state&#160;&#160;&#160;= STATE_START;
    </p>
    <p>
      &#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<font color="#0000ff"><b>s3c24xx_i2c_enable_irq</b></font>(i2c);
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;tmp = readl(i2c-&gt;regs + S3C2410_IICCON); </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;writel(tmp | S3C2410_IICCON_IRQEN, i2c-&gt;regs + S3C2410_IICCON);</i>
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* put the start of a message onto the bus */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<font color="#0000ff"><b>s3c24xx_i2c_message_start</b></font>(i2c, msgs);
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;unsigned int addr = (msg-&gt;addr &amp; 0x7f) &lt;&lt; 1; </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;s3c24xx_i2c_enable_ack(i2c); </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;tmp = readl(i2c-&gt;regs + S3C2410_IICCON); </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;writel(tmp | S3C2410_IICCON_ACKEN, i2c-&gt;regs + S3C2410_IICCON); </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;... </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;writel(stat, i2c-&gt;regs + S3C2410_IICSTAT); </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;writeb(addr, i2c-&gt;regs + S3C2410_IICDS); </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;writel(iiccon, i2c-&gt;regs + S3C2410_IICCON); </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;stat |= S3C2410_IICSTAT_START; </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;writel(stat, i2c-&gt;regs + S3C2410_IICSTAT);</i>
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<font color="#0000ff"><b>wait_event_timeout</b></font>(i2c-&gt;wait, i2c-&gt;msg_num == 0, HZ * 5);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* wait for the i2c bus to become idle. */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<font color="#0000ff"><b>s3c24xx_i2c_wait_idle</b></font>(i2c);
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;while ((iicstat &amp; S3C2410_IICSTAT_START) &amp;&amp; --spins) { </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;cpu_relax(); </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;iicstat = readl(i2c-&gt;regs + S3C2410_IICSTAT); </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}</i>
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1387606184683" ID="ID_1819536132" MODIFIED="1387639597276" TEXT="AT24CXX I2C EEPROM">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1387638375538" ID="ID_1311359025" MODIFIED="1387638387293" TEXT="drivers/misc/eeprom/at24.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1387638392355" ID="ID_1091246838" MODIFIED="1387638392355" TEXT=""/>
</node>
</node>
</node>
</map>
