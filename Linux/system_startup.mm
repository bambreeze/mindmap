<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1395371650401" ID="ID_1271042023" MODIFIED="1395371915251" TEXT="system_startup">
<node CREATED="1395234389151" ID="ID_1041282017" MODIFIED="1395234563806" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      In operating systems, the term denotes bringing at least a portion of the <b><font color="#0000ff"><i>operating system into main memory </i></font></b>and having the <b><font color="#0000ff"><i>processor execute</i></font></b>&#160;it. It also denotes the <b><font color="#0000ff"><i>initialization of kernel data structures</i></font></b>, the <b><font color="#0000ff"><i>creation of some user processes</i></font></b>, and the transfer of control to one of them.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1395234358616" FOLDED="true" ID="ID_444486857" MODIFIED="1395734473751" POSITION="right" TEXT="Prehistoric Age: the BIOS">
<icon BUILTIN="full-1"/>
<node CREATED="1395236880474" ID="ID_893492909" MODIFIED="1395236948079">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      After <b><font color="#0000ff"><i>RESET</i></font></b>&#160;is asserted, some registers of the processor (including <tt>cs</tt>&#160;&#160;and <tt>eip</tt>) are set to fixed values, and the code found at <b><font color="#0000ff"><i>physical address <tt>0xfffffff0</tt></i></font></b>&#160;is executed. This address is mapped by the hardware to a certain read-only, persistent memory chip that is often called Read-Only Memory (ROM). The set of programs stored in ROM is traditionally called the <span class="docEmphasis">Basic Input/Output System</span>&#160;(<b><span class="docEmphasis"><font color="#0000ff"><i>BIOS</i></font></span></b>) in the 80 x 86 architecture.
    </p>
  </body>
</html></richcontent>
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
<node CREATED="1395237065946" ID="ID_635442741" MODIFIED="1395237280281">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff"><i>Searches for an operating system to boot.</i></font></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1395237101465" ID="ID_928798782" MODIFIED="1395237282775">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      As soon as a valid device is found, it <b><font color="#0000ff"><i>copies</i></font></b>&#160;the contents of its <b><font color="#0000ff"><i>first sector</i></font></b>&#160;into RAM, starting from <b><font color="#0000ff"><i>physical address</i></font></b>&#160;<b><font color="#0000ff"><tt><i>0x00007c00</i></tt></font></b>, and then jumps into that address and <b><font color="#0000ff"><i>executes the code</i></font></b>&#160;just loaded.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-4"/>
</node>
</node>
<node CREATED="1395234571062" FOLDED="true" ID="ID_1263029943" MODIFIED="1395734471507" POSITION="right" TEXT="Ancient Age: the Boot Loader">
<icon BUILTIN="full-2"/>
<node CREATED="1395320718869" ID="ID_785163258" MODIFIED="1395320775021">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The <span class="docEmphasis">boot loader</span>&#160;is the program invoked by the BIOS to <b><font color="#0000ff"><i>load the image of an operating system kernel into RAM</i></font></b>.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1395320777370" ID="ID_1855298211" MODIFIED="1395734463138">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff"><i>MBR</i></font></b>(Master Boot Record)
    </p>
  </body>
</html></richcontent>
<node CREATED="1395322561969" ID="ID_1023833752" MODIFIED="1395322564857" TEXT="The first sector of the hard disk"/>
<node CREATED="1395322602879" ID="ID_887275313" MODIFIED="1395734464885" TEXT="consist">
<node CREATED="1395321140599" ID="ID_608907478" MODIFIED="1395321474636">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff">partition table</font>
    </p>
  </body>
</html></richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1395321495680" FOLDED="true" ID="ID_1167652212" MODIFIED="1395734469755">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff"><i>LILO</i></font></b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1395322653510" ID="ID_940817652" MODIFIED="1395322663708" TEXT="small program, which loads the first sector of the partition containing the operating system to be started."/>
<node CREATED="1395321792588" ID="ID_1962373931" MODIFIED="1395322371389">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Invokes a BIOS procedure to <b><font color="#0000ff"><i>display</i></font></b>&#160;a &quot;Loading&quot; message.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1395321838391" ID="ID_1060432070" MODIFIED="1395322373663">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Invokes a BIOS procedure to load an initial portion of the kernel image from disk: <b><font color="#0000ff"><i>the first 512 bytes</i></font></b>&#160;of the kernel image are put in RAM at <b><font color="#0000ff"><i>address <tt>0x00090000</tt></i></font></b>, while the code of the <b><font color="#0000ff"><tt><i>setup( )</i></tt><i>&#160;function</i></font></b>&#160;(see below) is put in RAM starting from <b><font color="#0000ff"><i>address <tt>0x00090200</tt></i></font></b>.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1395321858239" ID="ID_953103829" MODIFIED="1395322446507">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Invokes a BIOS procedure to load the rest of <b><font color="#0000ff"><i>the kernel image</i></font></b>&#160; from disk and puts the image in RAM starting from either low address <tt>0x00010000</tt>&#160;(for small kernel images compiled with <tt>make zImage</tt>) or high <b><font color="#0000ff"><i>address <tt>0x00100000</tt></i></font></b>&#160;&#160;(for big kernel images compiled with <tt>make bzImage</tt>).
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1395321893012" ID="ID_540136507" MODIFIED="1395322462275">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff"><i>Jumps to the <tt>setup( )</tt>&#160;code.</i></font></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-4"/>
</node>
</node>
</node>
</node>
</node>
<node CREATED="1395234586278" FOLDED="true" ID="ID_538273730" MODIFIED="1395737081271" POSITION="right" TEXT="Middle Ages: the setup( ) Function">
<icon BUILTIN="full-3"/>
<node CREATED="1395735716025" ID="ID_970882262" MODIFIED="1395737068041" TEXT="arch/x86/boot/arch/x86/boot/header.S">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395322820801" ID="ID_455354932" MODIFIED="1395322882485">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The code of the <tt>setup( )</tt>&#160;assembly language function has been placed by the linker at <b><font color="#0000ff"><i>offset <tt>0x200</tt></i></font></b>&#160;of the kernel image file.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1395322929631" FOLDED="true" ID="ID_1234746309" MODIFIED="1395734457977">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff"><i>initialize the hardware devices</i></font></b>&#160;in the computer and <b><font color="#0000ff"><i>set up the environment</i></font></b>&#160;for the execution of the kernel program.
    </p>
  </body>
</html></richcontent>
<node CREATED="1395327166302" ID="ID_707152137" MODIFIED="1395327386638" TEXT="...">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1395327169686" ID="ID_1761406114" MODIFIED="1395327390068">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Sets up a provisional <b><font color="#0000ff"><i>Interrupt Descriptor Table (IDT) </i></font></b>and a provisional<b><font color="#0000ff"><i>&#160;Global Descriptor Table (GDT)</i></font></b>.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1395327236065" ID="ID_1747506810" MODIFIED="1395327392910">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Resets the floating-point unit (<b><font color="#0000ff"><i>FPU</i></font></b><a name="IDX-APP-A-0025">
</a>&#160;), if any.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1395327250817" ID="ID_115218434" MODIFIED="1395327395431">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Reprograms the <b><font color="#0000ff"><i>Programmable Interrupt Controllers (PIC)</i></font></b>&#160; to mask all interrupts, except IRQ2 which is the cascading interrupt between the two PICs.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-4"/>
</node>
<node CREATED="1395327310752" ID="ID_214018150" MODIFIED="1395327398216">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff0000"><i>Switches the CPU from Real Mode to Protected Mode</i></font></b>&#160;by setting the <tt>PE</tt>&#160;bit in the <tt>cr0</tt><a name="IDX-APP-A-0026">
</a>&#160;status register. The <tt>PG</tt>&#160;bit in the <tt>cr0</tt>&#160;register is cleared, so paging is still disabled.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-5"/>
</node>
<node CREATED="1395327355743" ID="ID_1567324057" MODIFIED="1395327401130">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff"><i>Jumps to the <tt>startup_32( )</tt>&#160;</i></font></b>assembly language function.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-6"/>
</node>
</node>
</node>
<node CREATED="1395234599902" FOLDED="true" ID="ID_149885112" MODIFIED="1395737082885" POSITION="right" TEXT="Renaissance: the startup_32( ) Functions">
<icon BUILTIN="full-4"/>
<node CREATED="1395323316914" ID="ID_1987996880" MODIFIED="1395732762767" TEXT="arch/x86/boot/compressed/head_32.S">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395323356865" ID="ID_1634402747" MODIFIED="1395323417243">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      After <tt>setup( )</tt>&#160;terminates, the function has been moved to <b><font color="#0000ff"><i>physical address <tt>0x00100000</tt></i></font></b><tt>.</tt>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1395323649363" ID="ID_511339312" MODIFIED="1395323874148">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Initializes the <b><font color="#0000ff"><i>segmentation registers</i></font></b>&#160;and a provisional <b><font color="#0000ff"><i>stack</i></font></b>.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1395323705170" ID="ID_762588453" MODIFIED="1395323901770">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Clears all bits in the <b><font color="#0000ff"><tt><i>eflags</i></tt></font></b><a name="IDX-APP-A-0030">
</a>&#160;register.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1395323722057" ID="ID_590187609" MODIFIED="1395323938316">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Fills the area of <b><font color="#0000ff"><i>uninitialized data</i></font></b>&#160;of the kernel identified by the <tt>_edata</tt>&#160;&#160;and <tt>_end</tt>&#160;symbols with <b><font color="#0000ff"><i>zeros</i></font></b>
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
<node CREATED="1395323822919" FOLDED="true" ID="ID_138157557" MODIFIED="1395734200743">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff"><i>Jumps to physical address <tt>0x00100000</tt>.</i></font></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-5"/>
<node CREATED="1395323992545" ID="ID_1017497524" MODIFIED="1395733098480" TEXT="arch/x86/kernel/head_32.S">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395324031912" ID="ID_1253009883" MODIFIED="1395326307525">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Initializes the <b><font color="#0000ff"><i>segmentation registers</i></font></b>&#160;with their final values.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1395325751353" ID="ID_606328734" MODIFIED="1395326309447">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Fills the <b><font color="#0000ff"><i>bss</i></font></b>&#160;segment of the kernel with zeros.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1395325815768" ID="ID_1515250331" MODIFIED="1395326311205">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Initializes the provisional kernel <b><font color="#0000ff"><i>Page Tables</i></font></b>&#160;contained in <tt>swapper_pg_dir</tt>&#160;&#160;and <tt>pg0</tt>&#160;to identically <b><font color="#0000ff"><i>map the linear addresses to the same physical addresses</i></font></b>.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1395326056798" ID="ID_1627420757" MODIFIED="1395327467106">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Stores the address of the <b><font color="#0000ff"><i>Page Global Directory</i></font></b>&#160;in the <tt>cr3</tt><a name="IDX-APP-A-0032">
</a>&#160;register, and <b><font color="#ff0000"><i>enables paging</i></font></b>&#160;by setting the <tt>PG</tt>&#160;bit in the <tt>cr0</tt>&#160;&#160;register.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-4"/>
</node>
<node CREATED="1395326110569" ID="ID_201567461" MODIFIED="1395326314560">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Sets up the Kernel Mode stack for <b><font color="#0000ff"><i>process 0</i></font></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-5"/>
</node>
<node CREATED="1395326142265" ID="ID_1106093258" MODIFIED="1395326316581">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Once again, the function clears all bits in the <b><font color="#0000ff"><tt><i>eflags</i></tt></font></b>&#160;register.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-6"/>
</node>
<node CREATED="1395326167088" ID="ID_364390457" MODIFIED="1395326318365">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Invokes <tt>setup_idt( )</tt>&#160;to fill the <b><font color="#0000ff"><i>IDT</i></font></b>&#160;with null interrupt handlers
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
<node CREATED="1395326219215" ID="ID_148824914" MODIFIED="1395326328183">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Loads the <tt>gdtr</tt><a name="IDX-APP-A-0033">
</a>&#160;and <font color="#000000"><tt>idtr</tt></font><a name="IDX-APP-A-0034">
</a>&#160;registers with the addresses of the <b><font color="#0000ff"><i>GDT and IDT tables</i></font></b>.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
<icon BUILTIN="full-0"/>
</node>
<node CREATED="1395326273037" ID="ID_1538765706" MODIFIED="1395326330969">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff"><i>Jumps to the <tt>start_kernel( )</tt>&#160;function.</i></font></b>
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
<icon BUILTIN="full-1"/>
</node>
</node>
</node>
<node CREATED="1395234613485" FOLDED="true" ID="ID_149894661" MODIFIED="1395736764502" POSITION="right" TEXT="Modern Age: the start_kernel( ) Function">
<icon BUILTIN="full-5"/>
<node CREATED="1395733441620" ID="ID_1119478410" MODIFIED="1395733979503" TEXT="init/main.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395326507021" FOLDED="true" ID="ID_551609078" MODIFIED="1395734244065" TEXT="completes the initialization of the Linux kernel">
<node CREATED="1395734114051" ID="ID_662555231" MODIFIED="1395734114051" TEXT=""/>
<node CREATED="1395733984014" ID="ID_418204844" MODIFIED="1395734175574">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      startup_32&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// arch/x86/kernel/head_32.S
    </p>
    <p>
      &#160;&#160;initial_code
    </p>
    <p>
      &#160;&#160;&#160;&#160;i386_start_kernel &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// arch/x86/kernel/head32.c
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;start_kernel()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// init/main.c
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;setup_arch(&amp;command_line)&#160;&#160;&#160;// arch/x86/kernel/setup.c
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;paging_init() &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// arch/x86/mm/init_32.c
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pagetable_init()
    </p>
  </body>
</html></richcontent>
</node>
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
<node CREATED="1395326615909" ID="ID_1955004433" MODIFIED="1395326881011">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The <b><font color="#0000ff"><i>memory zones</i></font></b>&#160;are initialized by invoking the <tt>build_all_zonelists( )</tt>&#160;&#160;function
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1395326650396" ID="ID_314458243" MODIFIED="1395326883025">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The <b><font color="#0000ff"><i>Buddy system</i></font></b>&#160;allocators are initialized by invoking the <tt>page_alloc_init( )</tt>&#160;and <tt>mem_init( )</tt>&#160;functions
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1395326709391" ID="ID_838226712" MODIFIED="1395326884799">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The final initialization of the <b><font color="#0000ff"><i>IDT</i></font></b>&#160;is performed by invoking <tt>trap_init( )</tt>&#160;and <tt>init_IRQ( )</tt>
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
<node CREATED="1395326795123" ID="ID_1823862165" MODIFIED="1395326889865">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The <b><font color="#0000ff"><i>slab allocator</i></font></b>&#160;is initialized by the <tt>kmem_cache_init( )</tt>&#160;function
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
