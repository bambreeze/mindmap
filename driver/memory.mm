<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1312871447541" ID="ID_1614623172" LINK="Linux%20Device%20Drivers.mm" MODIFIED="1312873735503" TEXT="Memory (Ch8/15)">
<node CREATED="1312871846067" ID="ID_460105401" MODIFIED="1313635763069" POSITION="right" TEXT="kmalloc(size, flags)/kfree(addr)">
<icon BUILTIN="button_ok"/>
<node CREATED="1312873575475" ID="ID_1238007881" MODIFIED="1313635834922">
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
<arrowlink DESTINATION="ID_1752255251" ENDARROW="Default" ENDINCLINATION="63;0;" ID="Arrow_ID_1732169083" STARTARROW="None" STARTINCLINATION="63;0;"/>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1312871908829" ID="ID_1506915144" MODIFIED="1313635853609" POSITION="right" TEXT="vmalloc(size)/vfree(addr)">
<icon BUILTIN="button_cancel"/>
<node CREATED="1312873560668" ID="ID_1752255251" MODIFIED="1313635834921">
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
</html>
</richcontent>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1313635343941" ID="ID_627835271" MODIFIED="1313646760409" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="../../../../Users/fazhang/Desktop/Untitled.png" />
  </body>
</html>
</richcontent>
</node>
<node CREATED="1312872585307" ID="ID_1972336281" MODIFIED="1313631406787" POSITION="right" TEXT="page">
<node CREATED="1313631389302" ID="ID_946213315" MODIFIED="1313631395301" TEXT="struct page"/>
<node CREATED="1312872620732" ID="ID_549699768" MODIFIED="1313633854572">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      alloc_pages(gfp_mask, order)/__free_pages(page, order)
    </p>
    <p>
      alloc_page(gfp_mask)/__free_page(page)
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="button_ok"/>
<node CREATED="1313636352534" ID="ID_1564390672" MODIFIED="1313636373906">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allocates 2 order&#160;&#160;pages and returns a pointer
    </p>
    <p>
      &#160;to the&#160;&#160;first page&#8217;s page structure
    </p>
  </body>
</html>
</richcontent>
<arrowlink DESTINATION="ID_1447537356" ENDARROW="Default" ENDINCLINATION="88;0;" ID="Arrow_ID_1671864076" STARTARROW="None" STARTINCLINATION="88;0;"/>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1312872685043" ID="ID_362844691" MODIFIED="1313636950789" TEXT="page_address(page)/vir_to_page(addr)">
<node CREATED="1313633075838" ID="ID_370746362" MODIFIED="1313636368946">
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
</html>
</richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312872343167" ID="ID_1856751485" MODIFIED="1313634105776">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      _ _get_free_pages(gfp_mask, order)/free_pages(addr, order)
    </p>
    <p>
      _ _get_free_page(gfp_mask)/free_page(addr)
    </p>
    <p>
      get_zeroed_page(gfp_mask)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
<node CREATED="1313633552627" ID="ID_1447537356" MODIFIED="1313636373905">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allocates 2 order&#160;&#160;pages and returns a pointer
    </p>
    <p>
      &#160;to the&#160;&#160;first page&#8217;s logical address
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1312872700511" ID="ID_1202294272" MODIFIED="1313646296291" TEXT="kmap(page)/kunmap(page)">
<arrowlink DESTINATION="ID_938071096" ENDARROW="Default" ENDINCLINATION="173;0;" ID="Arrow_ID_150644429" STARTARROW="None" STARTINCLINATION="173;0;"/>
<node CREATED="1313646171399" ID="ID_1918980860" MODIFIED="1313646276638">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Map a given page structure into the kernel&#8217;s address space.
    </p>
    <p>
      This function works on either high or low memory.
    </p>
    <p>
      If the page structure belongs to a page in low memory, the page&#8217;s virtual address is simply returned.
    </p>
    <p>
      If the page resides in high memory, a permanent mapping is created and the address is returned.
    </p>
    <p>
      On x86, pages in high memory are mapped somewhere&#160;&#160;between the 3GB and 4GB mark.
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1313630719252" ID="ID_1879890803" MODIFIED="1313631050394" TEXT="The important point to understand is that the page structure&#xa; is associated with physical pages, not virtual pages.">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1312871499746" ID="ID_31477366" MODIFIED="1313631415248" POSITION="right" TEXT="zone">
<node CREATED="1313632101765" ID="ID_1280280664" MODIFIED="1313632107183" TEXT="struct zone"/>
<node CREATED="1312871604028" ID="ID_607041897" MODIFIED="1313631226037" TEXT="DMA-capable memory (ZONE_DMA)"/>
<node CREATED="1312871608435" ID="ID_1971100943" MODIFIED="1313631707777" TEXT="Normal memory (ZONE_NORMAL)"/>
<node CREATED="1312871615980" ID="ID_938071096" MODIFIED="1313646296291" TEXT="High memory (ZONE_HIGHMEM)">
<node CREATED="1313631301221" ID="ID_1852945336" MODIFIED="1313631347137" TEXT="This zone contains &#x201c;high memory,&#x201d; which are pages &#xa;not permanently mapped into the kernel&#x2019;s address space.">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1313631462405" ID="ID_1533127791" MODIFIED="1313631471217" TEXT="The kernel uses the zones to  group pages of similar properties.">
<icon BUILTIN="idea"/>
</node>
<node CREATED="1313631678334" ID="ID_1410813905" MODIFIED="1313631701857" TEXT=" Note that the zones do not  have any physical relevance &#xa;but are simply logical groupings used by the kernel to keep  track of pages.">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1312872066748" ID="ID_761493369" MODIFIED="1312873277336" POSITION="right" TEXT="slab">
<node CREATED="1313636644910" ID="ID_1877097628" MODIFIED="1313636759073" TEXT="cache">
<icon BUILTIN="idea"/>
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
<node CREATED="1313637494038" ID="ID_486490456" MODIFIED="1313637578989">
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
</html>
</richcontent>
<icon BUILTIN="messagebox_warning"/>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1312871528809" ID="ID_1912367240" MODIFIED="1313646493584" POSITION="right" TEXT="address">
<node CREATED="1312871674270" ID="ID_1849209624" MODIFIED="1313631699316" TEXT="Physical addresses"/>
<node CREATED="1312871686391" MODIFIED="1312871688664" TEXT="Bus addresses"/>
<node CREATED="1312871699476" ID="ID_1001023281" MODIFIED="1312871701920" TEXT="Kernel logical addresses"/>
<node CREATED="1312871712781" ID="ID_1438401860" MODIFIED="1312871714569" TEXT="Kernel virtual addresses"/>
<node CREATED="1312871715125" ID="ID_407527221" MODIFIED="1312871725930" TEXT="User virtual addresses"/>
</node>
<node CREATED="1312872790371" ID="ID_354933782" MODIFIED="1312872792047" POSITION="right" TEXT="struct vm_area_struct">
<node CREATED="1312872821909" ID="ID_1486450980" MODIFIED="1312872828048" TEXT="struct vm_operations_struct"/>
</node>
<node CREATED="1312872830109" ID="ID_11445334" MODIFIED="1312872835169" POSITION="right" TEXT="struct mm_struct"/>
<node CREATED="1312873123709" ID="ID_1667007813" MODIFIED="1312873130632" POSITION="right" TEXT="mmap">
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
</html>
</richcontent>
</node>
<node CREATED="1312873158196" ID="ID_854958690" MODIFIED="1313646398571" TEXT="provide user programs with direct access to device memory">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</map>
