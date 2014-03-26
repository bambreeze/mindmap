<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1388324069364" ID="ID_1067822762" MODIFIED="1389103901216" TEXT="pci subsystem">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388324202817" ID="ID_837080186" MODIFIED="1395823717055" POSITION="right" TEXT="pci overview">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1389074556149" ID="ID_1937441276" MODIFIED="1389074572234">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b><font color="#0000ff">PCI (Peripheral Component Interconnect)</font></b></i>, is a local computer bus for attaching hardware devices in a computer.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1389074471767" ID="ID_650772737" MODIFIED="1389074485893">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="driver/pci/pci-system-block-diagram.png" />
  </body>
</html></richcontent>
</node>
<node CREATED="1388382109422" FOLDED="true" ID="ID_883886368" MODIFIED="1389103896772" TEXT="reference">
<node CREATED="1388382118958" ID="ID_1207389878" MODIFIED="1389064618641" TEXT="http://www.pcisig.com"/>
<node CREATED="1388382173548" ID="ID_428779289" MODIFIED="1388382186342" TEXT="http://en.wikipedia.org/wiki/PCI_configuration_space"/>
<node CREATED="1388386113329" ID="ID_266613301" MODIFIED="1388386440803" TEXT="http://mj.ucw.cz/sw/pciutils/"/>
</node>
</node>
<node CREATED="1395826912067" ID="ID_1760452867" MODIFIED="1395826945753" POSITION="right" TEXT="PCI Addressing">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388478271706" ID="ID_120834750" MODIFIED="1395827493795" TEXT="pci configuration space">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1389073224551" ID="ID_37768988" MODIFIED="1389073754527">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b><font color="#0000ff">PCI configuration space</font></b></i>&#160;is the underlying way that the Conventional PCI, PCI-X and PCI Express perform <i><b><font color="#0000ff">auto configuration</font></b></i>&#160;of the cards inserted into their bus.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1388976713616" FOLDED="true" ID="ID_1148363069" MODIFIED="1389103896772">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="driver/pci/pci-config-space-260px.png" />
  </body>
</html></richcontent>
<node CREATED="1389073746946" ID="ID_513095408" MODIFIED="1389073762136">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This is <i><b><font color="#0000ff">256 bytes</font></b></i>&#160;that are addressable by knowing the <i><b><font color="#0000ff">8-bit PCI bus, 5-bit device, and 3-bit function numbers</font></b></i>&#160;for the device (commonly referred to as the BDF bus/device/function). The first <i><b><font color="#0000ff">64 bytes</font></b></i>&#160;of configuration space are standardized; the remainder are available for vendor-defined purposes.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1389064867813" FOLDED="true" ID="ID_28093240" MODIFIED="1395827193700" TEXT="access method">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388478287826" ID="ID_1638706613" MODIFIED="1388478295858" TEXT="BIOS"/>
<node CREATED="1388478297038" FOLDED="true" ID="ID_467494694" MODIFIED="1389103896772">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      DIRECT(<b><font color="#ff0000">conf1</font></b>/conf2)
    </p>
  </body>
</html></richcontent>
<node CREATED="1389075103567" ID="ID_1705793982" MODIFIED="1389075405165">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      include/linux/pci.h
    </p>
    <p>
      drivers/pci/access.c
    </p>
  </body>
</html></richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1389075108678" ID="ID_1048017876" MODIFIED="1389079477095">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff">pci_read_config_byte</font></b>(const struct <i><b><font color="#6600ff">pci_dev *dev</font></b></i>, int where, u8 *val)
    </p>
    <p>
      &#160;&#160;&#160;&#160;pci_bus_read_config_byte(dev-&gt;bus, dev-&gt;devfn, where, val);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;raw_spin_lock_irqsave(&amp;pci_lock, flags);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;res = <b><font color="#ff0000">bus-&gt;ops-&gt;read(bus, devfn, pos, len, &amp;data)</font></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;raw_spin_unlock_irqrestore(&amp;pci_lock, flags);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1388478305789" ID="ID_684714180" MODIFIED="1388478309297" TEXT="MMConfig"/>
</node>
</node>
<node CREATED="1312613931259" ID="ID_809897383" MODIFIED="1312613935713" TEXT="memory space"/>
<node CREATED="1312613936537" ID="ID_652408319" MODIFIED="1312613939786" TEXT="I/O space"/>
<node CREATED="1312614075680" ID="ID_1076269082" MODIFIED="1312614091726" TEXT="domain:bus:device:function"/>
</node>
<node CREATED="1388324207605" ID="ID_1599119370" MODIFIED="1389103917007" POSITION="right" TEXT="pci driver framework">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1389079786034" ID="ID_1986937783" MODIFIED="1395827521586" TEXT="pci data structure">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388924206034" ID="ID_1589488744" MODIFIED="1395827391951" TEXT="include/linux/pci.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1312614189145" ID="ID_651174919" MODIFIED="1312614196843" TEXT="pci_device_id"/>
<node CREATED="1312614268938" FOLDED="true" ID="ID_1601962007" MODIFIED="1395827359120" TEXT="pci_driver">
<node CREATED="1312614356506" MODIFIED="1312614376802" TEXT="id_table"/>
<node CREATED="1312614378123" MODIFIED="1312614404517" TEXT="probe()"/>
<node CREATED="1312614386089" MODIFIED="1312614391107" TEXT="remove()"/>
<node CREATED="1312614392268" MODIFIED="1312614395863" TEXT="suspend()"/>
<node CREATED="1312614411384" MODIFIED="1312614416315" TEXT="resume()"/>
<node CREATED="1388924270099" ID="ID_1490526976" MODIFIED="1388924435681">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">pci_driver</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head node;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const char *name;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct pci_device_id *id_table;&#160;&#160;&#160;/* must be non-NULL for probe to be called */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;(*probe)&#160;&#160;(struct pci_dev *dev, const struct pci_device_id *id);&#160;&#160;&#160;/* New device inserted */
    </p>
    <p>
      &#160;&#160;&#160;&#160;void (*remove) (struct pci_dev *dev);/*Device removed */&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;(*suspend) (struct pci_dev *dev, pm_message_t state);&#160;&#160;/* Device suspended */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;(*suspend_late) (struct pci_dev *dev, pm_message_t state);
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;(*resume_early) (struct pci_dev *dev);
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;(*resume) (struct pci_dev *dev);&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Device woken up */
    </p>
    <p>
      &#160;&#160;&#160;&#160;void (*shutdown) (struct pci_dev *dev);
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*sriov_configure) (struct pci_dev *dev, int num_vfs); /* PF pdev */&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct pci_error_handlers *err_handler;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#ff0000">struct device_driver&#160;&#160;&#160;&#160;driver;</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct pci_dynids dynids;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312614440037" FOLDED="true" ID="ID_531686178" MODIFIED="1395827364715" TEXT="pci_dev">
<node CREATED="1388924243570" ID="ID_1199106003" MODIFIED="1388990139542">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">pci_dev</font></b>&#160;{&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head bus_list;&#160;&#160;/* node in per-bus list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct pci_bus&#160;&#160;*bus;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* bus this device is on */&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct pci_slot *slot;&#160;&#160;&#160;&#160;&#160;&#160;/* Physical slot this device is in */
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int&#160;&#160;&#160;&#160;devfn;&#160;&#160;&#160;&#160;&#160;&#160;/* encoded device &amp; function index */
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned short&#160;&#160;vendor;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned short&#160;&#160;device;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct pci_driver *driver;&#160;&#160;/* which driver has allocated this device */
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#ff0000">struct&#160;&#160;device&#160;&#160;dev;</font></b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Generic device interface */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;&#160;&#160;&#160;cfg_size;&#160;&#160;&#160;/* Size of configuration space */
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int&#160;&#160;&#160;&#160;irq;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct resource resource[DEVICE_COUNT_RESOURCE]; /* I/O and memory regions + expansion ROMs */
    </p>
    <p>
      };
    </p>
    <p>
      
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312614475923" ID="ID_1303162592" MODIFIED="1312614479537" TEXT="pci_ops"/>
<node CREATED="1395827371480" FOLDED="true" ID="ID_1910617392" MODIFIED="1395827383739" TEXT="pci_bus">
<node CREATED="1389075831942" FOLDED="true" ID="ID_1869968781" MODIFIED="1389103896773">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#6600ff">struct pci_bus</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head node;&#160;&#160;&#160;&#160;&#160;&#160;/* node in list of buses */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct pci_bus&#160;&#160;*parent;&#160;&#160;&#160;&#160;/* parent bus this bridge is on */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head children;&#160;&#160;/* list of child buses */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head devices;&#160;&#160;&#160;/* list of devices on this bus */
    </p>
    <p>
      &#160;&#160;&#160; <b><font color="#6600ff">struct pci_ops&#160;&#160;*ops</font></b>;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* configuration access functions */
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned char&#160;&#160;&#160;number;&#160;&#160;&#160;&#160;&#160;/* bus number */
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1389076115736" ID="ID_223626463" MODIFIED="1389076201188">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* Low-level architecture-dependent routines */
    </p>
    <p>
      <b><font color="#6600ff">struct pci_ops</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*read)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 *val);
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*write)(struct pci_bus *bus, unsigned int devfn, int where, int size, u32 val);
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1312614109614" ID="ID_238954140" MODIFIED="1395827523723" TEXT="registration">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1312614203592" MODIFIED="1312614246400" TEXT="MODULE_DEVICE_TABLE(pci, xxx)"/>
<node CREATED="1312614293627" MODIFIED="1312614297519" TEXT="pci_register_driver()"/>
<node CREATED="1312614309728" ID="ID_711314704" MODIFIED="1312614312541" TEXT="pci_unregister_driver()"/>
</node>
<node CREATED="1388411829776" FOLDED="true" ID="ID_1385341233" MODIFIED="1395827483216" TEXT="pci core driver">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388977279495" ID="ID_470509874" MODIFIED="1389077168872" TEXT="pci core driver init sequence">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1388976948221" ID="ID_746000072" MODIFIED="1388977263399">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="driver/pci/pci-init.png" />
  </body>
</html></richcontent>
</node>
<node CREATED="1388387066522" ID="ID_834237932" MODIFIED="1388387351229" TEXT="drivers/pci/pci.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1388387361332" ID="ID_1654791867" MODIFIED="1389074728452">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static int __init <b>pci_setup</b>(char *str)
    </p>
    <p>
      &#160;&#160;&#160;&#160;char * __init <b>pcibios_setup</b>(char *str)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-0"/>
</node>
<node CREATED="1388410406950" ID="ID_958439059" MODIFIED="1388410489268" TEXT="drivers/pci/probe.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1388410500178" ID="ID_1833867536" MODIFIED="1388410682962">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct class <b><font color="#6600ff">pcibus_class</font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.name&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &quot;pci_bus&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.dev_release&#160;&#160;&#160;&#160;= &amp;release_pcibus_dev,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.dev_groups = pcibus_groups,
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1388410599484" ID="ID_337970095" MODIFIED="1388477694248">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static int __init <b><font color="#0000ff">pcibus_class_init</font></b>(void)
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return <b><font color="#ff0000">class_register</font></b>(&amp;<b><font color="#6600ff">pcibus_class</font></b>);
    </p>
    <p>
      }
    </p>
    <p>
      postcore_initcall(pcibus_class_init);
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1388410931322" ID="ID_157522622" MODIFIED="1388411912701" TEXT="drivers/pci/pci-driver.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1388410946922" ID="ID_988989796" MODIFIED="1388411912707">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct bus_type <b><font color="#6600ff">pci_bus_type</font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.name&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &quot;pci&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.match&#160;&#160;&#160;&#160;&#160;&#160;= pci_bus_match,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.uevent&#160;&#160;&#160;&#160;&#160;= pci_uevent,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.probe&#160;&#160;&#160;&#160;&#160;&#160;= pci_device_probe,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.remove&#160;&#160;&#160;&#160;&#160;= pci_device_remove,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.shutdown&#160;&#160;&#160;= pci_device_shutdown,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.dev_groups = pci_dev_groups,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.bus_groups = pci_bus_groups,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.drv_groups = pci_drv_groups,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.pm&#160;&#160;&#160;&#160;&#160;= PCI_PM_OPS_PTR,
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1388411010618" ID="ID_1713771830" MODIFIED="1388477704184">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static int __init <b><font color="#0000ff">pci_driver_init</font></b>(void)
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return <b><font color="#ff0000">bus_register</font></b>(&amp;<b><font color="#6600ff">pci_bus_type</font></b>);
    </p>
    <p>
      }
    </p>
    <p>
      postcore_initcall(pci_driver_init);
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1388894354955" ID="ID_5372143" MODIFIED="1389072953534">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>/* register a new pci driver */</b>
    </p>
    <p>
      <b><font color="#0000ff">pci_register_driver</font></b>(drv)
    </p>
    <p>
      &#160;&#160;&#160;&#160;__pci_register_driver(drv, owner, mod_name)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* initialize common driver fields */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;drv-&gt;driver.name = drv-&gt;name;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;drv-&gt;driver.bus = &amp;<b><font color="#6600ff">pci_bus_type</font></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;drv-&gt;driver.owner = owner;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;drv-&gt;driver.mod_name = mod_name;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;spin_lock_init(&amp;drv-&gt;dynids.lock);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;INIT_LIST_HEAD(&amp;drv-&gt;dynids.list);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* register with core */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return <b><font color="#ff0000">driver_register</font></b>(&amp;drv-&gt;driver); &#160;&#160;&#160;&#160;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1388411988046" ID="ID_1989112939" MODIFIED="1389076828072">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      arch/x86/pci/init.c
    </p>
    <p>
      arch/x86/pci/direct.c
    </p>
  </body>
</html></richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1388477348334" FOLDED="true" ID="ID_758588248" MODIFIED="1389103896775">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* Low-level direct PCI config space access */
    </p>
    <p>
      const struct pci_raw_ops <b><font color="#6600ff">pci_direct_conf1</font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.read =&#160;&#160;&#160;&#160;&#160;<b><font color="#0000ff">pci_conf1_read</font></b>,&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;.write =&#160;&#160;&#160;&#160;<b><font color="#0000ff">pci_conf1_write</font></b>,&#160;&#160;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1388478621732" ID="ID_1013999463" MODIFIED="1388478995847">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #define <b><font color="#6600ff">PCI_CONF1_ADDRESS</font></b>(bus, devfn, reg) \
    </p>
    <p>
      &#160;&#160;&#160;&#160;(0x80000000 | ((reg &amp; 0xF00) &lt;&lt; 16) | (bus &lt;&lt; 16) \
    </p>
    <p>
      &#160;&#160;&#160;&#160;| (devfn &lt;&lt; 8) | (reg &amp; 0xFC))
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1388478671524" FOLDED="true" ID="ID_1465061609" MODIFIED="1389103896774">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      pci_conf1_read()
    </p>
    <p>
      &#160;&#160;&#160; <b><font color="#ff0000">outl</font></b>(PCI_CONF1_ADDRESS(bus, devfn, reg), <b><font color="#6600ff">0xCF8</font></b>);
    </p>
    <p>
      &#160;&#160;&#160;&#160;*value = <b><font color="#ff0000">inl</font></b>(<b><font color="#6600ff">0xCFC</font></b>);
    </p>
  </body>
</html></richcontent>
<node CREATED="1388476752731" ID="ID_1412485086" MODIFIED="1388477585778" TEXT="0xcf8 // address ioport"/>
<node CREATED="1388476789732" ID="ID_1484861750" MODIFIED="1388477585782" TEXT="0xcfc // data ioport"/>
</node>
</node>
<node CREATED="1388473698790" ID="ID_384530845" MODIFIED="1389077095765">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static __init int <b><font color="#0000ff">pci_arch_init</font></b>(void)
    </p>
    <p>
      &#160;&#160;&#160;&#160;<font color="#000000">pci_direct_probe</font>()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><font color="#ff0000">request_region</font></b>(<b><font color="#6600ff">0xCF8</font></b>, 8, &quot;PCI conf1&quot;)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pci_check_type1()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pci_sanity_check(&amp;<font color="#000000">pci_direct_conf1</font>)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><font color="#ff0000">raw_pci_ops</font></b>&#160;= &amp;<b><font color="#6600ff">pci_direct_conf1</font></b>;
    </p>
    <p>
      arch_initcall(pci_arch_init);
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1389078034763" ID="ID_594822531" MODIFIED="1389078433779">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      arch/x86/pci/legacy.c
    </p>
    <p>
      arch/x86/pci/common.c
    </p>
  </body>
</html></richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1389078074578" FOLDED="true" ID="ID_1548800849" MODIFIED="1389103896775">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      int __init <b><font color="#0000ff">pci_subsys_init</font></b>(void)
    </p>
    <p>
      &#160;&#160;&#160; <b><font color="#0000ff">pci_legacy_init</font></b>();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pcibios_scan_root(<i><b>0</b></i>)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pci_scan_bus_on_node(...&amp;<i><b><font color="#6600ff">pci_root_ops</font></b></i>...)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pci_scan_root_bus()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pci_scan_root_bus(<i><b>ops</b></i>)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;struct pci_bus *b;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;b = pci_alloc_bus();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <i><b><font color="#ff0000">b-&gt;ops = ops;</font></b></i>
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;pcibios_fixup_peer_bridges();&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;x86_init.pci.init_irq();
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#0000ff">pcibios_init</font></b>();
    </p>
    <p>
      subsys_initcall(pci_subsys_init);
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-4"/>
<node CREATED="1389078525810" ID="ID_1151370043" MODIFIED="1389078551200">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct pci_ops <b><font color="#6600ff">pci_root_ops</font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.read = <b><font color="#0000ff">pci_read</font></b>,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.write = pci_write,
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1389078557193" ID="ID_233198634" MODIFIED="1389078698395">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff">pci_read</font></b>()
    </p>
    <p>
      &#160;&#160;&#160;&#160;raw_pci_read()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#ff0000">raw_pci_ops-&gt;read</font></b>()
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1388916970494" FOLDED="true" ID="ID_1823279685" MODIFIED="1395827512246" TEXT="pci device driver">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388916984002" FOLDED="true" ID="ID_1991188208" MODIFIED="1395827462511" TEXT="pci device initialization">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388992202611" ID="ID_1665185478" MODIFIED="1388992206887" TEXT="Once the driver knows about a PCI device and takes ownership, the driver generally needs to perform the following initialization."/>
<node CREATED="1388916991233" ID="ID_1113452624" MODIFIED="1388917002934">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;Enable the device
    </p>
    <p>
      &#160;&#160;&#160;&#160;Request MMIO/IOP resources
    </p>
    <p>
      &#160;&#160;&#160;&#160;Set the DMA mask size (for both coherent and streaming DMA)
    </p>
    <p>
      &#160;&#160;&#160;&#160;Allocate and initialize shared control data (pci_allocate_coherent())
    </p>
    <p>
      &#160;&#160;&#160;&#160;Access device configuration space (if needed)
    </p>
    <p>
      &#160;&#160;&#160;&#160;Register IRQ handler (request_irq())
    </p>
    <p>
      &#160;&#160;&#160;&#160;Initialize non-PCI (i.e. LAN/SCSI/etc parts of the chip)
    </p>
    <p>
      &#160;&#160;&#160;&#160;Enable DMA/processing engines
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1388916985938" FOLDED="true" ID="ID_1943303080" MODIFIED="1395827461639" TEXT="pci device shutdown">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388992091172" ID="ID_1429789260" MODIFIED="1388992095865" TEXT="When a PCI device driver is being unloaded, most of the following steps need to be performed."/>
<node CREATED="1388917006649" ID="ID_1844707702" MODIFIED="1388917017357">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;&#160;&#160;&#160;Disable the device from generating IRQs
    </p>
    <p>
      &#160;&#160;&#160;&#160;Release the IRQ (free_irq())
    </p>
    <p>
      &#160;&#160;&#160;&#160;Stop all DMA activity
    </p>
    <p>
      &#160;&#160;&#160;&#160;Release DMA buffers (both streaming and coherent)
    </p>
    <p>
      &#160;&#160;&#160;&#160;Unregister from other subsystems (e.g. scsi or netdev)
    </p>
    <p>
      &#160;&#160;&#160;&#160;Release MMIO/IOP resources
    </p>
    <p>
      &#160;&#160;&#160;&#160;Disable the device
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1388483615351" FOLDED="true" ID="ID_414142096" MODIFIED="1395827517325" POSITION="right" TEXT="pci utilities">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388483864882" ID="ID_235388851" MODIFIED="1388485076659" TEXT="lspci - displays detailed information about all PCI buses and devices in the system"/>
<node CREATED="1388483869130" ID="ID_1157526048" MODIFIED="1388485105178" TEXT="setpci - allows reading from and writing to PCI device configuration registers."/>
</node>
<node CREATED="1388324213789" FOLDED="true" ID="ID_1002496453" MODIFIED="1389103901216" POSITION="right" TEXT="pci example">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388924872141" ID="ID_1477875630" MODIFIED="1388924977663" TEXT="drivers/i2c/busses/i2c-i801.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1388983803049" ID="ID_1007565407" MODIFIED="1388983925959">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">i801_priv</font></b>&#160;{
    </p>
    <p>
      <font color="#000000">&#160;&#160;&#160; struct i2c_adapter adapter; &#160;&#160; </font>
    </p>
    <p>
      <font color="#000000">&#160;&#160;&#160; struct pci_dev *pci_dev; &#160;</font>
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
<node CREATED="1388924873654" FOLDED="true" ID="ID_1516185507" MODIFIED="1389103896777">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct pci_driver <b><font color="#6600ff">i801_driver</font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.name&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &quot;i801_smbus&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.id_table&#160;&#160;&#160;= <b><font color="#6600ff">i801_ids</font></b>,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.probe&#160;&#160;&#160;&#160;&#160;&#160;= <b><font color="#0000ff">i801_probe</font></b>,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.remove&#160;&#160;&#160;&#160;&#160;= i801_remove,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.suspend&#160;&#160;&#160;&#160;= i801_suspend,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.resume&#160;&#160;&#160;&#160;&#160;= i801_resume,
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1388925256865" ID="ID_1551171516" MODIFIED="1388925412870">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static DEFINE_PCI_DEVICE_TABLE(<b><font color="#6600ff">i801_ids</font></b>) = {
    </p>
    <p>
      &#160;&#160;&#160;&#160;{ PCI_DEVICE(PCI_VENDOR_ID_INTEL, PCI_DEVICE_ID_INTEL_82801AA_3) },
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;{ 0, }
    </p>
    <p>
      };
    </p>
    <p>
      MODULE_DEVICE_TABLE(pci, i801_ids);
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1388974713439" ID="ID_448802192" MODIFIED="1389064810312">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static int <b><font color="#0000ff">i801_probe</font></b>(<b><font color="#6600ff">struct pci_dev *dev</font></b>, const struct pci_device_id *id)
    </p>
    <p>
      &#160;&#160;&#160; <b><font color="#6600ff">struct i801_priv *priv;</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv = kzalloc(sizeof(*priv), GFP_KERNEL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#0000ff">pci_enable_device</font></b>(dev);
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;acpi_check_resource_conflict(&amp;dev-&gt;resource[SMBBAR]);
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#0000ff">pci_request_region</font></b>(dev, SMBBAR, i801_driver.name);
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#0000ff">pci_read_config_byte</font></b>(priv-&gt;pci_dev, SMBHSTCFG, &amp;temp);
    </p>
    <p>
      &#160;&#160;&#160;&#160;temp &amp;= ~SMBHSTCFG_I2C_EN;&#160;&#160;/* SMBus timing */
    </p>
    <p>
      &#160;&#160;&#160;&#160;temp |= SMBHSTCFG_HST_EN;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#0000ff">pci_write_config_byte</font></b>(priv-&gt;pci_dev, SMBHSTCFG, temp);
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#0000ff">request_irq</font></b>(dev-&gt;irq, i801_isr, IRQF_SHARED, i801_driver.name, priv);
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;priv-&gt;adapter.dev.parent = &amp;dev-&gt;dev;
    </p>
    <p>
      &#160;&#160;&#160;&#160;i2c_add_adapter(&amp;priv-&gt;adapter);
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;pci_set_drvdata(dev, priv);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1388974571890" ID="ID_530278057" MODIFIED="1388974691463">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static int __init <b><font color="#0000ff">i2c_i801_init</font></b>(void)
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return <b><font color="#ff0000">pci_register_driver</font></b>(&amp;<b><font color="#6600ff">i801_driver</font></b>);
    </p>
    <p>
      }&#160;&#160;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1388974604185" ID="ID_654919108" MODIFIED="1388974704903">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static void __exit <b><font color="#0000ff">i2c_i801_exit</font></b>(void)
    </p>
    <p>
      {&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#ff0000">pci_unregister_driver</font></b>(&amp;<b><font color="#6600ff">i801_driver</font></b>);
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</map>
