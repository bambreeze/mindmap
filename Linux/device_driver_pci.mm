<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1388324069364" ID="ID_1067822762" MODIFIED="1388487218875" TEXT="pci subsystem">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388324202817" ID="ID_837080186" MODIFIED="1388487219915" POSITION="right" TEXT="pci overview">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388382046488" ID="ID_1731680601" MODIFIED="1388387004844" TEXT="PCI (Peripheral Component Interconnect), is a local computer bus for attaching hardware devices in a computer."/>
<node CREATED="1388382100102" ID="ID_595199588" MODIFIED="1388385333820">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="driver/pci/pci-config-space.png" />
  </body>
</html></richcontent>
</node>
<node CREATED="1388382109422" ID="ID_883886368" MODIFIED="1388487219917" TEXT="reference">
<node CREATED="1388382118958" ID="ID_1207389878" MODIFIED="1388382171790" TEXT="http://www.pcisig.com/home"/>
<node CREATED="1388382173548" ID="ID_428779289" MODIFIED="1388382186342" TEXT="http://en.wikipedia.org/wiki/PCI_configuration_space"/>
<node CREATED="1388386113329" ID="ID_266613301" MODIFIED="1388386440803" TEXT="http://mj.ucw.cz/sw/pciutils/"/>
</node>
</node>
<node CREATED="1388324207605" ID="ID_1599119370" MODIFIED="1388487219918" POSITION="right" TEXT="pci driver framework">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388478271706" ID="ID_120834750" MODIFIED="1388487219919" TEXT="pci access method (configuration space)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388478287826" ID="ID_1638706613" MODIFIED="1388478295858" TEXT="BIOS"/>
<node CREATED="1388478297038" ID="ID_467494694" MODIFIED="1388481632566" TEXT="DIRECT(conf1/conf2)"/>
<node CREATED="1388478305789" ID="ID_684714180" MODIFIED="1388478309297" TEXT="MMConfig"/>
</node>
<node CREATED="1388482368005" ID="ID_910263632" MODIFIED="1388487219938" TEXT="pci init">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388482374457" ID="ID_366149323" MODIFIED="1388482677588">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="driver/pci/pci_init.png" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1388411829776" ID="ID_1385341233" MODIFIED="1388487219956" TEXT="pci core driver">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388387066522" ID="ID_834237932" MODIFIED="1388387351229" TEXT="drivers/pci/pci.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1388387361332" ID="ID_1654791867" MODIFIED="1388389699449">
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
</node>
<node CREATED="1388411948502" ID="ID_78067893" MODIFIED="1388487219965" TEXT="platform dependence">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388477322561" ID="ID_1263215607" MODIFIED="1388487219966" TEXT="arch/x86/pci/direct.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
<node CREATED="1388478553709" ID="ID_843191919" MODIFIED="1388478581429" TEXT="Low-level direct PCI config space access">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1388477348334" ID="ID_452334377" MODIFIED="1388487219971">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
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
</html>
</richcontent>
<node CREATED="1388478621732" ID="ID_1909044969" MODIFIED="1388478995847">
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
<node CREATED="1388478671524" ID="ID_1483670380" MODIFIED="1388487219972">
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
</html>
</richcontent>
<node CREATED="1388476752731" ID="ID_326385031" MODIFIED="1388477585778" TEXT="0xcf8 // address ioport"/>
<node CREATED="1388476789732" ID="ID_1751732301" MODIFIED="1388477585782" TEXT="0xcfc // data ioport"/>
</node>
</node>
<node CREATED="1388477501869" ID="ID_1847262426" MODIFIED="1388477617376">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      int __init <b><font color="#0000ff">pci_direct_probe</font></b>(void)
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#ff0000">request_region</font></b>(<b><font color="#6600ff">0xCF8</font></b>, 8, &quot;PCI conf1&quot;)
    </p>
    <p>
      &#160;&#160;&#160;&#160;pci_check_type1()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pci_sanity_check(&amp;<b><font color="#6600ff">pci_direct_conf1</font></b>)
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1388411988046" ID="ID_1989112939" MODIFIED="1388473697595" TEXT="arch/x86/pci/init.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1388473698790" ID="ID_384530845" MODIFIED="1388481441273">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static __init int <b><font color="#0000ff">pci_arch_init</font></b>(void)
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#0000ff">pci_direct_probe</font></b>()
    </p>
    <p>
      arch_initcall(pci_arch_init);
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-3"/>
</node>
</node>
</node>
<node CREATED="1388483615351" ID="ID_414142096" MODIFIED="1388487219973" POSITION="right" TEXT="pci utilities">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1388483864882" ID="ID_235388851" MODIFIED="1388485076659" TEXT="lspci - displays detailed information about all PCI buses and devices in the system"/>
<node CREATED="1388483869130" ID="ID_1157526048" MODIFIED="1388485105178" TEXT="setpci - allows reading from and writing to PCI device configuration registers."/>
</node>
<node CREATED="1388324213789" ID="ID_1002496453" MODIFIED="1388324228931" POSITION="right" TEXT="pci example">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</map>
