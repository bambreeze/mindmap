<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1398822468734" ID="ID_1904401005" MODIFIED="1398845877478" TEXT="Linux Kernel">
<node CREATED="1398837321110" FOLDED="true" ID="ID_1482516283" MODIFIED="1398846200509" POSITION="right" TEXT="overview">
<node CREATED="1398845853208" ID="ID_1004598899" MODIFIED="1398845856596" TEXT="Relationship between applications, the kernel, and hardware"/>
<node CREATED="1398837087723" ID="ID_1178870566" MODIFIED="1398837101454">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/process/relation-app-kernel-hw.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1398824677150" FOLDED="true" ID="ID_781576596" MODIFIED="1398846202014" POSITION="right" TEXT="obtaining the kernel source">
<node CREATED="1398824698344" ID="ID_1628432107" MODIFIED="1398824706625" TEXT="http://www.kernel.org"/>
<node CREATED="1398824707422" ID="ID_1112141163" MODIFIED="1398825058862" TEXT="$ git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"/>
</node>
<node CREATED="1398822477296" FOLDED="true" ID="ID_596028313" MODIFIED="1398846203744" POSITION="right" TEXT="kernel source tree">
<node CREATED="1398822557925" ID="ID_1771425983" MODIFIED="1398822699887" TEXT="arch - Architecture-specific source"/>
<node CREATED="1398822568163" ID="ID_1554657863" MODIFIED="1398822729350" TEXT="block - Block I/O layer"/>
<node CREATED="1398822570484" ID="ID_559833549" MODIFIED="1398822738515" TEXT="crypto - Crypto API"/>
<node CREATED="1398822573957" ID="ID_1627435310" MODIFIED="1398822750328" TEXT="Documentation - Kernel source documentation"/>
<node CREATED="1398822578575" ID="ID_1361264870" MODIFIED="1398822761350" TEXT="drivers - Device drivers"/>
<node CREATED="1398822583065" ID="ID_1644676812" MODIFIED="1398822778189" TEXT="firmware - Device firmware needed to use certaion drivers"/>
<node CREATED="1398822585859" ID="ID_1580236917" MODIFIED="1398822836065" TEXT="fs - The VFS and the individual filesystems"/>
<node CREATED="1398822588076" ID="ID_851507669" MODIFIED="1398822852410" TEXT="include - Kernel headers"/>
<node CREATED="1398822590158" ID="ID_1236741552" MODIFIED="1398822870051" TEXT="init - Kernel boot and initialization"/>
<node CREATED="1398822592966" ID="ID_208170796" MODIFIED="1398822896679" TEXT="ipc - Interprocess communication code"/>
<node CREATED="1398822594327" ID="ID_1706709637" MODIFIED="1398822915817" TEXT="kernel - Core subsystems, such as the scheduler"/>
<node CREATED="1398822597448" ID="ID_1123385191" MODIFIED="1398822927175" TEXT="lib - Helper routines"/>
<node CREATED="1398822598754" ID="ID_268675475" MODIFIED="1398822946576" TEXT="mm - Memory management subsystem and the VM"/>
<node CREATED="1398822600801" ID="ID_1121952383" MODIFIED="1398822957261" TEXT="net - Networking subsystem"/>
<node CREATED="1398822602715" ID="ID_779673186" MODIFIED="1398822969395" TEXT="samples - Sample, demonstrative code"/>
<node CREATED="1398822606245" ID="ID_509327190" MODIFIED="1398822984339" TEXT="scripts - Scripts used to build the kernel"/>
<node CREATED="1398822612616" ID="ID_1986928820" MODIFIED="1398822997296" TEXT="security - Linux Security Module"/>
<node CREATED="1398822617451" ID="ID_1074247723" MODIFIED="1398823007782" TEXT="sound - Sound subsystem"/>
<node CREATED="1398822622092" ID="ID_424816487" MODIFIED="1398823146058" TEXT="tools - Tools helpful for developing Linux"/>
<node CREATED="1398822619972" ID="ID_1596717533" MODIFIED="1398823168494" TEXT="usr - Early user-space code (called initramfs)"/>
<node CREATED="1398822624214" ID="ID_320286554" MODIFIED="1398823190023" TEXT="virt - Virtualization infrastructure"/>
</node>
<node CREATED="1398823268163" FOLDED="true" ID="ID_1171133447" MODIFIED="1398846205442" POSITION="right" TEXT="builing the kernel">
<node CREATED="1398823298673" FOLDED="true" ID="ID_1512053693" MODIFIED="1398825196182" TEXT="configuring the kernel">
<node CREATED="1398823357998" ID="ID_819521215" MODIFIED="1398824014602" TEXT="$ make config">
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1398823873891" ID="ID_1130803505" MODIFIED="1398824043692" TEXT="$ make defconfig">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1398823363610" ID="ID_975248570" MODIFIED="1398824006736" TEXT="$ make menuconfig"/>
<node CREATED="1398823374278" ID="ID_919823161" MODIFIED="1398823799267" TEXT="$ make gconfig"/>
</node>
<node CREATED="1398823892661" ID="ID_514813597" MODIFIED="1398825189091" TEXT="build">
<node CREATED="1398823924365" ID="ID_129749977" MODIFIED="1398824046946" TEXT="$ make">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-2"/>
</node>
</node>
<node CREATED="1398824105885" ID="ID_951009357" MODIFIED="1398824111724" TEXT="installing the new kernel"/>
</node>
<node CREATED="1395370144693" FOLDED="true" ID="ID_1250662614" MODIFIED="1398846207371" POSITION="right" TEXT="Modules">
<node CREATED="1395370155744" ID="ID_1160538326" MODIFIED="1395370183920" TEXT="include/linux/module.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395370185391" ID="ID_826768995" MODIFIED="1395370277986">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><i>module</i></b>
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;enum module_state state;&#160;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Member of list of modules */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <b><font color="#0000ff"><i>list</i></font></b>;&#160;&#160;&#160;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Unique handle for this module */
    </p>
    <p>
      &#160;&#160;&#160;&#160;char name[MODULE_NAME_LEN];&#160;&#160;&#160;
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
<node CREATED="1395826469380" ID="ID_1215982136" MODIFIED="1395826522669" TEXT="Hello World!">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1312597499356" ID="ID_1569495753" MODIFIED="1312597506907" TEXT="Edit">
<node CREATED="1312597528995" MODIFIED="1312597533216" TEXT="init"/>
<node CREATED="1312597534889" MODIFIED="1312597537575" TEXT="exit"/>
</node>
<node CREATED="1312597508819" ID="ID_1290602893" MODIFIED="1312600044941" TEXT="Build"/>
<node CREATED="1312597514093" ID="ID_70255829" MODIFIED="1312597515661" TEXT="Run">
<node CREATED="1395370442185" FOLDED="true" ID="ID_234623858" MODIFIED="1395371901167">
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
<node CREATED="1312597517485" ID="ID_922891249" MODIFIED="1312600053426" TEXT="Debug">
<node CREATED="1312597614008" MODIFIED="1312597621940" TEXT="printk"/>
<node CREATED="1312597623157" MODIFIED="1312597626808" TEXT="/proc"/>
<node CREATED="1312597627306" MODIFIED="1312597631092" TEXT="strace"/>
</node>
</node>
</node>
<node CREATED="1395825956102" FOLDED="true" ID="ID_51099828" MODIFIED="1398846209648" POSITION="right" TEXT="Data Types">
<node CREATED="1312691484673" ID="ID_1308539733" MODIFIED="1312691492652" TEXT="Standard C Types"/>
<node CREATED="1312691530047" ID="ID_139786634" MODIFIED="1395844841293" TEXT="Linux Types">
<node CREATED="1312691629475" MODIFIED="1312691637595" TEXT="&lt;linux/types.h&gt;"/>
<node CREATED="1312691640129" MODIFIED="1312691742800" TEXT="u8 - kernel space"/>
<node CREATED="1312691755425" MODIFIED="1312691763234" TEXT="__8 - user space"/>
<node CREATED="1312691769346" MODIFIED="1312691835978" TEXT="uint8_t - c99">
<icon BUILTIN="button_ok"/>
</node>
</node>
<node CREATED="1312691550460" ID="ID_805149776" MODIFIED="1312691616837" TEXT="Typedef Types"/>
</node>
<node CREATED="1395826578792" FOLDED="true" ID="ID_921166443" MODIFIED="1398846212403" POSITION="right" TEXT="Time">
<node CREATED="1312767433335" ID="ID_1342802873" MODIFIED="1395844881962" TEXT="Timekeeping">
<node CREATED="1313568702623" FOLDED="true" ID="ID_1200914499" MODIFIED="1395826563394" TEXT="jiffies">
<node CREATED="1312767441597" FOLDED="true" ID="ID_651095464" MODIFIED="1395826563394">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      extern unsigned long volatile jiffies;
    </p>
    <p>
      extern u64 jiffies_64;
    </p>
  </body>
</html></richcontent>
<node CREATED="1313581730626" ID="ID_1289200853" MODIFIED="1313581803015" TEXT="The volatile keyword  instructs the compiler to reload the variable &#xa;on each access from main memory and  never alias the variable&#x2019;s&#xa; value in a register, guaranteeing it works as expected.">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312767450789" FOLDED="true" ID="ID_1346993751" MODIFIED="1395826563394" TEXT="HZ - the tick rate">
<node CREATED="1313569598805" FOLDED="true" ID="ID_493492883" MODIFIED="1395826563394" TEXT="(seconds * HZ)">
<node CREATED="1313569638453" ID="ID_60411693" MODIFIED="1313569655261" TEXT="converts from seconds to  a unit of jiffies">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1313569607643" FOLDED="true" ID="ID_588824114" MODIFIED="1395826563394" TEXT="(jiffies / HZ)">
<node CREATED="1313569650254" ID="ID_337942877" MODIFIED="1313569659318" TEXT=" converts from jiffies to seconds">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
<node CREATED="1312767512485" FOLDED="true" ID="ID_945179317" MODIFIED="1395826563394" TEXT="time_after(unknown, known)/time_after_eq(unknown, known)">
<node CREATED="1313567873966" ID="ID_1904233480" MODIFIED="1313567909234">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      It returns true if time unknown is after time known;
    </p>
    <p>
      otherwise, it returns false.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312767533428" ID="ID_467608897" MODIFIED="1312767556896" TEXT="time_before()/time_before_eq()"/>
</node>
<node CREATED="1313568743726" FOLDED="true" ID="ID_1763092405" MODIFIED="1395826563395" TEXT="time">
<node CREATED="1313574133366" ID="ID_1050807941" MODIFIED="1313575007253" TEXT="struct timespec xtime;"/>
<node CREATED="1312767668597" ID="ID_1244320065" MODIFIED="1313575007254" TEXT="struct timespec current_kernel_time(void)">
<arrowlink DESTINATION="ID_1050807941" ENDARROW="Default" ENDINCLINATION="110;0;" ID="Arrow_ID_1378696591" STARTARROW="None" STARTINCLINATION="110;0;"/>
</node>
<node CREATED="1312767646877" ID="ID_1888919992" MODIFIED="1312767651553" TEXT="do_gettimeofday(struct timeval *tv)"/>
</node>
</node>
<node CREATED="1312767709333" FOLDED="true" ID="ID_1074813071" MODIFIED="1395844915733" TEXT="Delays">
<node CREATED="1312767846189" ID="ID_1842872236" MODIFIED="1313587666213">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      set_current_state(TASK_INTERRUPTIBLE)
    </p>
    <p>
      schedule_timeout (delay)
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1312767763375" ID="ID_1945743865" MODIFIED="1313587697009" TEXT="wait_event_interruptible_timeout()">
<icon BUILTIN="button_cancel"/>
</node>
<node CREATED="1312767988445" ID="ID_1114074656" MODIFIED="1312768000881" TEXT="ndelay()/udelay()/mdelay()"/>
<node CREATED="1312768009332" MODIFIED="1312768031105" TEXT="msleep()/msleep_interruptible()/ssleep()"/>
</node>
<node CREATED="1312768068205" FOLDED="true" ID="ID_1595010064" MODIFIED="1395844913162" TEXT="Timers">
<node CREATED="1313575800694" ID="ID_1400341731" MODIFIED="1395844908507" TEXT="init">
<node CREATED="1312768132044" ID="ID_1394350005" MODIFIED="1313575720928" TEXT="struct timer_list my_timer;"/>
<node CREATED="1312768150028" FOLDED="true" ID="ID_90408511" MODIFIED="1395826563395" TEXT="static">
<node CREATED="1312768175926" ID="ID_327647491" MODIFIED="1312768833864" TEXT="TIMER_INITIALIZER()"/>
</node>
<node CREATED="1312768193949" FOLDED="true" ID="ID_94934256" MODIFIED="1395826563395" TEXT="dynamic">
<icon BUILTIN="button_ok"/>
<node CREATED="1312768215869" ID="ID_311491922" MODIFIED="1313575756424" TEXT="init_timer(&amp;my_timer)"/>
</node>
</node>
<node CREATED="1313575996528" FOLDED="true" ID="ID_812757674" MODIFIED="1395826563396" TEXT="...Now you fill out the remaining values as required...">
<icon BUILTIN="pencil"/>
<node CREATED="1313576152758" ID="ID_411815182" MODIFIED="1313576165448" TEXT="my_timer.expires = jiffies + delay;    /* timer expires in delay ticks */ &#xa;my_timer.data = 0;                     /* zero is passed to the timer handler */ &#xa;my_timer.function = my_function;       /* function to run when timer expires */"/>
</node>
<node CREATED="1312768237740" ID="ID_1014429417" MODIFIED="1313576318136" TEXT="add_timer(&amp;my_timer)">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1312768241333" ID="ID_632285293" MODIFIED="1313576252173" TEXT="mod_timer(&amp;my_timer, jiffies + new_delay)"/>
<node CREATED="1312768246013" FOLDED="true" ID="ID_486847998" MODIFIED="1395826563396" TEXT="del_timer(&amp;my_timer)/del_timer_sync(&amp;my_timer)">
<node CREATED="1313576447614" ID="ID_1092799931" MODIFIED="1313576492621" TEXT=" Note that you do not need  to call this for timers that have expired &#xa;because they are automatically deactivated.">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
</node>
</node>
<node CREATED="1398823196079" ID="ID_651691983" MODIFIED="1398846193215" POSITION="right" TEXT="running system directories"/>
</node>
</map>
