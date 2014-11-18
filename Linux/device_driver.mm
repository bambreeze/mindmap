<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1395825467023" ID="ID_507666999" MODIFIED="1401348714971" TEXT="Device Driver">
<node CREATED="1416287874772" ID="ID_1351493285" MODIFIED="1416288484444" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff"><i>Memory mappings</i></font></b>&#160;are used directly in the kernel when implementing device drivers. The input and output areas of peripheral devices can be mapped into virtual address space; reads and writes to these areas are then redirected to the devices by the system, thus greatly simplifying driver implementation.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1395370144693" ID="ID_1250662614" MODIFIED="1401348816060" POSITION="right" TEXT="Modules">
<node CREATED="1401243282690" ID="ID_304851151" MODIFIED="1401243290603" TEXT="The mechanism by which the Linux kernel can load and unload object code on demand.">
<icon BUILTIN="idea"/>
</node>
<node CREATED="1395826469380" ID="ID_1215982136" MODIFIED="1401348817111" TEXT="Hello World!">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1312597499356" ID="ID_1569495753" MODIFIED="1401348819023" TEXT="Edit">
<node CREATED="1312597528995" ID="ID_1591229350" MODIFIED="1401346776683">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>module_init</b></i>(hello_init);
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1312597534889" ID="ID_1605905863" MODIFIED="1401346783024">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>module_exit</b></i>(hello_exit);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312597508819" ID="ID_1290602893" MODIFIED="1312600044941" TEXT="Build"/>
<node CREATED="1312597514093" ID="ID_70255829" MODIFIED="1401348822554" TEXT="Run">
<node CREATED="1395370442185" FOLDED="true" ID="ID_234623858" MODIFIED="1401348814472">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><i>insmod</i></b>&#160;- link a module into the running kernel
    </p>
  </body>
</html></richcontent>
<node CREATED="1395371425221" ID="ID_361541725" MODIFIED="1395371592910" TEXT="/lib/modules">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1395371255536" ID="ID_703417671" MODIFIED="1395371633576">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#000000"><i>modprobe</i></font></b>&#160;- Linking Modules on Demand
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1395371320391" ID="ID_266005901" MODIFIED="1395371625118">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#000000"><i>depmod</i></font></b>&#160;- executed at system startup, writes all module dependencies to a file named modules.dep
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1395370464153" ID="ID_40621702" MODIFIED="1395370526049">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><i>rmmod</i></b>&#160;- unlink a module
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312597517485" FOLDED="true" ID="ID_922891249" MODIFIED="1401348814472" TEXT="Debug">
<node CREATED="1312597614008" MODIFIED="1312597621940" TEXT="printk"/>
<node CREATED="1312597623157" MODIFIED="1312597626808" TEXT="/proc"/>
<node CREATED="1312597627306" MODIFIED="1312597631092" TEXT="strace"/>
</node>
</node>
</node>
<node CREATED="1395825477513" ID="ID_1572285846" MODIFIED="1401348763145" POSITION="right" TEXT="Device Driver Model">
<node CREATED="1401243580288" ID="ID_1971387477" MODIFIED="1401243599139">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>Kernel objects</b></i>&#160;support for adding simple object-oriented behavior and a parent/child relationship to kernel data structures.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1312873812243" ID="ID_1657487878" MODIFIED="1401348764682" TEXT="Fundamental">
<node CREATED="1312873817885" FOLDED="true" ID="ID_1700832190" MODIFIED="1401348795821" TEXT="kobject">
<node CREATED="1401343289390" ID="ID_1729727988" MODIFIED="1401344047306">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Kobject provides basic facilities, such as reference counting, a name, and a parent pointer, enabling the creation of a <b><i><font color="#0000ff">hierarchy of objects</font></i></b>.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1401342153989" ID="ID_261703795" MODIFIED="1401342249014" TEXT="include/linux/kobject.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1401342140872" ID="ID_999889693" MODIFIED="1401348789177">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>kobject</b></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;const char&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;*name;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head&#160;&#160;&#160;&#160;&#160;entry;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct kobject&#160;&#160;&#160;&#160;&#160;&#160;*parent;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct kset&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;*kset;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct kobj_type&#160;&#160;&#160;*ktype;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct kref&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;kref;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1401344004081" FOLDED="true" ID="ID_619549415" MODIFIED="1401348777260" TEXT="ktypes">
<node CREATED="1401343117494" ID="ID_122562785" MODIFIED="1401344040540">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Ktypes describe <b><i><font color="#0000ff">default behavior</font></i></b>&#160;for a family of kobjects.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1401342153989" ID="ID_1663865505" MODIFIED="1401344021730" TEXT="include/linux/kobject.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1312873850299" FOLDED="true" ID="ID_1106387046" MODIFIED="1401348760757">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>kobj_type</b></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;void (*release)(struct kobject *kobj);
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct sysfs_ops *sysfs_ops;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct attribute **default_attrs;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1401342605194" ID="ID_1086372077" MODIFIED="1401342610992" TEXT="include/linux/sysfs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1312873889981" ID="ID_1003257936" MODIFIED="1401342889957">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>attribute</b></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;const char&#160;&#160;&#160;&#160;&#160;&#160;*name;
    </p>
    <p>
      &#160;&#160;&#160;&#160;umode_t&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mode;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1312873899661" ID="ID_1359161688" MODIFIED="1401342991777">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>sysfs_ops</b></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;ssize_t (*<i><b>show</b></i>)(struct kobject *, struct attribute *, char *);
    </p>
    <p>
      &#160;&#160;&#160;&#160;ssize_t (*<i><b>store</b></i>)(struct kobject *, struct attribute *, const char *, size_t);
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1312873836803" FOLDED="true" ID="ID_1187258699" MODIFIED="1401348776272" TEXT="kset">
<node CREATED="1401343584980" ID="ID_29146692" MODIFIED="1401343630431">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Ksets are aggregate <b><i><font color="#0000ff">collections</font></i></b>&#160;of kobjects, and it work as the base <b><font color="#0000ff"><i>container</i></font></b>&#160;class for a set of kernel objects.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1401342153989" ID="ID_589091205" MODIFIED="1401344032349" TEXT="include/linux/kobject.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1401343967112" ID="ID_1279682056" MODIFIED="1401343983918">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>kset</b></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head list;
    </p>
    <p>
      &#160;&#160;&#160;&#160;spinlock_t list_lock;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct kobject kobj;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct kset_uevent_ops *uevent_ops;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1312873946960" FOLDED="true" ID="ID_60468300" MODIFIED="1401348799896" TEXT="Buses">
<node CREATED="1312874010762" FOLDED="true" ID="ID_1235244092" MODIFIED="1401348760758" TEXT="struct bus_type">
<node CREATED="1312874038476" MODIFIED="1312874048720" TEXT="struct kset drivers;"/>
<node CREATED="1312874056645" MODIFIED="1312874058552" TEXT="struct kset devices;"/>
<node CREATED="1312874083360" MODIFIED="1312874092226" TEXT="hotplug()"/>
<node CREATED="1312874092942" MODIFIED="1312874098650" TEXT="match()"/>
<node CREATED="1312874099342" MODIFIED="1312874100963" TEXT="add()"/>
</node>
<node CREATED="1312874119303" ID="ID_1556244924" MODIFIED="1312874246856" TEXT="bus_register()/bus_unregister()"/>
<node CREATED="1312874165025" FOLDED="true" ID="ID_372653161" MODIFIED="1401348760758" TEXT="struct bus_attribute">
<node CREATED="1312874195059" MODIFIED="1312874223144" TEXT="struct attribute"/>
<node CREATED="1312874228780" MODIFIED="1312874231160" TEXT="show()"/>
<node CREATED="1312874231515" MODIFIED="1312874234288" TEXT="store()"/>
</node>
</node>
<node CREATED="1312873959176" FOLDED="true" ID="ID_192274975" MODIFIED="1401348760758" TEXT="Devices">
<node CREATED="1312874278326" MODIFIED="1312874282866" TEXT="struct device"/>
<node CREATED="1312874293623" ID="ID_1793553819" MODIFIED="1312874302467" TEXT="device_register()/device_unregister()"/>
<node CREATED="1312874165025" FOLDED="true" ID="ID_642601388" MODIFIED="1401348760758" TEXT="struct device_attribute">
<node CREATED="1312874195059" MODIFIED="1312874223144" TEXT="struct attribute"/>
<node CREATED="1312874228780" MODIFIED="1312874231160" TEXT="show()"/>
<node CREATED="1312874231515" MODIFIED="1312874234288" TEXT="store()"/>
</node>
</node>
<node CREATED="1312873959176" FOLDED="true" ID="ID_1299462828" MODIFIED="1401348760758" TEXT="Drivers">
<node CREATED="1312874278326" MODIFIED="1312874379998" TEXT="struct device_driver"/>
<node CREATED="1312874293623" MODIFIED="1312874396818" TEXT="driver_register()/driver_unregister()"/>
<node CREATED="1312874165025" FOLDED="true" ID="ID_1336114304" MODIFIED="1401348760758" TEXT="struct driver_attribute">
<node CREATED="1312874195059" MODIFIED="1312874223144" TEXT="struct attribute"/>
<node CREATED="1312874228780" MODIFIED="1312874231160" TEXT="show()"/>
<node CREATED="1312874231515" MODIFIED="1312874234288" TEXT="store()"/>
</node>
</node>
</node>
<node CREATED="1395825518639" FOLDED="true" ID="ID_529241859" MODIFIED="1401348839168" POSITION="right" TEXT="Char Drivers">
<node CREATED="1312597736302" FOLDED="true" ID="ID_1375400438" MODIFIED="1401348714965" TEXT="Device Numbers">
<node CREATED="1312597814242" FOLDED="true" ID="ID_1415413903" MODIFIED="1401348714965" TEXT="static">
<node CREATED="1312598187522" MODIFIED="1312598226015" TEXT="register_chrdev_region()">
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1312598880837" MODIFIED="1312598899729" TEXT="unregister_chrdev_region()"/>
</node>
<node CREATED="1312597923609" FOLDED="true" ID="ID_96287403" MODIFIED="1401348714965" TEXT="dynamic">
<node CREATED="1312598071440" MODIFIED="1312598737734" TEXT="alloc_chrdev_region()">
<icon BUILTIN="button_ok"/>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1312598086840" MODIFIED="1312598232502" TEXT="unregister_chrdev_region()">
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node CREATED="1312598401897" FOLDED="true" ID="ID_782850492" MODIFIED="1401348714966" TEXT="Char Device Registration">
<node CREATED="1312598482318" FOLDED="true" ID="ID_849074757" MODIFIED="1401348714965" TEXT="allocate">
<node CREATED="1312598547309" MODIFIED="1312598745206" TEXT="cdev_alloc()">
<icon BUILTIN="full-2"/>
</node>
</node>
<node CREATED="1312598511565" FOLDED="true" ID="ID_1122063975" MODIFIED="1401348714965" TEXT="initialize">
<node CREATED="1312598556146" MODIFIED="1312598747839" TEXT="cdev_init()">
<icon BUILTIN="full-3"/>
</node>
</node>
<node CREATED="1312598522740" FOLDED="true" ID="ID_1754514349" MODIFIED="1401348714965" TEXT="add">
<node CREATED="1312598593855" MODIFIED="1312598819839" TEXT="cdev_add()">
<icon BUILTIN="full-4"/>
</node>
</node>
<node CREATED="1312598678277" FOLDED="true" ID="ID_322516029" MODIFIED="1401348714965" TEXT="remove">
<node CREATED="1312598683904" MODIFIED="1312598689809" TEXT="cdev_del()"/>
</node>
</node>
<node CREATED="1312599323579" FOLDED="true" ID="ID_29382506" MODIFIED="1401348714967" TEXT="file_operations">
<node CREATED="1312599712775" MODIFIED="1312600242007" TEXT=".owner = THIS_MODULE"/>
<node CREATED="1312599719640" MODIFIED="1312599727576" TEXT="llseek()"/>
<node CREATED="1312599729144" FOLDED="true" ID="ID_1196935203" MODIFIED="1401348714966" TEXT="read()">
<node CREATED="1312600583939" FOLDED="true" ID="ID_45191474" MODIFIED="1401348714966" TEXT="Blocking">
<node CREATED="1312600681308" MODIFIED="1312600721320" TEXT="wait_event_interruptible()"/>
<node CREATED="1312600780364" MODIFIED="1312600784447" TEXT="wake_up_interruptible()"/>
</node>
<node CREATED="1312600655329" MODIFIED="1312600665815" TEXT="Nonblocking"/>
</node>
<node CREATED="1312599750187" FOLDED="true" ID="ID_1476734027" MODIFIED="1401348714966" TEXT="write()">
<node CREATED="1312601236734" MODIFIED="1312601240297" TEXT="Blocking"/>
<node CREATED="1312601246604" MODIFIED="1312601252232" TEXT="Nonblocking"/>
</node>
<node CREATED="1312600989392" FOLDED="true" ID="ID_1222238779" MODIFIED="1401348714966" STYLE="fork" TEXT="poll()">
<node CREATED="1312601257396" MODIFIED="1312601262071" TEXT="Nonblocking"/>
</node>
<node CREATED="1312600996310" FOLDED="true" ID="ID_1781880407" MODIFIED="1401348714966" STYLE="fork" TEXT="fsync()">
<node CREATED="1312601264590" MODIFIED="1312601268187" TEXT="Nonblocking"/>
</node>
<node CREATED="1312599755105" MODIFIED="1312599760453" TEXT="ioctl()"/>
<node CREATED="1312599761454" MODIFIED="1312599765606" TEXT="open()"/>
<node CREATED="1312599766475" MODIFIED="1312599770545" TEXT="release()"/>
</node>
</node>
<node CREATED="1395825628805" FOLDED="true" ID="ID_811771525" MODIFIED="1401348845667" POSITION="right" TEXT="Block Drivers">
<node CREATED="1312607288720" FOLDED="true" ID="ID_873448620" MODIFIED="1401348714967" TEXT="Block Driver Registration">
<node CREATED="1312607372973" MODIFIED="1312608008417" TEXT="register_blkdev()">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1312607378847" MODIFIED="1312607390879" TEXT="unregister_blkdev()"/>
</node>
<node CREATED="1312607318780" FOLDED="true" ID="ID_1117104864" MODIFIED="1401348714967" TEXT="Disk Registration">
<node CREATED="1312607725722" FOLDED="true" ID="ID_1727230834" MODIFIED="1401348714967" TEXT="allocate">
<node CREATED="1312607739049" MODIFIED="1312608108496" TEXT="alloc_disk()">
<icon BUILTIN="full-2"/>
</node>
</node>
<node CREATED="1312607759584" FOLDED="true" ID="ID_1802261415" MODIFIED="1401348714967" TEXT="initialize &amp; add">
<node CREATED="1312607874466" MODIFIED="1312608116002" TEXT="add_disk()">
<icon BUILTIN="full-3"/>
</node>
</node>
<node CREATED="1312607866968" FOLDED="true" ID="ID_1787174838" MODIFIED="1401348714967" TEXT="remove">
<node CREATED="1312607905256" MODIFIED="1312607921602" TEXT="del_gendisk()"/>
</node>
</node>
<node CREATED="1312609125885" FOLDED="true" ID="ID_1252535276" MODIFIED="1401348714968" TEXT="Request Queues">
<node CREATED="1312609134355" FOLDED="true" ID="ID_1120997761" MODIFIED="1401348714968" TEXT="create">
<node CREATED="1312609142258" MODIFIED="1312609153689" TEXT="blk_init_queue()"/>
</node>
<node CREATED="1312609384270" FOLDED="true" ID="ID_1016894501" MODIFIED="1401348714968" TEXT="deletion">
<node CREATED="1312609389573" MODIFIED="1312609404161" TEXT="blk_clenup_queue()"/>
</node>
<node CREATED="1312609440541" FOLDED="true" ID="ID_1212808185" MODIFIED="1401348714968" TEXT="next request">
<node CREATED="1312609451263" MODIFIED="1312609455130" TEXT="elv_next_request()"/>
</node>
<node CREATED="1312609457343" FOLDED="true" ID="ID_1247812226" MODIFIED="1401348714968" TEXT="remove request">
<node CREATED="1312609464577" MODIFIED="1312609475960" TEXT="blkdev_dequeue_request()"/>
</node>
<node CREATED="1312609535301" FOLDED="true" ID="ID_8665577" MODIFIED="1401348714968" TEXT="redo dequeued request">
<node CREATED="1312609544581" ID="ID_527765794" MODIFIED="1312609558800" TEXT="elv_requeue_request()"/>
</node>
<node CREATED="1312609759184" FOLDED="true" ID="ID_635639232" MODIFIED="1401348714968" TEXT="control">
<node CREATED="1312609777680" MODIFIED="1312609785859" TEXT="blk_stop_queue()"/>
<node CREATED="1312609787124" MODIFIED="1312609794949" TEXT="blk_start_queue()"/>
</node>
</node>
<node CREATED="1312608412418" FOLDED="true" ID="ID_1422328474" MODIFIED="1401348714969" TEXT="Request Processing">
<node CREATED="1312608516649" MODIFIED="1312608540122" TEXT="simple"/>
<node CREATED="1312608649916" FOLDED="true" ID="ID_1059595428" MODIFIED="1401348714968" TEXT="full">
<node CREATED="1312610413273" MODIFIED="1312610439821" TEXT="elv_next_request()"/>
<node CREATED="1312610470530" MODIFIED="1312611181928" TEXT="transfer a full request...">
<icon BUILTIN="pencil"/>
</node>
<node CREATED="1312610501608" MODIFIED="1312610505068" TEXT="end_that_request_first()"/>
<node CREATED="1312610517409" MODIFIED="1312610520278" TEXT="blkdev_dequeue_request()"/>
<node CREATED="1312610521239" MODIFIED="1312610533543" TEXT="end_that_request_last()"/>
</node>
<node CREATED="1312608652956" MODIFIED="1312608655403" TEXT="no queue"/>
</node>
<node CREATED="1312607445299" FOLDED="true" ID="ID_1426643785" MODIFIED="1401348844671" TEXT="Data Structures">
<node CREATED="1312607539746" FOLDED="true" ID="ID_1172688634" MODIFIED="1401348714969" TEXT="block_device_operations">
<node CREATED="1312607547963" MODIFIED="1312607554934" TEXT="open()"/>
<node CREATED="1312607556862" MODIFIED="1312607560257" TEXT="release()"/>
<node CREATED="1312607561114" MODIFIED="1312607565487" TEXT="ioctl()"/>
<node CREATED="1312607606422" MODIFIED="1312607615197" TEXT="media_changed()"/>
</node>
<node CREATED="1312607515331" MODIFIED="1312607524444" TEXT="gendisk"/>
<node CREATED="1312609230315" MODIFIED="1312609294199" TEXT="request_fn_proc*"/>
<node CREATED="1312609177750" MODIFIED="1312609180120" TEXT="request_queue"/>
<node CREATED="1312609700656" FOLDED="true" ID="ID_1296936418" MODIFIED="1401348714969" TEXT="request">
<node CREATED="1312609981366" FOLDED="true" ID="ID_1011495079" MODIFIED="1401348714969" TEXT="bio">
<node CREATED="1312610087177" FOLDED="true" ID="ID_850725048" MODIFIED="1401348714969" TEXT="bi_io_vec">
<node CREATED="1312610097455" MODIFIED="1312610111385" TEXT="bv_page"/>
<node CREATED="1312610113594" MODIFIED="1312610118001" TEXT="bv_len"/>
<node CREATED="1312610118594" MODIFIED="1312610121956" TEXT="bv_offset"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1395825663300" FOLDED="true" ID="ID_697081787" MODIFIED="1401348847607" POSITION="right" TEXT="Network Drivers">
<node CREATED="1312611471718" FOLDED="true" ID="ID_212144857" MODIFIED="1401348714970" TEXT="Device Registration">
<node CREATED="1312611601135" FOLDED="true" ID="ID_218831183" MODIFIED="1401348714970" TEXT="allocate">
<node CREATED="1312611607588" FOLDED="true" ID="ID_690667043" MODIFIED="1401348714970" TEXT="alloc_netdev()">
<node CREATED="1312611638274" MODIFIED="1312611681261" TEXT="alloc_etherdev()">
<icon BUILTIN="bookmark"/>
</node>
</node>
<node CREATED="1312613089963" MODIFIED="1312613100164" TEXT="free_netdev()"/>
</node>
<node CREATED="1312611726422" FOLDED="true" ID="ID_73485595" MODIFIED="1401348714970" TEXT="register">
<node CREATED="1312611756648" MODIFIED="1312611759076" TEXT="register_netdev()"/>
<node CREATED="1312611861930" MODIFIED="1312611865677" TEXT="unregister_netdev()"/>
</node>
</node>
<node CREATED="1312612888313" FOLDED="true" ID="ID_1893039556" MODIFIED="1401348714970" TEXT="Packet Reception">
<node CREATED="1312612926216" MODIFIED="1312612946483" TEXT="interrupt"/>
<node CREATED="1312612932497" MODIFIED="1312612954178" TEXT="poll/NAPI"/>
</node>
<node CREATED="1312611990169" FOLDED="true" ID="ID_835587215" MODIFIED="1401348714971" TEXT="Data Structures">
<node CREATED="1312611996972" MODIFIED="1312612002809" TEXT="net_device"/>
<node CREATED="1312612508172" FOLDED="true" ID="ID_263049189" MODIFIED="1401348714970" TEXT="net_device_ops">
<node CREATED="1312612561126" MODIFIED="1312612710924" TEXT="open()"/>
<node CREATED="1312612631837" MODIFIED="1312612715055" TEXT="stop()"/>
<node CREATED="1312612717352" MODIFIED="1312612740217" TEXT="hard_start_xmit()"/>
</node>
<node CREATED="1312612515696" MODIFIED="1312612526027" TEXT="net_device_stats"/>
<node CREATED="1312612004034" MODIFIED="1312612011547" TEXT="sk_buff"/>
</node>
</node>
<node CREATED="1395826668015" FOLDED="true" ID="ID_547334703" MODIFIED="1401348869106" POSITION="right" TEXT="I/O ">
<node CREATED="1312769832077" ID="ID_178008925" MODIFIED="1401348858223" TEXT="I/O Ports">
<node CREATED="1312769890605" ID="ID_1814550336" MODIFIED="1312769903249" TEXT="/proc/ioports">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1312769916524" MODIFIED="1312769918937" TEXT="request_region()"/>
<node CREATED="1312769919813" MODIFIED="1312769935600" TEXT="release_region()"/>
<node CREATED="1312769947928" MODIFIED="1312769999498" TEXT="inb()/inw()/inl()">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1312769975861" MODIFIED="1312770006250" TEXT="outb()/outw()/outl()">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1312769838510" ID="ID_952331472" MODIFIED="1401348855049" TEXT="I/O Memory">
<node CREATED="1312770031536" MODIFIED="1312770034272" TEXT="request_mem_region()"/>
<node CREATED="1312770042525" MODIFIED="1312770044705" TEXT="release_mem_region()"/>
<node CREATED="1312770059821" MODIFIED="1312770074576" TEXT="ioremap()/iounmap()"/>
<node CREATED="1312770112189" MODIFIED="1312770149453" TEXT="ioread8()/ioread16()/ioread32()">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1312770130621" MODIFIED="1312770143432" TEXT="iowrite8()/iowrite16()/iowrite32()">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1312770225637" FOLDED="true" ID="ID_1147281059" MODIFIED="1401348714971" TEXT="Treat I/O ports as if they were I/O memory">
<node CREATED="1312770242941" MODIFIED="1312770244712" TEXT="ioport_map()"/>
<node CREATED="1312770246245" MODIFIED="1312770252561" TEXT="ioport_unmap()"/>
</node>
</node>
</node>
</map>
