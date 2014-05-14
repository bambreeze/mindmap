<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1398822468734" ID="ID_1904401005" MODIFIED="1398845877478" TEXT="Linux Kernel">
<node CREATED="1398837321110" FOLDED="true" ID="ID_1482516283" MODIFIED="1400057912597" POSITION="right" TEXT="Overview">
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
<node CREATED="1398824677150" FOLDED="true" ID="ID_781576596" MODIFIED="1400057862177" POSITION="right" TEXT="Obtaining the Kernel Source">
<node CREATED="1398824698344" ID="ID_1628432107" MODIFIED="1398824706625" TEXT="http://www.kernel.org"/>
<node CREATED="1398824707422" ID="ID_1112141163" MODIFIED="1398825058862" TEXT="$ git clone git://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git"/>
</node>
<node CREATED="1398822477296" FOLDED="true" ID="ID_596028313" MODIFIED="1400057863611" POSITION="right" TEXT="Kernel Source Tree">
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
<node CREATED="1398823268163" FOLDED="true" ID="ID_1171133447" MODIFIED="1400057868147" POSITION="right" TEXT="Builing the Kernel">
<node CREATED="1398823298673" FOLDED="true" ID="ID_1512053693" MODIFIED="1400054241333" TEXT="configuring the kernel">
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
<node CREATED="1398823892661" FOLDED="true" ID="ID_514813597" MODIFIED="1400054215180" TEXT="build">
<node CREATED="1398823924365" ID="ID_129749977" MODIFIED="1398824046946" TEXT="$ make">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="full-2"/>
</node>
</node>
<node CREATED="1398824105885" ID="ID_951009357" MODIFIED="1398824111724" TEXT="installing the new kernel"/>
</node>
<node CREATED="1398823196079" FOLDED="true" ID="ID_651691983" MODIFIED="1400057870623" POSITION="right" TEXT="Linux Directory Structure">
<node CREATED="1400054097453" ID="ID_1080980842" MODIFIED="1400057391354" TEXT="/bin - Essential command binaries, e.g., cat, ls, cp."/>
<node CREATED="1400054112093" ID="ID_165400969" MODIFIED="1400057043914" TEXT="/boot - Boot loader files, e.g., kernels, initrd."/>
<node CREATED="1400054114756" ID="ID_840301259" MODIFIED="1400057068942" TEXT="/dev - Essential devices, e.g., /dev/null."/>
<node CREATED="1400054116813" FOLDED="true" ID="ID_1225834287" MODIFIED="1400057852547" TEXT="/etc - Host-specific system-wide configuration files">
<node CREATED="1400055172427" ID="ID_377422783" MODIFIED="1400055180344" TEXT="/etc/fstabl"/>
<node CREATED="1400055180733" ID="ID_1632427144" MODIFIED="1400055193824" TEXT="/etc/inittab"/>
<node CREATED="1400055201660" ID="ID_1696787214" MODIFIED="1400055213456" TEXT="/etc/init.d"/>
<node CREATED="1400055213906" ID="ID_1932636609" MODIFIED="1400055224037" TEXT="/etc/profile"/>
<node CREATED="1400055249102" ID="ID_1743087437" MODIFIED="1400055253823" TEXT="/etc/passwd"/>
<node CREATED="1400054119725" ID="ID_2311337" MODIFIED="1400056162620" TEXT="/etc/rc &amp; /etc/rc.d &amp; /etc/rc*.d"/>
</node>
<node CREATED="1400054141724" ID="ID_479262697" MODIFIED="1400057107970" TEXT="/home - Users&apos; home directories, containing saved files, personal settings, etc."/>
<node CREATED="1400054144995" ID="ID_961664380" MODIFIED="1400054845149" TEXT="/lib - library and kernel modules"/>
<node CREATED="1400054154604" ID="ID_1535017833" MODIFIED="1400054869573" TEXT="/mnt - mount files for temperory filesystems"/>
<node CREATED="1400054171099" ID="ID_1101638794" MODIFIED="1400057407226" TEXT="/proc - Virtual filesystem providing information about processes and kernel information as files."/>
<node CREATED="1400054174130" ID="ID_1846895950" MODIFIED="1400057416530" TEXT="/root - Home dir for root user"/>
<node CREATED="1400054176907" ID="ID_766103988" MODIFIED="1400057252886" TEXT="/sbin - Essential system binaries, e.g., init, ip, mount."/>
<node CREATED="1400054937358" ID="ID_988294979" MODIFIED="1400054940785" TEXT="/sys"/>
<node CREATED="1400054179699" ID="ID_1565401051" MODIFIED="1400057305406" TEXT="/tmp - Temporary files (see also /var/tmp). Often not preserved between system reboots."/>
<node CREATED="1400054182315" FOLDED="true" ID="ID_1817685813" MODIFIED="1400057843439" TEXT="/usr - shareable(multi-user) and read-only user data (utilities/applications)">
<node CREATED="1400054565783" ID="ID_316678022" MODIFIED="1400057512568" TEXT="/usr/bin - Non-essential command binaries (not needed in single user mode); for all users."/>
<node CREATED="1400054598254" ID="ID_850881022" MODIFIED="1400057533632" TEXT="/usr/include - Standard include files."/>
<node CREATED="1400055341951" ID="ID_1071555144" MODIFIED="1400057561523" TEXT="/usr/lib - Libraries for the binaries in /usr/bin/ and /usr/sbin/."/>
<node CREATED="1400054559292" ID="ID_681718573" MODIFIED="1400054624848" TEXT="/usr/local">
<node CREATED="1400055387742" ID="ID_1096799964" MODIFIED="1400055395418" TEXT="/usr/local/bin"/>
<node CREATED="1400055395926" ID="ID_896865782" MODIFIED="1400055404681" TEXT="/usr/local/lib"/>
<node CREATED="1400055405109" ID="ID_590783262" MODIFIED="1400055409793" TEXT="/usr/local/share"/>
</node>
<node CREATED="1400054603326" ID="ID_531872851" MODIFIED="1400057578550" TEXT="/usr/sbin - Non-essential system binaries, e.g., daemons for various network-services."/>
<node CREATED="1400055307070" ID="ID_1432860074" MODIFIED="1400057599986" TEXT="/usr/src - Source code, e.g., the kernel source code with its header files."/>
</node>
<node CREATED="1400054184779" FOLDED="true" ID="ID_902704176" MODIFIED="1400057810139" TEXT="/var - variable data files">
<node CREATED="1400055482472" ID="ID_1036145987" MODIFIED="1400057347674" TEXT="/var/log - Log files. Various logs."/>
<node CREATED="1400055486282" ID="ID_1458917537" MODIFIED="1400057331259" TEXT="/var/tmp - Temporary files to be preserved between reboots."/>
</node>
</node>
<node CREATED="1395825956102" FOLDED="true" ID="ID_51099828" MODIFIED="1400057882034" POSITION="right" TEXT="Data Types">
<node CREATED="1312691484673" ID="ID_1308539733" MODIFIED="1312691492652" TEXT="Standard C Types"/>
<node CREATED="1312691550460" ID="ID_805149776" MODIFIED="1400052455713" TEXT="Typedef Types"/>
<node CREATED="1312691530047" ID="ID_139786634" MODIFIED="1395844841293" TEXT="Linux Types">
<node CREATED="1312691629475" ID="ID_1023963558" MODIFIED="1400052418519" TEXT="&lt;linux/types.h&gt;">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1312691640129" ID="ID_661662396" MODIFIED="1312691742800" TEXT="u8 - kernel space"/>
<node CREATED="1312691755425" MODIFIED="1312691763234" TEXT="__8 - user space"/>
<node CREATED="1312691769346" ID="ID_947196705" MODIFIED="1312691835978" TEXT="uint8_t - c99">
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
<node CREATED="1395826578792" FOLDED="true" ID="ID_921166443" MODIFIED="1400057883655" POSITION="right" TEXT="Time Management">
<node CREATED="1312767433335" ID="ID_1342802873" MODIFIED="1400052042335" TEXT="Timekeeping">
<node CREATED="1400036784667" ID="ID_1952949495" MODIFIED="1400036972101" TEXT="Tick">
<node CREATED="1400036905957" ID="ID_1543380264" MODIFIED="1400036966484">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>Tick</b></i></font>&#160;-&#160;Because the kernel knows the preprogrammed tick rate, it knows <font color="#0000ff"><i><b>the time between any two successive timer interrupts</b></i></font>. This period is called a tick and is equal to 1/(tick rate) seconds.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1400036802691" ID="ID_1776182883" MODIFIED="1400037337755">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>Tick Rate</b></i></font>&#160;- The system timer goes off (often called hitting or popping) at a <font color="#0000ff"><i><b>preprogrammed frequency</b></i></font>, called the tick rate. When the system timer goes off, it issues an interrupt that the kernel handles via a special interrupt handler.
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1313568702623" ID="ID_1200914499" MODIFIED="1400047042259" TEXT="Jiffies">
<node CREATED="1400037162269" FOLDED="true" ID="ID_1935548203" MODIFIED="1400052261060">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>Jiffies</b></i></font>&#160;- The global variable jiffies holds <font color="#0000ff"><i><b>the number of ticks </b></i></font>that have occurred since the system booted.
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1312767441597" FOLDED="true" ID="ID_651095464" MODIFIED="1400052152900">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      extern unsigned long volatile <font color="#ff0000"><i><b>jiffies</b></i></font>;
    </p>
    <p>
      extern u64 jiffies_64;
    </p>
  </body>
</html></richcontent>
<node CREATED="1313581730626" ID="ID_1289200853" MODIFIED="1400052139129" TEXT="The volatile keyword  instructs the compiler to reload the variable &#xa;on each access from main memory and  never alias the variable&#x2019;s&#xa; value in a register, guaranteeing it works as expected.">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312767512485" FOLDED="true" ID="ID_945179317" MODIFIED="1400052150395" TEXT="time_after(unknown, known)/time_after_eq(unknown, known)">
<node CREATED="1313567873966" ID="ID_1904233480" MODIFIED="1400045905781">
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
</node>
<node CREATED="1400045899686" ID="ID_596090572" MODIFIED="1400045901978" TEXT="The unknown parameter is typically jiffies and the known parameter is the value against which you want to compare."/>
</node>
<node CREATED="1312767533428" ID="ID_467608897" MODIFIED="1400046231401" TEXT="time_before(unknown, known)/time_before_eq(unknown, known)"/>
</node>
<node CREATED="1312767450789" ID="ID_1346993751" MODIFIED="1400052082238">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>HZ&#160;- the tick rate</b></i></font>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1313569598805" ID="ID_493492883" MODIFIED="1400037298178" TEXT="(seconds * HZ) - converts from seconds to a unit of jiffies"/>
<node CREATED="1313569607643" ID="ID_588824114" MODIFIED="1400037241605" TEXT="(jiffies / HZ) -  converts from jiffies to seconds"/>
</node>
</node>
<node CREATED="1313568743726" ID="ID_1763092405" MODIFIED="1400047048841" TEXT="Wall Time">
<node CREATED="1400047000291" ID="ID_1805787748" MODIFIED="1400047058206">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct timespec <font color="#ff0000"><i><b>xtime</b></i></font>;
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1312767668597" ID="ID_1244320065" MODIFIED="1400049512902" TEXT="current_kernel_time(void)"/>
<node CREATED="1312767646877" ID="ID_1888919992" MODIFIED="1400049532223" TEXT="sys_gettimeofday(tv, tz)"/>
</node>
</node>
<node CREATED="1312767709333" ID="ID_1074813071" MODIFIED="1400052043965" TEXT="Delays">
<node CREATED="1312767988445" ID="ID_1114074656" MODIFIED="1400051297511" TEXT="ndelay()/udelay()/mdelay()"/>
<node CREATED="1312768009332" ID="ID_1588540429" MODIFIED="1400051306319" TEXT="msleep()/msleep_interruptible()/ssleep()"/>
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
</node>
<node CREATED="1312768068205" ID="ID_1595010064" MODIFIED="1400052344536" TEXT="Timers">
<node CREATED="1400050450918" ID="ID_74199820" MODIFIED="1400051878843">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The kernel executes timers in bottom-half context, as <font color="#ff0000"><i><b>softirqs</b></i></font>, after the timer interrupt completes.
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1400050184538" ID="ID_1227922815" MODIFIED="1400051870655">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct timer_list my_timer;
    </p>
    <p>
      <font color="#0000ff"><i><b>init_timer</b></i></font>(&amp;my_timer);
    </p>
    <p>
      
    </p>
    <p>
      /* ...Now you fill out the remaining values as required... */
    </p>
    <p>
      my_timer.expires = jiffies + delay;&#160;&#160;&#160;&#160;/* timer expires in delay ticks */
    </p>
    <p>
      my_timer.data = 0;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* zero is passed to the timer handler */
    </p>
    <p>
      my_timer.function = <font color="#0000ff"><i><b>my_function</b></i></font>;&#160;&#160;&#160;&#160;/* function to run when timer expires */
    </p>
    <p>
      
    </p>
    <p>
      <font color="#0000ff"><i><b>add_timer</b></i></font>(&amp;my_timer)
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1312768241333" ID="ID_632285293" MODIFIED="1313576252173" TEXT="mod_timer(&amp;my_timer, jiffies + new_delay)"/>
<node CREATED="1312768246013" FOLDED="true" ID="ID_486847998" MODIFIED="1400050749354" TEXT="del_timer(&amp;my_timer)/del_timer_sync(&amp;my_timer)">
<node CREATED="1313576447614" ID="ID_1092799931" MODIFIED="1400050383612" TEXT=" Note that you do not need  to call this for timers that have expired &#xa;because they are automatically deactivated.">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
<node CREATED="1400047464659" ID="ID_310636735" MODIFIED="1400052331747" TEXT="Timer Interrupt Handler">
<node CREATED="1400047478022" ID="ID_382459014" MODIFIED="1400047491077" TEXT="architecture-dependent routine">
<node CREATED="1400047505846" ID="ID_33453718" MODIFIED="1400047548621" TEXT="Obtain the xtime_lock lock, which protects access to jiffies_64 and the wall time value,xtime.">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1400047516821" ID="ID_28370288" MODIFIED="1400047552053" TEXT="Acknowledge or reset the system timer as required.">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1400047526588" ID="ID_1113426593" MODIFIED="1400047554831" TEXT="Periodically save the updated wall time to the real time clock.">
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1400047536180" ID="ID_1632631020" MODIFIED="1400047557299" TEXT="Call the architecture-independent timer routine,tick_periodic().">
<icon BUILTIN="full-4"/>
</node>
</node>
<node CREATED="1400047493149" ID="ID_346033740" MODIFIED="1400047504575" TEXT="architecture-independent routine">
<node CREATED="1400047559428" ID="ID_1050769193" MODIFIED="1400047722631" TEXT="Increment the jiffies_64 count by one. (This is safe, even on 32-bit architectures, because the xtime_lock lock was previously obtained.)">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1400047570307" ID="ID_1647697094" MODIFIED="1400047725231" TEXT="Update resource usages, such as consumed system and user time, for the currently running process.">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1400047579578" ID="ID_220548118" MODIFIED="1400051977784" TEXT="Run any dynamic timers that have expired">
<arrowlink DESTINATION="ID_1595010064" ENDARROW="Default" ENDINCLINATION="648;0;" ID="Arrow_ID_1821780361" STARTARROW="None" STARTINCLINATION="648;0;"/>
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1400047589490" ID="ID_933116361" MODIFIED="1400049122121">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Execute <font color="#ff0000"><i><b>scheduler_tick() </b></i></font><font color="#000000">,decrements the currently running process&#8217;s timeslice and sets need_resched if needed.</font>
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-4"/>
</node>
<node CREATED="1400047603426" ID="ID_233713015" MODIFIED="1400047737292" TEXT="Update the wall time, which is stored in xtime.">
<icon BUILTIN="full-5"/>
</node>
<node CREATED="1400047613162" ID="ID_1581118990" MODIFIED="1400047742466" TEXT="Calculate the infamous load average.">
<icon BUILTIN="full-6"/>
</node>
</node>
</node>
</node>
<node CREATED="1395370144693" FOLDED="true" ID="ID_1250662614" MODIFIED="1400052485761" POSITION="right" TEXT="Modules">
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
</node>
</map>
