<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1355724680521" ID="ID_1142587453" MODIFIED="1355732432524" TEXT="Page Frame Management">
<node CREATED="1355733318042" ID="ID_953264299" MODIFIED="1355734707459" POSITION="right" TEXT="zoned page frame allocator">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1355732441930" ID="ID_1868444940" MODIFIED="1355733310159" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <img src="../../../../图片/选区_001.png" />
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1355734021610" ID="ID_605187022" MODIFIED="1355734023739" POSITION="right" TEXT="node">
<node CREATED="1355734154125" ID="ID_1556069832" MODIFIED="1355734344686" TEXT="struct pg_data_t">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1355734347033" ID="ID_398232972" MODIFIED="1355734349434" TEXT="include/linux/mmzone.h"/>
<node CREATED="1355735967321" ID="ID_914171331" MODIFIED="1355735986669">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="../../../../图片/node_zone_page.jpeg" />
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1355734016134" ID="ID_57613594" MODIFIED="1355734018263" POSITION="right" TEXT="zone">
<node CREATED="1355734282936" ID="ID_17349418" MODIFIED="1355734363968" TEXT="struct zone">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1355734292150" ID="ID_994355588" MODIFIED="1355734304388" TEXT="include/linux/mmzone.h"/>
</node>
</node>
<node CREATED="1355734006810" ID="ID_1464354382" MODIFIED="1355734010263" POSITION="right" TEXT="page">
<node CREATED="1355734408197" ID="ID_1729566387" MODIFIED="1355734423388" TEXT="struct page">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1355734426735" ID="ID_1229376363" MODIFIED="1355734435878" TEXT="include/linux/mm_type.h"/>
</node>
<node CREATED="1355735133119" ID="ID_587331535" MODIFIED="1355735295286" TEXT="_ _get_free_pages(gfp_mask, order)/__get_free_page(gfp_mask)/get_zeroed_page(gfp_mask)&#xa;free_pages(addr, order)/free_page(addr) ">
<icon BUILTIN="button_ok"/>
<node CREATED="1355735330265" ID="ID_293453969" MODIFIED="1355735341015" TEXT="mm/page_alloc.c"/>
<node CREATED="1355735496874" ID="ID_631351050" MODIFIED="1355735504889" TEXT="Allocates 2 order&#xa0;&#xa0;pages and returns a pointer &#xa0;to the&#xa0;&#xa0;first page&#x2019;s logical address">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1355734730406" ID="ID_365226592" MODIFIED="1355735127304" TEXT="alloc_pages(gfp_mask, order)/alloc_page(gfp_mask)&#xa;__free_pages(page, order)/__free_page(page)">
<icon BUILTIN="button_ok"/>
<node CREATED="1355735437498" ID="ID_796911350" MODIFIED="1355735446119" TEXT="mm/mempolicy.c"/>
<node CREATED="1355734931170" ID="ID_337663512" MODIFIED="1355735034232" TEXT="Allocates 2 order&#xa0;&#xa0;pages and returns a pointer &#xa0;to the&#xa0;&#xa0;first page&#x2019;s page structure">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
</node>
</node>
</map>
