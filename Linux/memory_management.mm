<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1395737843000" ID="ID_1328512352" MODIFIED="1395737940167" TEXT="Memory_Management">
<node CREATED="1400658562622" FOLDED="true" ID="ID_874481532" MODIFIED="1400663432969" POSITION="right" TEXT="Overview">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1358148343488" ID="ID_1273041049" MODIFIED="1400660122400">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font face="SansSerif" color="rgb(51, 51, 51)" size="3">MMU</font></b><font face="SansSerif" color="rgb(51, 51, 51)" size="3">&#160;- the hardware that manages memory and performs </font><b><i><font face="SansSerif" color="#0000ff" size="3">virtual to physical address translations.</font></i></b>
    </p>
  </body>
</html>
</richcontent>
<font NAME="Courier New" SIZE="12"/>
</node>
<node CREATED="1312871528809" ID="ID_1912367240" MODIFIED="1400657891032" TEXT="Address">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1312871674270" ID="ID_1849209624" MODIFIED="1400654369781" TEXT="Physical addresses">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1312871715125" ID="ID_407527221" MODIFIED="1400654369781" TEXT="User virtual addresses">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1312871712781" ID="ID_1438401860" MODIFIED="1312871714569" TEXT="Kernel virtual addresses"/>
<node CREATED="1312871699476" ID="ID_1001023281" MODIFIED="1312871701920" TEXT="Kernel logical addresses"/>
<node CREATED="1312871686391" ID="ID_406867064" MODIFIED="1312871688664" TEXT="Bus addresses"/>
</node>
<node CREATED="1400658574070" ID="ID_610874397" MODIFIED="1400658606756">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/mm/x86-segmentation-paging.png" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1358324355641" FOLDED="true" ID="ID_1942651027" MODIFIED="1400664470233" POSITION="right" TEXT="Zoned Page Frame Allocator">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1312872066748" ID="ID_761493369" MODIFIED="1400654136623" TEXT="Slab Layer">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1313636644910" ID="ID_1877097628" MODIFIED="1400640899736" TEXT="cache">
<node CREATED="1313636652221" ID="ID_493262911" MODIFIED="1400640902370" TEXT="slab">
<node CREATED="1313636671621" ID="ID_634943318" MODIFIED="1313636675741" TEXT="object"/>
<node CREATED="1313636676669" ID="ID_208485622" MODIFIED="1313636683696" TEXT="..."/>
<node CREATED="1313636684542" ID="ID_1101922759" MODIFIED="1313636687213" TEXT="object"/>
</node>
<node CREATED="1313636657909" ID="ID_40530479" MODIFIED="1313636667728" TEXT="..."/>
<node CREATED="1313636662678" ID="ID_191862281" MODIFIED="1400640904045" TEXT="slab">
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
<node CREATED="1313637494038" ID="ID_486490456" MODIFIED="1400655363441">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Of course, the point of the slab layer is to <b><i><font color="#0000ff">refrain from allocating and freeing pages</font></i></b>. In turn, the slab layer invokes the page allocation function only when there does not exist any partial or empty slabs in a given cache. The freeing function is called only when available memory grows low and the system is attempting to free memory, or when a cache is explicitly destroyed.
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1395756408193" ID="ID_1456950804" MODIFIED="1395756429196">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/mm/zoned_page_frame_allocator.png" />
  </body>
</html></richcontent>
<node CREATED="1358153120946" FOLDED="true" ID="ID_347001048" MODIFIED="1400642701119" TEXT="node">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1358153133791" FOLDED="true" ID="ID_885654250" MODIFIED="1400642699974" TEXT="struct pg_data_t">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1358153150033" ID="ID_22636036" MODIFIED="1400642139656" TEXT="include/linux/mmzone.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395756532194" ID="ID_1348528155" MODIFIED="1395756654005">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/mm/mm_page.jpeg" />
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1312871499746" ID="ID_31477366" MODIFIED="1400654018619" TEXT="zone">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1400574789448" ID="ID_1817231436" MODIFIED="1400574868538">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The kernel uses the zones to&#160;<b><i><font color="#0000ff">group pages</font></i></b>&#160;of similar properties.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1312871604028" ID="ID_607041897" MODIFIED="1358155076085" TEXT="DMA-capable memory (ZONE_DMA)">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1312871608435" ID="ID_1971100943" MODIFIED="1358155081539" TEXT="Normal memory (ZONE_NORMAL)">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1312871615980" FOLDED="true" ID="ID_938071096" MODIFIED="1400575873978" TEXT="High memory (ZONE_HIGHMEM)">
<icon BUILTIN="full-3"/>
<node CREATED="1313631301221" ID="ID_1852945336" MODIFIED="1400575867280" TEXT="This zone contains &#x201c;high memory,&#x201d; which are pages &#xa;not permanently mapped into the kernel&#x2019;s address space."/>
</node>
</node>
<node CREATED="1312872585307" ID="ID_1972336281" MODIFIED="1400654019659" TEXT="page">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1400573366896" ID="ID_1353645521" MODIFIED="1400574248337">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The page structure is associated with <b><i><font color="#0000ff">physical pages</font></i></b>, not virtual pages.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1358151860651" ID="ID_102780468" MODIFIED="1400573355146" TEXT="include/linux/mm_types.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1358148851260" ID="ID_1767581039" MODIFIED="1400573465694">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><i>page</i></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long flags;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct address_space&#160;&#160;*mapping;
    </p>
    <p>
      &#160;&#160;&#160;&#160;pgoff_t index;
    </p>
    <p>
      &#160;&#160;&#160;&#160;atomic_t _mapcount;&#160;&#160;// Number of Page Table entries that refer to the page frame.
    </p>
    <p>
      &#160;&#160;&#160;&#160;atomic_t _count;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// Page frame's reference counter, -1 means page frame is free
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head lru;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long private;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;void *virtual;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1355734730406" ID="ID_365226592" MODIFIED="1400574266550" TEXT="alloc_pages(gfp_mask, order)/alloc_page(gfp_mask)&#xa;__free_pages(page, order)/__free_page(page)">
<icon BUILTIN="button_ok"/>
<node CREATED="1355734931170" ID="ID_337663512" MODIFIED="1400573937486">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allocates 2 order&#160;&#160;pages and returns a pointer to the&#160;&#160;first page&#8217;s <b><i><font color="#000000">page structure</font></i></b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1355735133119" ID="ID_587331535" MODIFIED="1400574110800" TEXT="__get_free_pages(gfp_mask, order)/__get_free_page(gfp_mask)/get_zeroed_page(gfp_mask)&#xa;free_pages(addr, order)/free_page(addr)">
<node CREATED="1355735496874" ID="ID_631351050" MODIFIED="1400573940934">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Allocates 2 order&#160;&#160;pages and returns a pointer to the&#160;&#160;first page&#8217;s <b><i>logical address</i></b>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312872685043" ID="ID_362844691" MODIFIED="1400574092529" TEXT="page_address(page)/vir_to_page(addr)">
<node CREATED="1313633075838" ID="ID_370746362" MODIFIED="1400573899907">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This page_address() returns a pointer to the logical address where&#160;the given physical page currently&#160;&#160;resides.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1400573922928" ID="ID_1215778099" MODIFIED="1400574028353" TEXT="kmap(page)/kunmap(page)">
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
</html></richcontent>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1358324000021" FOLDED="true" ID="ID_1644107989" MODIFIED="1400664471947" POSITION="right" TEXT="Process Address Space">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1312872830109" ID="ID_11445334" MODIFIED="1400660249127" TEXT="memory descriptor">
<node CREATED="1358303465051" ID="ID_1231007921" MODIFIED="1400660267961" TEXT="include/linux/mm_types.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1358303519968" ID="ID_1815091434" MODIFIED="1400660335619">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="3" face="SansSerif">struct <b><i>mm_struct</i></b>&#160;{ </font>
    </p>
    <p>
      <font size="3" face="SansSerif">&#160;&#160;&#160;&#160;struct vm_area_struct&#160;&#160;*</font><font face="SansSerif" color="#c5491e" size="3">mmap</font><font face="SansSerif" size="3">;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* list of memory areas */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;struct rb_root </font><font face="SansSerif" color="#da5f22" size="3">mm_rb</font><font face="SansSerif" size="3">;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* red-black tree of VMAs */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;struct vm_area_struct&#160;&#160;*mmap_cache;&#160;&#160;&#160;&#160;/* last used memory area */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;unsigned long&#160;free_area_cache;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* 1st address space hole */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;pgd_t&#160;&#160;*pgd;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* page global directory */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;atomic_t&#160;mm_users;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* address space users */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;atomic_t&#160;mm_count;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* primary usage counter */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;int&#160;map_count;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* number of memory areas */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;struct rw_semaphore&#160;mmap_sem;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* memory area semaphore */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;spinlock_t&#160;page_table_lock;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* page table lock */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;struct list_head&#160;</font><font face="SansSerif" color="#f06018" size="3">mmlist</font><font face="SansSerif" size="3">;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* list of all mm_structs */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">};</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1358304586374" ID="ID_1296864918" MODIFIED="1400660348133" TEXT="The mmap and mm_rb fields are different data structures that contain the same thing: all the memory areas in this address space. The former stores them in a linked list, whereas the latter stores them in a red-black tree. A red-black tree is a type of binary tree; like all binary trees, searching for a given element is an O(log n) operation. "/>
<node CREATED="1358304323910" ID="ID_284240669" MODIFIED="1400660355577" TEXT="All of the mm_struct structures are strung together in a doubly linked list via the mmlist field. The initial element in the list is the init_mm memory descriptor, which describes the address space of the init process."/>
</node>
<node CREATED="1358324019184" ID="ID_946038574" MODIFIED="1400660225902" TEXT="create">
<node CREATED="1358324083115" ID="ID_1948357843" MODIFIED="1358324083115" TEXT=""/>
<node CREATED="1358323292025" ID="ID_17931463" MODIFIED="1358323351927">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      do_fork()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// kernel/fork.c
    </p>
    <p>
      &#160;&#160;copy_process()
    </p>
    <p>
      &#160;&#160;&#160;&#160;dup_task_struct()
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;copy_mm()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;dup_mm()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;allocate_mm()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// create mm_struct
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;kmem_cache_alloc(mm_cachep, GFP_KERNEL)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mm_init()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mm_alloc_pgd() &#160;&#160;&#160;&#160;// create page table
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pgd_alloc()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;dup_mmap()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// create vm_area_struct
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;kmem_cache_alloc(vm_area_cachep, GFP_KERNEL)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;copy_page_range()
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1358324027155" ID="ID_580095057" MODIFIED="1400660233862" TEXT="delete">
<node CREATED="1358324092331" ID="ID_1996889249" MODIFIED="1358324092331" TEXT=""/>
<node CREATED="1358323551149" ID="ID_529718830" MODIFIED="1358323604808">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      do_exit()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// kernel/exit.c
    </p>
    <p>
      &#160;&#160;exit_mm()
    </p>
    <p>
      &#160;&#160;&#160;&#160;mm_release()
    </p>
    <p>
      &#160;&#160;&#160;&#160;enter_lazy_tlb()
    </p>
    <p>
      &#160;&#160;&#160;&#160;mmput()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;exit_mmap()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// release the memory region descriptors
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;mmdrop()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// drops the mm and the page tables
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mm_free_pdg()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pdg_free()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;destroy_context()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;free_mm()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;kmem_cache_free(mm_cachep, mm)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1358304712817" ID="ID_1319173337" MODIFIED="1400660509479" TEXT="memory area">
<node CREATED="1312872790371" FOLDED="true" ID="ID_354933782" MODIFIED="1400660502162" TEXT="struct vm_area_struct">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1358306236953" ID="ID_379944355" MODIFIED="1358306244431" TEXT="include/linux/mm_types.h"/>
<node CREATED="1358306250874" ID="ID_1029444362" MODIFIED="1358306962940">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unsigned long vm_start;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* VMA start, inclusive */
    </p>
    <p>
      unsigned long vm_end;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* VMA end , exclusive */
    </p>
    <p>
      struct vm_area_struct *<font color="#dd4b2b">vm_next</font>;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* list of VMA's */
    </p>
    <p>
      struct rb_node <font color="#ea4623">vm_rb</font>;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* VMA's node in the tree */
    </p>
    <p>
      struct mm_struct *<font color="#e9411c">vm_mm</font>;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* associated mm_struct */
    </p>
    <p>
      pgprot_t vm_page_prot;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* access permissions */
    </p>
    <p>
      unsigned long vm_flags;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* flags */
    </p>
    <p>
      struct vm_operations_struct *vm_ops;&#160;&#160;/* associated ops */
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358321754627" ID="ID_174051389" MODIFIED="1358321828047">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      find_vma()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// Look up the first VMA which satisfies&#160;&#160;addr &lt; vm_end,&#160;&#160;NULL if none.
    </p>
    <p>
      find_vma_intersection()&#160;&#160;// Finding a region that overlaps a given interval
    </p>
    <p>
      get_unmapped_area()&#160;&#160;&#160;&#160;// Finding a free interval
    </p>
    <p>
      insert_vm_struct()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// Inserting a region in the memory descriptor list
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358321851042" ID="ID_531314883" MODIFIED="1358321895769">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      do_mmap()&#160;&#160;&#160;&#160;&#160;// Allocating a Linear Address Interval
    </p>
    <p>
      do_munmap() // Releasing a Linear Address Interval
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312872821909" ID="ID_1486450980" MODIFIED="1400660521210" TEXT="struct vm_operations_struct">
<node CREATED="1358322149966" ID="ID_528647959" MODIFIED="1358322155613" TEXT="include/linux/mm.h"/>
<node CREATED="1358322156214" FOLDED="true" ID="ID_1045103683" MODIFIED="1395737719599">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      void (*open)();
    </p>
    <p>
      void (*close)();
    </p>
    <p>
      int (*<b><font color="#e26322">fault</font></b>)();
    </p>
    <p>
      int (*page_mkwrite)();
    </p>
    <p>
      int (*access)();
    </p>
    <p>
      int (*set_policy)();
    </p>
    <p>
      struct mempolicy *();
    </p>
    <p>
      int (*migrate)();
    </p>
    <p>
      int (*remap_pages)();
    </p>
  </body>
</html></richcontent>
<node CREATED="1358325560353" ID="ID_1708513540" MODIFIED="1358325560353" TEXT=""/>
<node CREATED="1358322302967" ID="ID_323506488" MODIFIED="1358323956329">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#e5692b">do_page_fault()*</font></b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// arch/x86/mm/fault.c
    </p>
    <p>
      &#160;&#160;__do_page_fault()
    </p>
    <p>
      &#160;&#160;&#160;&#160;find_vma()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// mm/mmap.c
    </p>
    <p>
      &#160;&#160;&#160;&#160;handle_mm_fault()*&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// mm/memory.c
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;pgd_offset()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;pud_alloc()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;pmd_alloc()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;__pte_alloc()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;handle_pte_fault()*
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;do_anonymous_page()*&#160;&#160;// demand paging
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mk_pte()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;set_pte_at()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;do_wp_page()*&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// copy on write
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;alloc_page()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mk_pte()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;set_pte_at_notify()
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1312873123709" ID="ID_1667007813" MODIFIED="1400660219372" TEXT="mmap">
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
<node CREATED="1312871846067" FOLDED="true" ID="ID_460105401" MODIFIED="1400660692945" POSITION="right" TEXT="kmalloc(size, flags)/kfree(addr)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
<node CREATED="1312873575475" ID="ID_1238007881" MODIFIED="1400578706082">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The function returns a pointer to a region of memory that is at least size bytes in length. The region of memory allocated is <b><i><font color="#0000ff">physically contiguous</font></i></b>.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
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
<node CREATED="1312871908829" FOLDED="true" ID="ID_1506915144" MODIFIED="1400660654854" POSITION="right" TEXT="vmalloc(size)/vfree(addr)">
<icon BUILTIN="button_cancel"/>
<node CREATED="1312873560668" ID="ID_1752255251" MODIFIED="1400578753072">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The function returns a pointer to at least size bytes of <b><i><font color="#0000ff">virtually contiguous</font></i></b>&#160;memory. The function might sleep and thus cannot be called from interrupt context or other situations in which blocking is not permissible.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
</node>
</map>
