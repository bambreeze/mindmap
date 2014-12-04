<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1395371650401" ID="ID_1271042023" MODIFIED="1417679153101" TEXT="System Startup">
<node CREATED="1395234358616" FOLDED="true" ID="ID_444486857" MODIFIED="1417679180768" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Prehistoric Age: <b><i><font color="#ff0000">BIOS</font></i></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
<node CREATED="1395236880474" ID="ID_893492909" MODIFIED="1417677640107">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      After <b><i><font color="#0000ff">RESET</font></i></b>&#160;is asserted, some registers of the processor (including <tt>cs</tt>&#160;&#160;and <tt>eip</tt>) are set to fixed values, and the code found at <b><i><font color="#0000ff">physical address <tt>0xfffffff0</tt></font></i></b>&#160;is executed. This address is mapped by the hardware to a certain read-only, persistent memory chip that is often called Read-Only Memory (ROM). The set of programs stored in ROM is traditionally called the Basic Input/Output System&#160;(<font color="#000000">BIOS</font>) in the 80 x 86 architecture.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-0"/>
</node>
<node CREATED="1395237012657" ID="ID_95853591" MODIFIED="1395237275390">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Executes a series of tests on the computer hardware to establish which devices are present and whether they are working properly. This phase is often called <span class="docEmphasis">Power-On Self-Test</span>&#160;(<b><span class="docEmphasis"><font color="#0000ff"><i>POST</i></font></span></b>)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1395237035184" ID="ID_101670701" MODIFIED="1395237277886">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff"><i>Initializes the hardware devices</i></font></b>.&#160;
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1395237065946" ID="ID_635442741" MODIFIED="1417677669707">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Searches for an operating system to boot.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1395237101465" ID="ID_928798782" MODIFIED="1417677719855">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">As soon as a valid device is found, it copies&#160;the contents of its first sector&#160;into RAM, starting from physical address&#160;</font><b><i><tt><font color="#0000ff">0x00007c00</font></tt></i></b><font color="#000000">, and then jumps into that address and executes the code&#160;just loaded.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-4"/>
</node>
<node CREATED="1417677835322" ID="ID_1039781483" MODIFIED="1417677877479">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Jumps to <b><i><font color="#ff0000">Boot Loader</font></i></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-5"/>
</node>
</node>
<node CREATED="1395234571062" FOLDED="true" ID="ID_1263029943" MODIFIED="1417679184912" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Ancient Age: <b><i><font color="#ff0000">Boot Loader</font></i></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
<node CREATED="1395320718869" ID="ID_785163258" MODIFIED="1417676785616">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The <span class="docEmphasis">boot loader</span>&#160;is the program invoked by the BIOS to <b><font color="#0000ff"><i>load the image of an operating system kernel into RAM</i></font></b>.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-0"/>
</node>
<node CREATED="1395321792588" ID="ID_1962373931" MODIFIED="1417675648191">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Invokes a BIOS procedure to <font color="#000000">display</font>&#160;a &quot;Loading&quot; message.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1395321838391" ID="ID_1060432070" MODIFIED="1417677559240">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Invokes a BIOS procedure to load an initial portion of the kernel image from disk: the first 512 bytes&#160;of the kernel image are put in RAM at address <tt>0x00090000</tt>, while the code of the <tt>setup()</tt>&#160;function is put in RAM starting from address </font><b><i><tt><font color="#0000ff">0x00090200</font></tt></i></b><font color="#000000">.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1395321858239" ID="ID_953103829" MODIFIED="1417677569907">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Invokes a BIOS procedure to load the rest of the kernel image&#160;&#160;from disk and puts the image in RAM starting from either low address <tt>0x00010000</tt>&#160;(for small kernel images compiled with <tt>make zImage</tt>) or high address </font><b><i><tt><font color="#0000ff">0x00100000</font></tt></i></b><font color="#000000">&#160;&#160;(for big kernel images compiled with <tt>make bzImage</tt>).</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1395321893012" ID="ID_540136507" MODIFIED="1417675615110">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Jumps to </font><b><i><tt><font color="#ff0000">setup()</font></tt></i></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-4"/>
</node>
</node>
<node CREATED="1395234586278" FOLDED="true" ID="ID_538273730" MODIFIED="1417679177448" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Middle Ages: <b><i><font color="#ff0000">setup( )</font></i></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
<node CREATED="1395735716025" ID="ID_970882262" MODIFIED="1417596568072" TEXT="arch/x86/boot/header.S">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395322820801" ID="ID_455354932" MODIFIED="1417676649515">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      This function has been placed by the linker at<font color="#000000">&#160;offset <tt>0x200</tt>&#160;</font>of the kernel image file.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-0"/>
</node>
<node CREATED="1395322929631" ID="ID_1234746309" MODIFIED="1417658445871">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><i><font color="#0000ff">Initialize the hardware devices</font></i></b>&#160;in the computer and <font color="#000000">set up the environment</font>&#160;for the execution of the kernel program.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1395327169686" ID="ID_1761406114" MODIFIED="1417658421788">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Sets up a provisional Interrupt Descriptor Table (IDT) and a provisional&#160;Global Descriptor Table (GDT).</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1395327236065" ID="ID_1747506810" MODIFIED="1417658405959">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Resets the floating-point unit (<font color="#000000">FPU</font><a name="IDX-APP-A-0025">
</a>&#160;), if any.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1395327250817" ID="ID_115218434" MODIFIED="1417658393117">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Reprograms the <font color="#000000">Programmable Interrupt Controllers (PIC)&#160; </font>to mask all interrupts, except IRQ2 which is the cascading interrupt between the two PICs.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-4"/>
</node>
<node CREATED="1395327310752" ID="ID_214018150" MODIFIED="1417658351518">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Switches the CPU from Real Mode to </font><b><i><font color="#0000ff">Protected Mode</font></i></b>&#160;by setting the <tt>PE</tt>&#160;bit in the <tt>cr0</tt><a name="IDX-APP-A-0026">
</a>&#160;status register. The <tt>PG</tt>&#160;bit in the <tt>cr0</tt>&#160;register is cleared, so paging is still disabled.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-5"/>
</node>
<node CREATED="1395327355743" ID="ID_1567324057" MODIFIED="1417658322473">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Jumps to </font><b><i><tt><font color="#ff0000">startup_32()</font></tt></i></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-6"/>
</node>
</node>
<node CREATED="1395234599902" FOLDED="true" ID="ID_149885112" MODIFIED="1417679178996" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Renaissance: <b><i><font color="#ff0000">startup_32( )</font></i></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-4"/>
<node CREATED="1395323316914" ID="ID_1987996880" MODIFIED="1395732762767" TEXT="arch/x86/boot/compressed/head_32.S">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1417592710761" ID="ID_1624357782" MODIFIED="1417592778142" TEXT="This function started from physical address 0x1000 or 0x100000.">
<icon BUILTIN="full-0"/>
</node>
<node CREATED="1417592849350" ID="ID_393181746" MODIFIED="1417592857470" TEXT="Initializes the segmentation registers&#xa0;and a provisional stack.">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1395323705170" ID="ID_762588453" MODIFIED="1417593043157">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Clears all bits in the <tt>e</tt>flags<a name="IDX-APP-A-0030">
</a>&#160;register.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1395323722057" ID="ID_590187609" MODIFIED="1417593080812">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Fills the area of uninitialized data&#160;of the kernel identified by the <tt>_edata</tt>&#160;&#160;and <tt>_end</tt>&#160;symbols with zeros.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1395323738841" ID="ID_1881495906" MODIFIED="1395323972545">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Invokes the <tt>decompress_kernel( )</tt>&#160;function to <b><font color="#0000ff"><i>decompress the kernel image</i></font></b>. The &quot;Uncompressing Linux...&quot; message is displayed first. After the kernel image is decompressed, the &quot;O K, booting the kernel.&quot; message is shown.The decompressed image is then moved into its final position, which starts at <b><font color="#0000ff"><i>physical address <tt>0x00100000</tt></i></font></b>.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-4"/>
</node>
<node CREATED="1395323822919" ID="ID_138157557" MODIFIED="1417593482884">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Jumps to physical address <tt>0x00100000</tt>. </font>
    </p>
    <p>
      <font color="#000000">This is another </font><b><i><font color="#ff0000">startup_32()</font></i></b><font color="#000000">&#160;function.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-5"/>
<node CREATED="1395323992545" ID="ID_1017497524" MODIFIED="1395733098480" TEXT="arch/x86/kernel/head_32.S">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395324031912" ID="ID_1253009883" MODIFIED="1417593516577">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Initializes the segmentation registers&#160;with their final values.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1395325751353" ID="ID_606328734" MODIFIED="1417593603301">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Fills the bss&#160;segment of the kernel with zeros.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1395325815768" ID="ID_1515250331" MODIFIED="1417593701983">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Initializes the provisional kernel Page Tables&#160;contained in <tt>swapper_pg_dir</tt>&#160;&#160;and <tt>pg0</tt>&#160;to identically map the linear addresses to the same physical addresses.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1395326056798" ID="ID_1627420757" MODIFIED="1417593784561">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Stores the address of the <b><i><font color="#0000ff">Page Global Directory</font></i></b>&#160;in the <tt>cr3</tt><a name="IDX-APP-A-0032">
</a>&#160;register, and <b><i><font color="#0000ff">enables paging</font></i></b>&#160;by setting the <tt>PG</tt>&#160;bit in the <tt>cr0</tt>&#160;&#160;register.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-4"/>
</node>
<node CREATED="1395326110569" ID="ID_201567461" MODIFIED="1417593804006">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Sets up the Kernel Mode stack for process 0</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-5"/>
</node>
<node CREATED="1395326142265" ID="ID_1106093258" MODIFIED="1417593818281">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Once again, the function clears all bits in the <tt>eflags</tt>&#160;register.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-6"/>
</node>
<node CREATED="1395326167088" ID="ID_364390457" MODIFIED="1417594698316">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Invokes <tt>setup_idt( )</tt>&#160;to fill the <font color="#000000">IDT</font>&#160;with null interrupt handlers
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-7"/>
</node>
<node CREATED="1395326202766" ID="ID_945239356" MODIFIED="1395326320227">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Puts the system parameters obtained from the BIOS and the parameters passed to the operating system into the first page frame
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-8"/>
</node>
<node CREATED="1395326215959" ID="ID_696067506" MODIFIED="1395326322175" TEXT="Identifies the model of the processor.">
<icon BUILTIN="full-9"/>
</node>
<node CREATED="1395326219215" ID="ID_148824914" MODIFIED="1417593908803">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Loads the <tt>gdtr</tt><a name="IDX-APP-A-0033">
</a>&#160;and <tt><font color="#000000">idtr</font></tt><a name="IDX-APP-A-0034">
</a>&#160;registers with the addresses of the <b><i><font color="#0000ff">GDT </font></i></b><font color="#000000">and</font><b><i><font color="#0000ff">&#160; IDT </font></i></b><font color="#000000">tables.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
<icon BUILTIN="full-0"/>
</node>
<node CREATED="1395326273037" ID="ID_1538765706" MODIFIED="1417595036716">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Jumps to the </font><b><i><font color="#ff0000">i386_start_kernel()</font></i></b><font color="#000000">&#160;function.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
<icon BUILTIN="full-1"/>
<node CREATED="1417594876989" ID="ID_221278378" MODIFIED="1417594885111" TEXT="arch/x86/kernel/head32.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1417594922060" ID="ID_894268279" MODIFIED="1417596096214">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Call the subarch specific early setup&#160;function.</font>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1417594967067" ID="ID_1229419464" MODIFIED="1417595096841">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Call <b><i><font color="#ff0000">start_kernel()</font></i></b>&#160;function.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
</node>
</node>
</node>
<node CREATED="1395234613485" FOLDED="true" ID="ID_149894661" MODIFIED="1417679182790" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Modern Age: <b><i><font color="#ff0000">start_kernel( )</font></i></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-5"/>
<node CREATED="1395733441620" ID="ID_1119478410" MODIFIED="1395733979503" TEXT="init/main.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395326531765" ID="ID_494212039" MODIFIED="1395326878912">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The <b><font color="#0000ff"><i>scheduler</i></font></b>&#160;is initialized by invoking the <tt>sched_init( )</tt>&#160;function
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1395326615909" ID="ID_1955004433" MODIFIED="1417596523351">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The <b><i><font color="#0000ff">memory </font></i></b><font color="#000000">zones</font>&#160;are initialized by invoking the <tt>build_all_zonelists( )</tt>&#160;&#160;function
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1395326650396" ID="ID_314458243" MODIFIED="1417596485842">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The <font color="#000000">Buddy system&#160;</font>allocators are initialized by invoking the <tt>page_alloc_init( )</tt>&#160;and <tt>mem_init( )</tt>&#160;functions
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1395326709391" ID="ID_838226712" MODIFIED="1417596496345">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The final initialization of the <font color="#000000">IDT</font>&#160;is performed by invoking <tt>trap_init( )</tt>&#160;and <tt>init_IRQ( )</tt>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-4"/>
</node>
<node CREATED="1395326735213" ID="ID_100375682" MODIFIED="1395326886497">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The <tt>TASKLET_SOFTIRQ</tt>&#160;and <tt>HI_SOFTIRQ</tt>&#160;are initialized by invoking the <tt>softirq_init( )</tt>&#160;function
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-5"/>
</node>
<node CREATED="1395326766542" ID="ID_1135245398" MODIFIED="1395326888205">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The system date and time are initialized by the <tt>time_init( )</tt>&#160;function
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-6"/>
</node>
<node CREATED="1395326795123" ID="ID_1823862165" MODIFIED="1417596510996">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The <font color="#000000">slab allocator&#160;</font>is initialized by the <tt>kmem_cache_init( )</tt>&#160;function
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-7"/>
</node>
<node CREATED="1395326810362" ID="ID_82714523" MODIFIED="1395326891543">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The speed of the CPU clock is determined by invoking the <tt>calibrate_delay( )</tt>&#160;&#160;function
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-8"/>
</node>
<node CREATED="1395326842033" ID="ID_137025801" MODIFIED="1395326893515">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The kernel thread for <b><font color="#0000ff"><i>process 1</i></font></b>&#160;is created by invoking the <tt>kernel_thread( )</tt>&#160;&#160;function. In turn, this kernel thread creates the other kernel threads<a name="IDX-APP-A-0043">
</a>&#160;and executes the <b><font color="#0000ff"><i>/sbin/init</i></font></b>&#160;program
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-9"/>
</node>
</node>
<node CREATED="1395326922531" ID="ID_1318650655" MODIFIED="1395326972236" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Besides the <b><font color="#0000ff"><i>&quot;Linux version 2.6.11...&quot; message</i></font></b>, which is displayed right after the beginning of <tt>start_kernel( )</tt>, many other messages are displayed in this last phase, both by the <span class="docEmphasis">init</span>&#160;program and by the kernel threads. At the end, the familiar <b><font color="#0000ff"><i>login prompt </i></font></b>appears on the console (or in the graphical screen, if the X Window System<a name="IDX-APP-A-0044">
</a>&#160;is launched at startup), telling the user that the Linux kernel is up and running.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</map>
