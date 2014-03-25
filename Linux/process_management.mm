<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1314436073487" ID="ID_1195057024" MODIFIED="1395371901167" TEXT="Process Management">
<node CREATED="1393233067733" ID="ID_266019102" MODIFIED="1395371903381" POSITION="right" TEXT="Process Descriptor">
<node CREATED="1393233137666" ID="ID_1178062783" MODIFIED="1393234017837" TEXT="The process data structures are stored in the 2-page (8 KB) memory area"/>
<node CREATED="1358849568031" ID="ID_1241600752" MODIFIED="1395756890423">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/process/thread_stack.png" />
  </body>
</html>
</richcontent>
</node>
<node CREATED="1315906535124" ID="ID_632220490" MODIFIED="1395756927961">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>struct thread_info</b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1393233156273" ID="ID_1172596174" MODIFIED="1393233192240" TEXT="arch/x86/include/asm/thread_info.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1315919137906" ID="ID_650907153" MODIFIED="1393234248985">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>thread_info</b></i>&#160;{&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160; <i><font color="#0000ff"><b>struct task_struct&#160;&#160;*task</b></font></i>;&#160;&#160; &#160;&#160;&#160;/* main task structure */&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#b0b0b0" DESTINATION="ID_1707237907" ENDARROW="Default" ENDINCLINATION="288;0;" ID="Arrow_ID_1054171908" STARTARROW="None" STARTINCLINATION="288;0;"/>
</node>
</node>
<node CREATED="1315906710224" FOLDED="true" ID="ID_1707237907" MODIFIED="1395756939210">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>struct task_struct</b>
    </p>
  </body>
</html></richcontent>
<node CREATED="1393231629106" ID="ID_913105931" MODIFIED="1393231664312" TEXT="include/linux/sched.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1315914103874" FOLDED="true" ID="ID_398479359" MODIFIED="1395371901157" TEXT="volatile long state;">
<node CREATED="1315914353433" ID="ID_1933197825" MODIFIED="1315914364977" TEXT="TASK_RUNNING"/>
<node CREATED="1315914365862" ID="ID_1415384225" MODIFIED="1315914375212" TEXT="TASK_INTERRUPTIBLE"/>
<node CREATED="1315914376062" ID="ID_1275568405" MODIFIED="1315914386584" TEXT="TASK_UNINTERRUPTIBLE"/>
<node CREATED="1315914414290" ID="ID_1327507856" MODIFIED="1315914416204" TEXT="..."/>
</node>
<node CREATED="1315914126372" ID="ID_1983933720" MODIFIED="1316831863401" TEXT="void * stack;"/>
<node CREATED="1316842437493" ID="ID_18418388" MODIFIED="1316842444704" TEXT="atomic_t usage;"/>
<node CREATED="1315917802230" ID="ID_533218755" MODIFIED="1315918219425" TEXT="unsigned int flags;"/>
<node CREATED="1316843584303" FOLDED="true" ID="ID_1772179729" MODIFIED="1395371901157" TEXT="struct list_head tasks;">
<node CREATED="1316843734093" ID="ID_803741408" MODIFIED="1316843763407">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>process list</b>&#160;- a list that links together all existing process descriptors.&#160;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1316843916945" ID="ID_27378462" MODIFIED="1316917741413">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>init_task</b>&#160;- Initial task structure
    </p>
    <p>
      struct task_struct init_task = INIT_TASK(init_task);
    </p>
    <p>
      (arch/x86/kernel/init_task.c)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1316917476163" ID="ID_686524080" MODIFIED="1316917781400">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>for_each_process(p)</b>&#160;- scans the whole process list
    </p>
    <p>
      (include/linux/sched.h)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1316917878242" FOLDED="true" ID="ID_1660815912" MODIFIED="1395371901157" TEXT="struct task_struct *real_parent;">
<node CREATED="1316920156962" ID="ID_505848288" MODIFIED="1358327427523" TEXT="Points to the process descriptor of the process that created P or to the descriptor of process 1 (init) if the parent process no longer exists.">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1316920096768" FOLDED="true" ID="ID_1869882986" MODIFIED="1395371901157" TEXT="struct task_struct *parent;">
<node CREATED="1316920269649" ID="ID_1301081112" MODIFIED="1358327440185" TEXT="Points to the current parent of P ">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1316920113462" ID="ID_1642509929" MODIFIED="1316920123737" TEXT="struct list_head children;"/>
<node CREATED="1316920125217" ID="ID_1281826325" MODIFIED="1316920134265" TEXT="struct list_head sibling;"/>
<node CREATED="1316928408514" ID="ID_1880307065" MODIFIED="1316928415120" TEXT="pid_t pid;"/>
<node CREATED="1316928416665" FOLDED="true" ID="ID_60895847" MODIFIED="1395371901158" TEXT="pid_t tgid;">
<node CREATED="1316928466599" ID="ID_579056398" MODIFIED="1358327457211" TEXT="PID of the thread group leader of P">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1316920339866" FOLDED="true" ID="ID_4315816" MODIFIED="1395371901158" TEXT="struct task_struct *group_leader;">
<node CREATED="1316920358624" ID="ID_1174745410" MODIFIED="1358327475630" TEXT="Process descriptor pointer of the group leader of P">
<icon BUILTIN="messagebox_warning"/>
</node>
</node>
<node CREATED="1316928554073" FOLDED="true" ID="ID_62137992" MODIFIED="1395371901158" TEXT="struct pid_link pids[PIDTYPE_MAX];">
<node CREATED="1393232863003" ID="ID_819099011" MODIFIED="1393232869723" TEXT="include/linux/pid.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1316932857095" ID="ID_1959762196" MODIFIED="1316932931821">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      enum pid_type
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;PIDTYPE_PID,
    </p>
    <p>
      &#160;&#160;&#160;&#160;PIDTYPE_PGID,
    </p>
    <p>
      &#160;&#160;&#160;&#160;PIDTYPE_SID,
    </p>
    <p>
      &#160;&#160;&#160;&#160;PIDTYPE_MAX
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1393232763007" ID="ID_1920833569" MODIFIED="1393232778937" TEXT="include/linux/pid.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1316928699044" ID="ID_1729999827" MODIFIED="1316932589085" TEXT="struct hlist_node node;"/>
<node CREATED="1316931912268" FOLDED="true" ID="ID_28056775" MODIFIED="1395371901158">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct pid *pid;
    </p>
  </body>
</html></richcontent>
<node CREATED="1316928771487" ID="ID_116010920" MODIFIED="1316928793593" TEXT="atomic_t count;"/>
<node CREATED="1316928794768" ID="ID_340123140" MODIFIED="1358327572333" TEXT="struct hlist_head tasks[PIDTYPE_MAX]; // lists of tasks that use this pid">
<arrowlink DESTINATION="ID_1729999827" ENDARROW="Default" ENDINCLINATION="251;0;" ID="Arrow_ID_375258231" STARTARROW="None" STARTINCLINATION="251;0;"/>
</node>
<node CREATED="1316928813011" ID="ID_640516611" MODIFIED="1316928814767" TEXT="..."/>
<node CREATED="1316932018473" FOLDED="true" ID="ID_1149046420" MODIFIED="1395371901158" TEXT="struct upid numbers[1];">
<node CREATED="1316932051355" ID="ID_1051743616" MODIFIED="1358327592195" TEXT="int nr; // The PID number"/>
<node CREATED="1316932056544" ID="ID_513109031" MODIFIED="1316932085118" TEXT="struct pid_namespace *ns;"/>
<node CREATED="1316932086156" ID="ID_373966593" MODIFIED="1358327611217" TEXT="struct hlist_node pid_chain; // The links to the next and previous elements in the hash chain list"/>
</node>
</node>
</node>
<node CREATED="1315917811701" FOLDED="true" ID="ID_749542623" MODIFIED="1395371901158" TEXT="struct thread_struct thread;">
<node CREATED="1393231927959" ID="ID_94896969" MODIFIED="1393231936526" TEXT="arch/x86/include/asm/processor.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1315919726190" ID="ID_844385859" MODIFIED="1393232197239">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* CPU-specific state of this task */
    </p>
    <p>
      struct thread_struct {
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* Cached TLS descriptors: */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct desc_struct&#160;&#160;tls_array[GDT_ENTRY_TLS_ENTRIES];
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long&#160;&#160;&#160;&#160;&#160;&#160;&#160;sp0;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long&#160;&#160;&#160;&#160;&#160;&#160;&#160;sp;
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
</node>
<node CREATED="1365579578563" FOLDED="true" ID="ID_1019245271" MODIFIED="1395371901158" TEXT="struct signal_struct *signal;">
<node CREATED="1365579746517" ID="ID_1869627772" MODIFIED="1393232221786" TEXT="include/linux/sched.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1365579764329" ID="ID_544839362" MODIFIED="1365581158381">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      atomic_t sigcnt;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Usage counter of the signal descriptor */
    </p>
    <p>
      atomic_t live;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Number of live processes in the thread group */
    </p>
    <p>
      int nr_threads;
    </p>
    <p>
      wait_queue_head_t wait_chldexit; /* The processes sleeping in a wait4() system call */
    </p>
    <p>
      struct task_struct *curr_target;&#160;&#160;&#160;&#160;/* last process in the thread group that received a signal */
    </p>
    <p>
      struct sigpending shared_pending; /* Data structure storing the shared pending signals */
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1365579658729" FOLDED="true" ID="ID_676626903" MODIFIED="1395371901159" TEXT="struct sighand_struct *sighand;">
<node CREATED="1365580728182" ID="ID_943912073" MODIFIED="1393232241842" TEXT="include/linux/sched.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1365580739916" FOLDED="true" ID="ID_462838517" MODIFIED="1395371901159">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      atomic_t count;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Usage counter of the signal handler descriptor */
    </p>
    <p>
      struct k_sigaction action[_NSIG];&#160;&#160;/* The actions to be performed upon delivering the signals */
    </p>
    <p>
      spinlock_t siglock;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* For signal descriptor and the signal handler descriptor */
    </p>
  </body>
</html></richcontent>
<node CREATED="1366168611255" ID="ID_682990093" MODIFIED="1366168655978" TEXT="include/arch/x86/include/asm/signal.h"/>
<node CREATED="1366168658355" FOLDED="true" ID="ID_1469689717" MODIFIED="1395371901159">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      __sighandler_t sa_handler;
    </p>
    <p>
      unsigned long sa_flags;
    </p>
    <p>
      __sigrestore_t sa_restorer;
    </p>
    <p>
      sigset_t sa_mask;
    </p>
  </body>
</html></richcontent>
<node CREATED="1366168813462" ID="ID_1425755890" MODIFIED="1366168820289">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* Type of a signal handler.&#160;&#160;*/
    </p>
    <p>
      typedef void (*__sighandler_t)(int);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1315920856358" ID="ID_1577581463" MODIFIED="1315920858319" TEXT="..."/>
</node>
</node>
<node CREATED="1315920793500" FOLDED="true" ID="ID_563320112" MODIFIED="1395371901162" POSITION="right" TEXT="Process Switch">
<node CREATED="1315920831165" ID="ID_879189016" MODIFIED="1315920845616" TEXT="TSS - Task State Segment"/>
<node CREATED="1315920998117" ID="ID_668222248" MODIFIED="1315921047181">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>switch_to(prev, next, last) </b>
    </p>
    <p>
      arch/x86/include/asm/system.h
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1315921056117" ID="ID_802013820" MODIFIED="1315921241970">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>__switch_to(struct task_struct *prev_p, struct task_struct *next_p) </b>
    </p>
    <p>
      arch/x86/kernel/process_32.c
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1316766906971" FOLDED="true" ID="ID_645308379" MODIFIED="1395371901162" TEXT="Interrupts and Exceptions">
<node CREATED="1316769068729" FOLDED="true" ID="ID_1349911850" MODIFIED="1395371901160" TEXT="Definition">
<node CREATED="1316766926536" FOLDED="true" ID="ID_1498465646" MODIFIED="1395371901160" TEXT="Interrupts (Asynchronous)">
<node CREATED="1316767054709" ID="ID_1599617338" MODIFIED="1316767078512" TEXT="Maskable Interrupts"/>
<node CREATED="1316767079731" ID="ID_175788121" MODIFIED="1316767126790" TEXT="Nonmaskable Interrupts (NMI)"/>
</node>
<node CREATED="1316766930802" FOLDED="true" ID="ID_651855405" MODIFIED="1395371901160" TEXT="Exceptions (Synchronous)">
<node CREATED="1316767173412" FOLDED="true" ID="ID_1388644566" MODIFIED="1395371901160" TEXT="Processor-detected Exception">
<node CREATED="1316767223778" ID="ID_1182658758" MODIFIED="1316767227854" TEXT="Faults"/>
<node CREATED="1316767228862" ID="ID_286073273" MODIFIED="1316767232877" TEXT="Traps"/>
<node CREATED="1316767233772" ID="ID_828699720" MODIFIED="1316767236317" TEXT="Aborts"/>
</node>
<node CREATED="1316767192526" ID="ID_834789161" MODIFIED="1316767208364" TEXT="Programmed Exception"/>
</node>
</node>
<node CREATED="1316767346119" FOLDED="true" ID="ID_74815681" MODIFIED="1395371901161">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      IDT - Interrupt Descriptor Table
    </p>
    <p>
      (referred by IDTR register)
    </p>
  </body>
</html></richcontent>
<node CREATED="1316767858652" FOLDED="true" ID="ID_718436077" MODIFIED="1395371901161" TEXT="Intel (Hardware)">
<node CREATED="1316767411047" ID="ID_386560905" MODIFIED="1316767511372" TEXT="Interrupt Gate - to handle interupts"/>
<node CREATED="1316769115937" ID="ID_1207589129" MODIFIED="1316769119350" TEXT="Trap Gate - to handle exceptions"/>
<node CREATED="1316767397291" ID="ID_1442372959" MODIFIED="1316769842422" TEXT="Task Gate - to handle &quot;Double fault &quot; exception"/>
</node>
<node CREATED="1316767884430" FOLDED="true" ID="ID_803462473" MODIFIED="1395371901161" TEXT="Linux (Software)">
<node CREATED="1316767902774" ID="ID_36241942" MODIFIED="1316767910011" TEXT="Interrupt Gate"/>
<node CREATED="1316767936127" ID="ID_1262195787" MODIFIED="1316768073413" TEXT="Trap Gate"/>
<node CREATED="1316767946474" ID="ID_596476977" MODIFIED="1316769846629" TEXT="Task Gate"/>
<node CREATED="1316767916716" ID="ID_393487179" MODIFIED="1316769963421" TEXT="System Gate - to handle system call"/>
<node CREATED="1316767922350" ID="ID_534098991" MODIFIED="1316770038515" TEXT="System Interrupt Gate - to handle &quot;Breakpoint&quot; exception"/>
</node>
<node CREATED="1316768346318" FOLDED="true" ID="ID_1506973519" MODIFIED="1395371901161" TEXT="Initializing IDT">
<node CREATED="1316768368803" FOLDED="true" ID="ID_1225375667" MODIFIED="1395371901161">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>setup_idt()</b>
    </p>
    <p>
      arch/x86/boot/pm.c
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1316768632029" ID="ID_211395724" MODIFIED="1316768669162" TEXT="Preliminary Initializtion of the IDT"/>
</node>
<node CREATED="1316768672155" ID="ID_107618297" MODIFIED="1316768755978">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>trap_init()</b>
    </p>
    <p>
      arch/x86/kernel/traps.c
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1316768903176" ID="ID_1890823974" MODIFIED="1316768984999">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>init_IRQ() </b>
    </p>
    <p>
      arch/x86/kernel/irqinit.c
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1316769432442" FOLDED="true" ID="ID_487968707" MODIFIED="1395371901161" TEXT="Exception Handling">
<node CREATED="1316769461577" ID="ID_899493299" MODIFIED="1316769499319" TEXT="Save the contents of most registers in the Kernel Mode stack (this part is coded in assembly language).">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1316769467579" ID="ID_428606971" MODIFIED="1316769502209" TEXT="Handle the exception by means of a high-level C function.">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1316769479178" ID="ID_512337282" MODIFIED="1316769504581" TEXT="Exit from the handler by means of the ret_from_exception( ) function.">
<icon BUILTIN="full-3"/>
</node>
</node>
<node CREATED="1316769211434" ID="ID_998639606" MODIFIED="1316769683205">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>struct irq_desc - interrupt descriptor</b>
    </p>
    <p>
      include/linux/irqdesc.h
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1316769293384" ID="ID_1080578207" MODIFIED="1316769683134">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>struct irqaction - per interrupt action descriptor</b>
    </p>
    <p>
      include/linux/interrupt.h
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1316769506966" FOLDED="true" ID="ID_1652292667" MODIFIED="1395371901162" TEXT="Interrupt Handling">
<node CREATED="1316769521668" ID="ID_50319059" MODIFIED="1316769620312" TEXT="Save the IRQ value and the register&apos;s contents on the Kernel Mode stack.">
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1316769582287" ID="ID_687786211" MODIFIED="1316769622497" TEXT="Send an acknowledgment to the PIC that is servicing the IRQ line, thus allowing it to issue further interrupts.">
<icon BUILTIN="full-2"/>
</node>
<node CREATED="1316769592704" ID="ID_131982960" MODIFIED="1316769624960" TEXT="Execute the interrupt service routines (ISRs) associated with all the devices that share the IRQ.">
<icon BUILTIN="full-3"/>
</node>
<node CREATED="1316769604940" ID="ID_1157336210" MODIFIED="1316769627496" TEXT="Terminate by jumping to the ret_from_intr( ) address.">
<icon BUILTIN="full-4"/>
</node>
</node>
</node>
</node>
<node CREATED="1394607772301" FOLDED="true" ID="ID_232140513" MODIFIED="1395371901165" POSITION="right" TEXT="Process Communication">
<node CREATED="1394607940675" FOLDED="true" ID="ID_833366660" MODIFIED="1395371901163" TEXT="Pipes and FIFOs (named pipes)">
<node CREATED="1394692670453" FOLDED="true" ID="ID_1377888996" MODIFIED="1395371901162" TEXT="compose">
<node CREATED="1394692688493" ID="ID_1129761090" MODIFIED="1394692790674">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      an <font color="#0000ff"><i><b>inode</b></i></font>&#160;object&#160;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1394692720555" FOLDED="true" ID="ID_1152752042" MODIFIED="1395371901162">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      two <font color="#0000ff"><i><b>file</b></i></font>&#160;objects
    </p>
  </body>
</html></richcontent>
<node CREATED="1394692740315" ID="ID_516862247" MODIFIED="1394692742784" TEXT="reading"/>
<node CREATED="1394692743203" ID="ID_530105720" MODIFIED="1394692746367" TEXT="writing"/>
</node>
</node>
<node CREATED="1394613049810" FOLDED="true" ID="ID_1831364965" MODIFIED="1395371901163" TEXT="The pipefs special filesystem">
<node CREATED="1394691860955" ID="ID_1473907831" MODIFIED="1394691903602" TEXT="include/linux/pipe_fs_i.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1394691908513" FOLDED="true" ID="ID_1650822936" MODIFIED="1395371901163">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#6600ff"><i><b>pipe_inode_info</b></i></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct mutex mutex;
    </p>
    <p>
      &#160;&#160;&#160;&#160;wait_queue_head_t wait;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int nrbufs, curbuf, buffers;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int readers;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int writers;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int files;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int waiting_writers;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int r_counter;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int w_counter;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct page *tmp_page;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct fasync_struct *fasync_readers;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct fasync_struct *fasync_writers;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct <font color="#6600ff"><i><b>pipe_buffer</b></i></font>&#160;*bufs;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1394691985343" FOLDED="true" ID="ID_476786956" MODIFIED="1395371901162">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#6600ff"><i><b>pipe_buffer</b></i></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct page *page;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int offset, len;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct <font color="#6600ff"><i><b>pipe_buf_operations</b></i></font>&#160; *ops;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int flags;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long private;
    </p>
    <p>
      };&#160;
    </p>
  </body>
</html></richcontent>
<node CREATED="1394692107077" ID="ID_177751331" MODIFIED="1394692212711">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <font color="#6600ff"><i><b>pipe_buf_operations</b></i></font>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;int can_merge;
    </p>
    <p>
      &#160;&#160;&#160;&#160;void * (*<i><b>map</b></i>)(struct pipe_inode_info *, struct pipe_buffer *, int);
    </p>
    <p>
      &#160;&#160;&#160;&#160;void (*<i><b>unmap</b></i>)(struct pipe_inode_info *, struct pipe_buffer *, void *);
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*confirm)(struct pipe_inode_info *, struct pipe_buffer *);
    </p>
    <p>
      &#160;&#160;&#160;&#160;void (*<i><b>release</b></i>)(struct pipe_inode_info *, struct pipe_buffer *);
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*steal)(struct pipe_inode_info *, struct pipe_buffer *);
    </p>
    <p>
      &#160;&#160;&#160;&#160;void (*get)(struct pipe_inode_info *, struct pipe_buffer *);
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1394692316190" ID="ID_95436366" MODIFIED="1394692338106" TEXT="fs/pipe.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1394692346509" ID="ID_1972750751" MODIFIED="1394692401247">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct file_system_type <font color="#6600ff"><i><b>pipe_fs_type</b></i></font>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.name&#160;&#160;&#160;&#160;&#160;= &quot;pipefs&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.mount&#160;&#160;&#160;&#160;= pipefs_mount,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.kill_sb&#160;&#160;&#160;&#160;= kill_anon_super,
    </p>
    <p>
      };&#160;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1394692409827" ID="ID_1344556811" MODIFIED="1394692583296">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static int __init <font color="#0000ff"><i><b>init_pipe_fs</b></i></font>(void)
    </p>
    <p>
      {&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<font color="#ff0000"><i><b>register_filesystem</b></i></font>(&amp;<i><b>pipe_fs_type</b></i>);
    </p>
    <p>
      &#160;&#160;&#160;&#160;pipe_mnt = <font color="#ff0000"><i><b>kern_mount</b></i></font>(&amp;<i><b>pipe_fs_type</b></i>);
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      }
    </p>
    <p>
      <i>fs_initcall(<b>init_pipe_fs</b>);</i>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1394608278558" ID="ID_1674073083" MODIFIED="1394692841325" TEXT="producer/consumer interactions among processes."/>
</node>
<node CREATED="1395044658672" ID="ID_229321882" MODIFIED="1395044667282" TEXT="include/linux/ipc_namespace.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395047483349" ID="ID_1230410566" MODIFIED="1395047518126">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><font color="#660066"><b>ipc_namespace</b></font></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;atomic_t&#160;&#160;&#160;&#160;count;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct ipc_ids&#160;&#160;<i><font color="#0000ff"><b>ids</b></font></i>[3];
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
<node CREATED="1395044669455" ID="ID_1660358231" MODIFIED="1395044741770">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><font color="#660066"><b>ipc_ids</b></font></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;int in_use;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned short seq;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned short seq_max;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct rw_semaphore rwsem;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct idr ipcs_idr;
    </p>
    <p>
      &#160;&#160;&#160;&#160;int next_id;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1394607980850" FOLDED="true" ID="ID_1023591222" MODIFIED="1395371901164" TEXT="Semaphores">
<node CREATED="1395045170834" FOLDED="true" ID="ID_1885555279" MODIFIED="1395371901164">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/ipc/ipc-semaphore.jpg" />
  </body>
</html></richcontent>
<node CREATED="1395045296221" ID="ID_1695713584" MODIFIED="1395045322206" TEXT="include/linux/sem.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395045323861" ID="ID_293132594" MODIFIED="1395046088868">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* One sem_array data structure for each set of semaphores in the system. */
    </p>
    <p>
      struct <i><font color="#660066"><b>sem_array</b></font></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct kern_ipc_perm&#160;&#160;&#160;&#160;____cacheline_aligned_in_smp
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;sem_perm;&#160;&#160;&#160;/* permissions .. see ipc.h */
    </p>
    <p>
      &#160;&#160;&#160;&#160;time_t&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;sem_ctime;&#160;&#160;/* last change time */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct sem&#160;&#160;&#160;&#160;&#160;&#160;*<i><font color="#0000ff"><b>sem_base</b></font></i>; &#160;/* ptr to first semaphore in array */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head&#160;&#160;&#160;&#160;pending_alter;&#160;&#160;/* pending operations */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* that alter the array */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head&#160;&#160;&#160;&#160;pending_const;&#160;&#160;/* pending complex operations */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* that do not alter semvals */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head&#160;&#160;&#160; <i><font color="#ff0000"><b>list_id</b></font></i>; &#160;&#160;&#160;/* undo requests on this array */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;sem_nsems;&#160;&#160;/* no. of semaphores in array */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;complex_count;&#160;&#160;/* pending complex operations */
    </p>
    <p>
      };&#160;
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#ff0000" DESTINATION="ID_435606653" ENDARROW="Default" ENDINCLINATION="591;0;" ID="Arrow_ID_938195588" STARTARROW="None" STARTINCLINATION="591;0;"/>
</node>
<node CREATED="1395045467963" ID="ID_447454264" MODIFIED="1395045515937" TEXT="ipc/sem.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395045518410" ID="ID_931461024" MODIFIED="1395045577899">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* One semaphore structure for each semaphore in the system. */
    </p>
    <p>
      struct <i><font color="#660066"><b>sem</b></font></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;int semval;&#160;&#160;&#160;&#160;&#160;/* current value */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int sempid;&#160;&#160;&#160;&#160;&#160;/* pid of last operation */
    </p>
    <p>
      &#160;&#160;&#160;&#160;spinlock_t&#160;&#160;lock;&#160;&#160;&#160;/* spinlock for fine-grained semtimedop */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head pending_alter; /* pending single-sop operations */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* that alter the semaphore */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head pending_const; /* pending single-sop operations */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* that do not alter the semaphore*/
    </p>
    <p>
      &#160;&#160;&#160;&#160;time_t&#160;&#160;sem_otime;&#160;&#160;/* candidate for sem_otime */
    </p>
    <p>
      } ____cacheline_aligned_in_smp;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1395045635952" ID="ID_1642530783" MODIFIED="1395046042230">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* One queue for each sleeping process in the system. */
    </p>
    <p>
      struct <i><font color="#660066"><b>sem_queue</b></font></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head&#160;&#160;&#160;&#160;list;&#160;&#160;&#160;&#160;/* queue of pending operations */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct task_struct&#160;&#160;*sleeper; /* this process */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct sem_undo&#160;&#160;&#160;&#160;&#160;*<i><font color="#0000ff"><b>undo</b></font></i>; &#160;&#160;/* undo structure */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pid;&#160;&#160;&#160;&#160;&#160;/* process id of requesting process */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;status;&#160;&#160;/* completion status of operation */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct sembuf&#160;&#160;&#160;&#160;&#160;&#160;&#160;*sops;&#160;&#160;&#160;/* array of pending operations */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;nsops;&#160;&#160;&#160;/* number of operations */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;alter;&#160;&#160;&#160;/* does *sops alter the array? */
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1395045683646" ID="ID_435606653" MODIFIED="1395046082601">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* Each task has a list of undo requests. They are executed automatically
    </p>
    <p>
      &#160;* when the process exits.
    </p>
    <p>
      &#160;*/
    </p>
    <p>
      struct <i><font color="#660066"><b>sem_undo</b></font></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head&#160;&#160;&#160;&#160;list_proc;&#160;&#160;/* per-process list: *
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;* all undos from one process
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;* rcu protected */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct rcu_head&#160;&#160;&#160;&#160;&#160;rcu;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* rcu struct for sem_undo */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct sem_undo_list&#160;&#160;&#160;&#160;*<i><font color="#0000ff"><b>ulp</b></font></i>; &#160;&#160;&#160;&#160;&#160;&#160;/* back ptr to sem_undo_list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head&#160;&#160;&#160;&#160;<i><font color="#ff0000"><b>list_id</b></font></i>;&#160;&#160;&#160;&#160;/* per semaphore array list:
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;* all undos for one array */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;semid;&#160;&#160;&#160;&#160;&#160;&#160;/* semaphore set identifier */
    </p>
    <p>
      &#160;&#160;&#160;&#160;short&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;*semadj;&#160;&#160;&#160;&#160;/* array of adjustments */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* one per semaphore */
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1395045757262" ID="ID_876619445" MODIFIED="1395045792926">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* sem_undo_list controls shared access to the list of sem_undo structures
    </p>
    <p>
      &#160;* that may be shared among all a CLONE_SYSVSEM task group.
    </p>
    <p>
      &#160;*/
    </p>
    <p>
      struct <i><font color="#660066"><b>sem_undo_list</b></font></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;atomic_t&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;refcnt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;spinlock_t&#160;&#160;&#160;&#160;&#160;&#160;lock;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head&#160;&#160;&#160;&#160;list_proc;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1394608019438" FOLDED="true" ID="ID_1660392140" MODIFIED="1395371901164" TEXT="Messages">
<node CREATED="1394784671796" FOLDED="true" ID="ID_742765223" MODIFIED="1395371901164" TEXT="compose">
<node CREATED="1394784681207" ID="ID_518594583" MODIFIED="1394784707690">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      a fixed-size <font color="#0000ff"><i><b>header</b></i></font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1394784709276" ID="ID_1635755278" MODIFIED="1394784728190">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      a variable-length <font color="#0000ff"><i><b>text</b></i></font>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1395043470647" FOLDED="true" ID="ID_1299941336" MODIFIED="1395371901164">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/ipc/ipc-message-queue.jpg" />
  </body>
</html></richcontent>
<node CREATED="1395042319785" ID="ID_1164296285" MODIFIED="1395042338581" TEXT="include/linux/msg.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395042341185" ID="ID_746765244" MODIFIED="1395043673253">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* one msq_queue structure for each present queue on the system */
    </p>
    <p>
      struct <i><font color="#660066"><b>msg_queue</b></font></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct kern_ipc_perm q_perm;
    </p>
    <p>
      &#160;&#160;&#160;&#160;time_t q_stime;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* last msgsnd time */
    </p>
    <p>
      &#160;&#160;&#160;&#160;time_t q_rtime;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* last msgrcv time */
    </p>
    <p>
      &#160;&#160;&#160;&#160;time_t q_ctime;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* last change time */
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long q_cbytes;&#160;&#160;&#160;&#160;&#160;/* current number of bytes on queue */
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long q_qnum;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* number of messages in queue */
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long q_qbytes;&#160;&#160;&#160;&#160;&#160;/* max number of bytes on queue */
    </p>
    <p>
      &#160;&#160;&#160;&#160;pid_t q_lspid;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* pid of last msgsnd */
    </p>
    <p>
      &#160;&#160;&#160;&#160;pid_t q_lrpid;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* last receive pid */
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <i><font color="#0000ff"><b>q_messages</b></font></i>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head q_receivers;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head q_senders;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#0000ff" DESTINATION="ID_1966899340" ENDARROW="Default" ENDINCLINATION="232;0;" ID="Arrow_ID_1865970826" STARTARROW="None" STARTINCLINATION="232;0;"/>
</node>
<node CREATED="1395042864264" ID="ID_1966899340" MODIFIED="1395043686061">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* one msg_msg structure for each message */
    </p>
    <p>
      struct <i><font color="#660066"><b>msg_msg</b></font></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <i><font color="#0000ff"><b>m_list</b></font></i>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;long m_type;
    </p>
    <p>
      &#160;&#160;&#160;&#160;size_t m_ts;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* message text size */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct msg_msgseg* <i><font color="#ff0000"><b>next</b></font></i>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;void *security;
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* the actual message follows immediately */
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#ff0000" DESTINATION="ID_1885995075" ENDARROW="Default" ENDINCLINATION="139;0;" ID="Arrow_ID_57009676" STARTARROW="None" STARTINCLINATION="139;0;"/>
</node>
<node CREATED="1395042232396" ID="ID_728043947" MODIFIED="1395042929598" TEXT="ipc/msgutil.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395042267003" ID="ID_1885995075" MODIFIED="1395043680763">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><font color="#660066"><b>msg_msgseg</b></font></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct msg_msgseg *<i><font color="#ff0000"><b>next</b></font></i>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* the next part of the message follows immediately */
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1394608023737" FOLDED="true" ID="ID_230625253" MODIFIED="1395371901165" TEXT="Shared memory regions">
<node CREATED="1395047974244" FOLDED="true" ID="ID_1761056915" MODIFIED="1395371901164">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/ipc/ipc-shared-memory.jpg" />
  </body>
</html></richcontent>
<node CREATED="1395048394074" ID="ID_767020341" MODIFIED="1395048452957" TEXT="include/linux/shm.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395048396731" ID="ID_1014351065" MODIFIED="1395048430176">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><font color="#660066"><b>shmid_kernel</b></font></i>&#160;/* private to the kernel */
    </p>
    <p>
      {&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct kern_ipc_perm&#160;&#160;&#160;&#160;shm_perm;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct file *&#160;&#160;&#160;&#160;&#160;&#160; <i><font color="#ff0000"><b>shm_file</b></font></i>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long&#160;&#160;&#160;&#160;&#160;&#160;&#160;shm_nattch;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long&#160;&#160;&#160;&#160;&#160;&#160;&#160;shm_segsz;
    </p>
    <p>
      &#160;&#160;&#160;&#160;time_t&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;shm_atim;
    </p>
    <p>
      &#160;&#160;&#160;&#160;time_t&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;shm_dtim;
    </p>
    <p>
      &#160;&#160;&#160;&#160;time_t&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;shm_ctim;
    </p>
    <p>
      &#160;&#160;&#160;&#160;pid_t&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;shm_cprid;
    </p>
    <p>
      &#160;&#160;&#160;&#160;pid_t&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;shm_lprid;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct user_struct&#160;&#160;*mlock_user;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* The task created the shm object.&#160;&#160;NULL if the task is dead. */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct task_struct&#160;&#160;*shm_creator;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1394608032169" ID="ID_1896979205" MODIFIED="1394608041287" TEXT="Sockets"/>
</node>
<node CREATED="1395124636979" FOLDED="true" ID="ID_468506188" MODIFIED="1395371901166" POSITION="right" TEXT="Program ExZecution">
<node CREATED="1395124649748" FOLDED="true" ID="ID_1916206700" MODIFIED="1395371901165" TEXT="executable file">
<node CREATED="1395124664348" ID="ID_478705659" MODIFIED="1395124687357" TEXT="object code"/>
<node CREATED="1395124688411" ID="ID_1804443584" MODIFIED="1395124699036" TEXT="data"/>
</node>
<node CREATED="1395132767300" FOLDED="true" ID="ID_855536174" MODIFIED="1395371901165" TEXT="libraries">
<node CREATED="1395132802739" ID="ID_980444735" MODIFIED="1395132819262" TEXT="static libraries"/>
<node CREATED="1395132776460" ID="ID_487934157" MODIFIED="1395132801883" TEXT="shared libraries"/>
</node>
<node CREATED="1395133028431" FOLDED="true" ID="ID_666568877" MODIFIED="1395371901166" TEXT="Program Segments">
<node CREATED="1395133060646" FOLDED="true" ID="ID_1837976359" MODIFIED="1395371901165" TEXT="Text segment(ELF)">
<node CREATED="1395133081238" ID="ID_392463521" MODIFIED="1395133089646" TEXT="Includes the program&apos;s executable code."/>
</node>
<node CREATED="1395133091549" FOLDED="true" ID="ID_30950379" MODIFIED="1395371901165" TEXT="Initialized data segment">
<node CREATED="1395133112221" ID="ID_409161118" MODIFIED="1395133120872" TEXT="Contains the initialized datathat is, the static variables and the global variables whose initial values are stored in the executable file (because the program must know their values at startup)."/>
</node>
<node CREATED="1395133123093" FOLDED="true" ID="ID_387757498" MODIFIED="1395371901165" TEXT="Uninitialized data segment (bss)">
<node CREATED="1395133134517" ID="ID_715672963" MODIFIED="1395133144623" TEXT="Contains the uninitialized datathat is, all global variables whose initial values are not stored in the executable file (because the program sets the values before referencing them); it is historically called a bss segment."/>
</node>
<node CREATED="1395133152732" FOLDED="true" ID="ID_677290223" MODIFIED="1395371901166" TEXT="Stack segment">
<node CREATED="1395133164428" ID="ID_928905832" MODIFIED="1395133166852" TEXT="Contains the program stack, which includes the return addresses, parameters, and local variables of the functions being executed."/>
</node>
</node>
<node CREATED="1395221333234" FOLDED="true" ID="ID_659484319" MODIFIED="1395371901166" TEXT="exec()">
<node CREATED="1395221337557" ID="ID_1133910105" MODIFIED="1395221342936" TEXT="replace the execution context of a process with a new context described by an executable file"/>
</node>
</node>
<node CREATED="1358477579981" FOLDED="true" ID="ID_188150470" MODIFIED="1395737547691" POSITION="right" TEXT="System Call">
<node CREATED="1358477815733" ID="ID_538922577" MODIFIED="1358931159125">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>System Calls</b>&#160;is an explicit request to the kernel made via a software interrupt
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358477753900" ID="ID_225623548" MODIFIED="1358931246216">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>POSIX APIs</b>&#160;is a function definition that specifies how to obtain a given service
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1358477980740" ID="ID_94575330" MODIFIED="1395737542602">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/system-call/invoking_system_call.png" />
  </body>
</html></richcontent>
</node>
<node CREATED="1358755437681" FOLDED="true" ID="ID_175528966" MODIFIED="1395371901166" TEXT="__kernel_vsyscall">
<node CREATED="1358755526774" FOLDED="true" ID="ID_1499798077" MODIFIED="1395371901166" TEXT="int $0x80">
<icon BUILTIN="button_cancel"/>
<node CREATED="1358755597086" ID="ID_621679404" MODIFIED="1358755775563">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      start_kernel()&#160;&#160;&#160;&#160;// init/main.c
    </p>
    <p>
      &#160;&#160;trap_init()&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;// arch/x86/kernel/traps.c
    </p>
    <p>
      &#160;&#160;&#160;&#160;set_system_trap_gate(SYSCALL_VECTOR, &amp;system_call);
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358755781853" ID="ID_884374445" MODIFIED="1358931016215">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      system_call&#160;&#160;&#160;&#160;&#160;&#160;&#160;// arch/x86/kernel/entry_32.S
    </p>
    <p>
      &#160;&#160;SAVE_ALL
    </p>
    <p>
      &#160;&#160;call *sys_call_table(,%eax,4)
    </p>
    <p>
      &#160;&#160;restore_all
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1358755538689" FOLDED="true" ID="ID_6960833" MODIFIED="1395371901166" TEXT="sysenter">
<icon BUILTIN="button_ok"/>
<node CREATED="1358909136188" ID="ID_1297482190" MODIFIED="1358910510104">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      enable_sep_cpu()
    </p>
    <p>
      &#160;&#160;SYSENTER_CS_MSR&#160;&#160;&#160;= __KERNEL_CS
    </p>
    <p>
      &#160;&#160;SYSENTER_EIP_MSR&#160;&#160;= sysenter_entry()
    </p>
    <p>
      &#160;&#160;SYSENTER_ESP_MSR = local TSS
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358924626233" ID="ID_1520347697" MODIFIED="1358931054084" TEXT="sysenter_entry()  // similar to system_call"/>
</node>
</node>
</node>
<node CREATED="1395370144693" FOLDED="true" ID="ID_1250662614" MODIFIED="1395371901167" POSITION="right" TEXT="Modules">
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
</node>
</map>
