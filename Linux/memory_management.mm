<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1312871447541" ID="ID_1614623172" LINK="Linux%20Device%20Drivers.mm" MODIFIED="1358153567222">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Memory Management
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1358148343488" ID="ID_1273041049" MODIFIED="1358148515025" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font face="SansSerif" color="rgb(51, 51, 51)" size="3"><b>MMU</b>&#160;- the hardware that manages memory and performs virtual to physical address translations</font>
    </p>
  </body>
</html></richcontent>
<font NAME="Courier New" SIZE="12"/>
</node>
<node CREATED="1312871846067" ID="ID_460105401" MODIFIED="1358155017187" POSITION="right" TEXT="kmalloc(size, flags)/kfree(addr)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
<node CREATED="1312873575475" ID="ID_1238007881" MODIFIED="1358154503220">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The function returns a pointer to a region of memory that is at least size bytes in
    </p>
    <p>
      length. The region of memory allocated is physically contiguous.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
</node>
<node CREATED="1358154374696" ID="ID_1391481874" MODIFIED="1358154430721">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <table>
      <tr>
        <th scope="col" align="left" class="thead" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3"><b>Situation</b> </font>
          </p>
        </th>
        <th scope="col" align="left" class="thead" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3"><b>Solution</b> </font>
          </p>
        </th>
      </tr>
      <tr>
        <td align="left" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; color: rgb(51, 51, 51)" class="docTableCell" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3">Process context, can sleep </font>
          </p>
        </td>
        <td align="left" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; color: rgb(51, 51, 51)" class="docTableCell" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3">Use&#160;</font><tt style="font-family: Andale Mono, Courier New, Courier, monospace; font-size: x-small; color: rgb(121, 0, 41)"><font face="SansSerif" size="3" color="rgb(121, 0, 41)">GFP_KERNEL</font></tt>
          </p>
        </td>
      </tr>
      <tr>
        <td align="left" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; color: rgb(51, 51, 51)" class="docTableCell" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3">Process context, cannot sleep </font>
          </p>
        </td>
        <td align="left" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; color: rgb(51, 51, 51)" class="docTableCell" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3">Use&#160;</font><tt style="font-family: Andale Mono, Courier New, Courier, monospace; font-size: x-small; color: rgb(121, 0, 41)"><font face="SansSerif" size="3" color="rgb(121, 0, 41)">GFP_ATOMIC</font></tt><font face="SansSerif" size="3">, or perform your allocations with&#160;</font><tt style="font-family: Andale Mono, Courier New, Courier, monospace; font-size: x-small; color: rgb(121, 0, 41)"><font face="SansSerif" size="3" color="rgb(121, 0, 41)">GFP_KERNEL</font></tt><font face="SansSerif" size="3">&#160;at an earlier or later point when you can sleep </font>
          </p>
        </td>
      </tr>
      <tr>
        <td align="left" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; color: rgb(51, 51, 51)" class="docTableCell" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3">Interrupt handler </font>
          </p>
        </td>
        <td align="left" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; color: rgb(51, 51, 51)" class="docTableCell" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3">Use&#160;</font><tt style="font-family: Andale Mono, Courier New, Courier, monospace; font-size: x-small; color: rgb(121, 0, 41)"><font face="SansSerif" size="3" color="rgb(121, 0, 41)">GFP_ATOMIC</font></tt>
          </p>
        </td>
      </tr>
      <tr>
        <td align="left" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; color: rgb(51, 51, 51)" class="docTableCell" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3">Softirq </font>
          </p>
        </td>
        <td align="left" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; color: rgb(51, 51, 51)" class="docTableCell" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3">Use&#160;</font><tt style="font-family: Andale Mono, Courier New, Courier, monospace; font-size: x-small; color: rgb(121, 0, 41)"><font face="SansSerif" size="3" color="rgb(121, 0, 41)">GFP_ATOMIC</font></tt>
          </p>
        </td>
      </tr>
      <tr>
        <td align="left" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; color: rgb(51, 51, 51)" class="docTableCell" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3">Tasklet </font>
          </p>
        </td>
        <td align="left" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; color: rgb(51, 51, 51)" class="docTableCell" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3">Use&#160;</font><tt style="font-family: Andale Mono, Courier New, Courier, monospace; font-size: x-small; color: rgb(121, 0, 41)"><font face="SansSerif" size="3" color="rgb(121, 0, 41)">GFP_ATOMIC</font></tt>
          </p>
        </td>
      </tr>
      <tr>
        <td align="left" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; color: rgb(51, 51, 51)" class="docTableCell" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3">Need DMA-able memory, can sleep </font>
          </p>
        </td>
        <td align="left" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; color: rgb(51, 51, 51)" class="docTableCell" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3">Use&#160;</font><tt style="font-family: Andale Mono, Courier New, Courier, monospace; font-size: x-small; color: rgb(121, 0, 41)"><font face="SansSerif" size="3" color="rgb(121, 0, 41)">(GFP_DMA | GFP_KERNEL)</font></tt>
          </p>
        </td>
      </tr>
      <tr>
        <td align="left" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; color: rgb(51, 51, 51)" class="docTableCell" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3">Need DMA-able memory, cannot sleep </font>
          </p>
        </td>
        <td align="left" style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: small; color: rgb(51, 51, 51)" class="docTableCell" valign="top">
          <p style="font-family: Verdana, Arial, Helvetica, sans-serif; font-size: x-small; color: rgb(51, 51, 51)" class="docText">
            <font face="SansSerif" size="3">Use&#160;</font><tt style="font-family: Andale Mono, Courier New, Courier, monospace; font-size: x-small; color: rgb(121, 0, 41)"><font face="SansSerif" size="3" color="rgb(121, 0, 41)">(GFP_DMA | GFP_ATOMIC)</font></tt><font face="SansSerif" size="3">, or perform your allocation at an earlier point when you can sleep<a name="ch11index257">
</a><a name="ch11index258">
</a><a name="ch11index259">
</a><a name="ch11index260">
</a><a name="ch11index261">
</a></font>          </p>
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312871908829" ID="ID_1506915144" MODIFIED="1358153403284" POSITION="right" TEXT="vmalloc(size)/vfree(addr)">
<icon BUILTIN="button_cancel"/>
<node CREATED="1312873560668" ID="ID_1752255251" MODIFIED="1358154503221">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The function returns a pointer to at least size bytes of virtually contiguous memory.
    </p>
    <p>
      The function might sleep and thus cannot be called from interrupt context or other
    </p>
    <p>
      &#160;situations in which blocking is not permissible.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1358153120946" ID="ID_347001048" MODIFIED="1358153124216" POSITION="right" TEXT="node">
<node CREATED="1358153133791" ID="ID_885654250" MODIFIED="1358155026511" TEXT="struct pg_data_t">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1358153150033" ID="ID_22636036" MODIFIED="1358153160330" TEXT="include/linux/mmzone.h"/>
</node>
</node>
<node CREATED="1312871499746" ID="ID_31477366" MODIFIED="1358153282621" POSITION="right" TEXT="zone">
<node CREATED="1313632101765" ID="ID_1280280664" MODIFIED="1358155028913" TEXT="struct zone">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1358153222199" ID="ID_991092797" MODIFIED="1358153228720" TEXT="include/linux/mmzone.h"/>
</node>
<node CREATED="1312871604028" ID="ID_607041897" MODIFIED="1358155076085" TEXT="DMA-capable memory (ZONE_DMA)">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1312871608435" ID="ID_1971100943" MODIFIED="1358155081539" TEXT="Normal memory (ZONE_NORMAL)">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1312871615980" ID="ID_938071096" MODIFIED="1358155086854" TEXT="High memory (ZONE_HIGHMEM)">
<icon BUILTIN="full-3"/>
<node CREATED="1313631301221" ID="ID_1852945336" MODIFIED="1358153958370" TEXT="This zone contains &#x201c;high memory,&#x201d; which are pages &#xa;not permanently mapped into the kernel&#x2019;s address space.">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1313631678334" ID="ID_1410813905" MODIFIED="1358155061518" TEXT="The kernel uses the zones to&#xa0;group pages of similar properties.&#xa;Note that the zones do not  have any physical relevance but are simply logical groupings used by the kernel to keep  track of pages."/>
</node>
<node CREATED="1312872585307" ID="ID_1972336281" MODIFIED="1358146212738" POSITION="right" TEXT="page">
<node CREATED="1313631389302" ID="ID_946213315" MODIFIED="1358151658908" TEXT="struct page">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1358151860651" ID="ID_102780468" MODIFIED="1358152215835" TEXT="include/linux/mm_types.h">
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1358148851260" ID="ID_1767581039" MODIFIED="1358151891729">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unsigned long flags;
    </p>
    <p>
      struct address_space&#160;&#160;*mapping;
    </p>
    <p>
      pgoff_t index;
    </p>
    <p>
      atomic_t _mapcount; // Number of Page Table entries that refer to the page frame.
    </p>
    <p>
      atomic_t _count; // Page frame's reference counter, -1 means page frame is free
    </p>
    <p>
      struct list_head lru;
    </p>
    <p>
      unsigned long private;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      void *virtual;
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1313630719252" ID="ID_1879890803" MODIFIED="1313631050394" TEXT="The important point to understand is that the page structure&#xa; is associated with physical pages, not virtual pages.">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1355734730406" ID="ID_365226592" MODIFIED="1358152620434" TEXT="alloc_pages(gfp_mask, order)/alloc_page(gfp_mask)&#xa;__free_pages(page, order)/__free_page(page)">
<icon BUILTIN="button_ok"/>
<node CREATED="1355735437498" ID="ID_796911350" MODIFIED="1355735446119" TEXT="mm/mempolicy.c"/>
<node CREATED="1355734931170" ID="ID_337663512" MODIFIED="1358152633553">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allocates 2 order&#160;&#160;pages and returns a pointer
    </p>
    <p>
      to the&#160;&#160;first page&#8217;s page structure
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1355735133119" ID="ID_587331535" MODIFIED="1358152566962" TEXT="__get_free_pages(gfp_mask, order)/__get_free_page(gfp_mask)/get_zeroed_page(gfp_mask)&#xa;free_pages(addr, order)/free_page(addr)">
<icon BUILTIN="button_ok"/>
<node CREATED="1355735330265" ID="ID_293453969" MODIFIED="1355735341015" TEXT="mm/page_alloc.c"/>
<node CREATED="1355735496874" ID="ID_631351050" MODIFIED="1358152591362">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allocates 2 order&#160;&#160;pages and returns a pointer
    </p>
    <p>
      to the&#160;&#160;first page&#8217;s logical address
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1312872685043" ID="ID_362844691" MODIFIED="1313636950789" TEXT="page_address(page)/vir_to_page(addr)">
<node CREATED="1313633075838" ID="ID_370746362" MODIFIED="1358154924850">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This page_address() returns a pointer to the logical address
    </p>
    <p>
      &#160;where&#160;the given physical page currently&#160;&#160;resides.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312872700511" ID="ID_1202294272" MODIFIED="1313646296291" TEXT="kmap(page)/kunmap(page)">
<arrowlink DESTINATION="ID_938071096" ENDARROW="Default" ENDINCLINATION="173;0;" ID="Arrow_ID_150644429" STARTARROW="None" STARTINCLINATION="173;0;"/>
<node CREATED="1313646171399" ID="ID_1918980860" MODIFIED="1358154999680">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Map a given page structure into the kernel&#8217;s address space.
    </p>
    <p>
      This function works on either high or low memory. If the page structure belongs to a page in low memory, the page&#8217;s virtual address is simply returned. If the page resides in high memory, a permanent mapping is created and the address is returned. On x86, pages in high memory are mapped somewhere&#160;&#160;between the 3GB and 4GB mark.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1312873123709" ID="ID_1667007813" MODIFIED="1312873130632" TEXT="mmap">
<node CREATED="1312873189873" ID="ID_1560832887" MODIFIED="1313646511381">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      remap_pfn_range()/io_remap_page_range()
    </p>
    <p>
      nopage()
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1312873158196" ID="ID_854958690" MODIFIED="1358155331113" TEXT="provide user programs with direct access to device memory">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
</node>
<node CREATED="1312872830109" ID="ID_11445334" MODIFIED="1358155362742" POSITION="right" TEXT="struct mm_struct"/>
<node CREATED="1312872790371" ID="ID_354933782" MODIFIED="1358155357498" POSITION="right" TEXT="struct vm_area_struct">
<node CREATED="1312872821909" ID="ID_1486450980" MODIFIED="1312872828048" TEXT="struct vm_operations_struct"/>
</node>
<node CREATED="1312872066748" ID="ID_761493369" MODIFIED="1312873277336" POSITION="right" TEXT="slab">
<node CREATED="1313636644910" ID="ID_1877097628" MODIFIED="1358153819157" TEXT="cache">
<node CREATED="1313636652221" ID="ID_493262911" MODIFIED="1313636657533" TEXT="slab">
<node CREATED="1313636671621" ID="ID_634943318" MODIFIED="1313636675741" TEXT="object"/>
<node CREATED="1313636676669" ID="ID_208485622" MODIFIED="1313636683696" TEXT="..."/>
<node CREATED="1313636684542" ID="ID_1101922759" MODIFIED="1313636687213" TEXT="object"/>
</node>
<node CREATED="1313636657909" ID="ID_40530479" MODIFIED="1313636667728" TEXT="..."/>
<node CREATED="1313636662678" ID="ID_191862281" MODIFIED="1313636663894" TEXT="slab">
<node CREATED="1313636698918" ID="ID_1596765319" MODIFIED="1313636701352" TEXT="object"/>
<node CREATED="1313636702125" ID="ID_840600984" MODIFIED="1313636703117" TEXT="..."/>
<node CREATED="1313636703789" ID="ID_197678332" MODIFIED="1313636705637" TEXT="object"/>
</node>
</node>
<node CREATED="1312872099270" ID="ID_1456836035" MODIFIED="1313638021004">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      kmem_cache_create(name, size, align, flags, ctor, dtor)
    </p>
    <p>
      kmem_cache_destroy(cachep)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1312872123598" ID="ID_1767475536" MODIFIED="1313638121164">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      kmem_cache_alloc(cachep, flags)
    </p>
    <p>
      kmem_cache_free(cachep, objp)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1313637494038" ID="ID_486490456" MODIFIED="1358155166387">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Of course, the point of the slab layer is to refrain from allocating and freeing pages.
    </p>
    <p>
      In turn, the slab layer invokes the page allocation function only when there does
    </p>
    <p>
      not exist any partial or empty slabs in a given cache.
    </p>
    <p>
      The freeing function is called only when available memory grows low and the
    </p>
    <p>
      system is attempting to free memory, or when a cache is explicitly destroyed.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1313652215544" ID="ID_583946685" MODIFIED="1313652219818" POSITION="right" TEXT="Per-CPU">
<node CREATED="1313652331271" ID="ID_1228374438" MODIFIED="1313652334308" TEXT="static">
<node CREATED="1313652237551" ID="ID_160468348" MODIFIED="1313652251421">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      DEFINE_PER_CPU(type, name);
    </p>
    <p>
      DECLARE_PER_CPU(type, name);
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1313652266671" ID="ID_519897146" MODIFIED="1313652781978" TEXT="get_cpu_var(name)/per_cpu(name, cpu)&#xa;put_cpu_var(name)"/>
</node>
<node CREATED="1313652340838" ID="ID_1807251563" MODIFIED="1313652343583" TEXT="dynamic">
<node CREATED="1313652366878" ID="ID_609828717" MODIFIED="1313652800702">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      alloc_percpu(type)/__alloc_percpu(size_t size, size_t align)
    </p>
    <p>
      free_percpu(const void *)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1313652399199" ID="ID_945685463" MODIFIED="1313652768318">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      get_cpu_ptr(ptr)/per_cpu_ptr(ptr, cpu)
    </p>
    <p>
      put_cpu_ptr(ptr)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1312871528809" ID="ID_1912367240" MODIFIED="1358153497440" POSITION="right" TEXT="Address">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1312871674270" ID="ID_1849209624" MODIFIED="1358148759541" TEXT="Physical addresses">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1312871686391" MODIFIED="1312871688664" TEXT="Bus addresses"/>
<node CREATED="1312871699476" ID="ID_1001023281" MODIFIED="1312871701920" TEXT="Kernel logical addresses"/>
<node CREATED="1312871712781" ID="ID_1438401860" MODIFIED="1312871714569" TEXT="Kernel virtual addresses"/>
<node CREATED="1312871715125" ID="ID_407527221" MODIFIED="1358148762759" TEXT="User virtual addresses">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
</map>
