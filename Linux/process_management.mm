<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1314436073487" ID="ID_1195057024" MODIFIED="1395371901167" TEXT="Process Management">
<node CREATED="1393233067733" ID="ID_266019102" MODIFIED="1451095521865" POSITION="right" TEXT="Process Descriptor">
<node CREATED="1393233137666" ID="ID_1178062783" MODIFIED="1395843035816">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The process data structures are stored in the <font color="#0000ff"><b><i>2-page (8 KB)</i></b></font>&#160; memory area
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1358849568031" FOLDED="true" ID="ID_1241600752" MODIFIED="1450948672114">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/process/thread_stack.png" />
  </body>
</html></richcontent>
<node CREATED="1398826906494" ID="ID_563990978" MODIFIED="1417759661959">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* how to get the current stack pointer from C */
    </p>
    <p>
      register unsigned long current_stack_pointer asm(&quot;<i><font color="#ff0000"><b>esp</b></font></i>&quot;) __used;
    </p>
    <p>
      
    </p>
    <p>
      /* how to get the thread information struct from C */
    </p>
    <p>
      static inline struct thread_info *<font color="#000000">current_thread_info</font>(void)
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;return (struct thread_info *)&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;(current_stack_pointer &amp; ~(THREAD_SIZE - 1));
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      #define get_current() (current_thread_info()-&gt;task)
    </p>
    <p>
      #define <i><font color="#ff0000"><b>current</b></font></i>&#160;get_current()
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1315906535124" ID="ID_632220490" MODIFIED="1398827071378">
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
<node CREATED="1315919137906" ID="ID_650907153" MODIFIED="1417759504100">
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
</node>
</node>
<node CREATED="1315906710224" ID="ID_1707237907" MODIFIED="1417767307469">
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
<node CREATED="1398838631337" FOLDED="true" ID="ID_691973270" MODIFIED="1451096606559">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      volatile long state;
    </p>
  </body>
</html></richcontent>
<node CREATED="1417762548174" ID="ID_1153072364" MODIFIED="1417762555694" TEXT="include/linux/sched.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1398838675735" ID="ID_326758892" MODIFIED="1417762721497">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #define TASK_RUNNING&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;0
    </p>
    <p>
      #define TASK_INTERRUPTIBLE&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;1
    </p>
    <p>
      #define TASK_UNINTERRUPTIBLE&#160;&#160;&#160;&#160;2
    </p>
    <p>
      ...
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1315914126372" ID="ID_1983933720" MODIFIED="1417760992794">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      void * <font color="#0000ff"><i><b>stack</b></i></font>;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1316843584303" FOLDED="true" ID="ID_1772179729" MODIFIED="1451096547904">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct list_head tasks;
    </p>
  </body>
</html></richcontent>
<node CREATED="1316843734093" ID="ID_803741408" MODIFIED="1450947186227">
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
<node CREATED="1316917476163" ID="ID_686524080" MODIFIED="1451096497167">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      for_each_process(p)&#160;- scans the whole process list
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1398835951861" ID="ID_696556427" MODIFIED="1450947368164" TEXT="init/init_task.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1450947338830" ID="ID_1526688402" MODIFIED="1451096421573">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* <b>init_task</b>&#160;- Initial task structure */
    </p>
    <p>
      struct task_struct init_task = INIT_TASK(init_task);
    </p>
    <p>
      
    </p>
    <p>
      #define for_each_process(p) \
    </p>
    <p>
      &#160;&#160;&#160;&#160;for (p = &amp;init_task ; (p = next_task(p)) != &amp;init_task ; )
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1398838166869" FOLDED="true" ID="ID_1751707897" MODIFIED="1451096546567">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct task_struct *real_parent;
    </p>
    <p>
      struct task_struct *parent;
    </p>
    <p>
      struct list_head children;
    </p>
    <p>
      struct list_head sibling;
    </p>
  </body>
</html></richcontent>
<node CREATED="1450947527026" ID="ID_347719853" MODIFIED="1450948543153">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>process tree </b>- describe parent/childen/sibling relations
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1316920156962" ID="ID_505848288" MODIFIED="1398838272680" TEXT="&quot;real_parent&quot; - Points to the process descriptor of the process that created P or to the descriptor of process 1 (init) if the parent process no longer exists."/>
<node CREATED="1316920269649" ID="ID_1301081112" MODIFIED="1398838289493" TEXT="&quot;parent&quot; - Points to the current parent of P "/>
</node>
<node CREATED="1451095632942" FOLDED="true" ID="ID_1583938106" MODIFIED="1451096545559" TEXT="struct pid_link pids[PIDTYPE_MAX]; /* PID/PID hash table linkage. */">
<node CREATED="1450948430874" ID="ID_1433629728" MODIFIED="1451096526314">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>process hash table</b>&#160;- A struct <b><i>pid</i></b>&#160;is the kernel's internal notion of a <b><i>process identifier</i></b>. It refers to individual tasks, process groups, and sessions.&#160;&#160;While there are processes attached to it the struct pid lives in a <b><i>hash table</i></b>, so it and then the processes that it refers to can be found quickly from the numeric pid value.
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1393232863003" ID="ID_768721619" MODIFIED="1451096062766" TEXT="include/linux/pid.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1316928699044" ID="ID_1729999827" MODIFIED="1316932589085" TEXT="struct hlist_node node;"/>
<node CREATED="1316931912268" ID="ID_28056775" MODIFIED="1398846797474">
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
<node CREATED="1316932018473" ID="ID_1149046420" MODIFIED="1398847933844" TEXT="struct upid numbers[1];">
<node CREATED="1316932051355" ID="ID_1051743616" MODIFIED="1358327592195" TEXT="int nr; // The PID number"/>
<node CREATED="1316932056544" ID="ID_513109031" MODIFIED="1316932085118" TEXT="struct pid_namespace *ns;"/>
<node CREATED="1316932086156" ID="ID_373966593" MODIFIED="1358327611217" TEXT="struct hlist_node pid_chain; // The links to the next and previous elements in the hash chain list"/>
</node>
</node>
</node>
<node CREATED="1316928554073" FOLDED="true" ID="ID_62137992" MODIFIED="1451096308001">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      pid_t pid;
    </p>
    <p>
      pid_t tgid;&#160;&#160;/* PID of the thread group leader of P */
    </p>
    <p>
      struct task_struct *group_leader;&#160;&#160;/* Process descriptor pointer of the group leader of P */
    </p>
  </body>
</html>
</richcontent>
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
</node>
<node CREATED="1365579658729" ID="ID_676626903" MODIFIED="1409303646088">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct signal_struct *signal;
    </p>
    <p>
      struct sighand_struct *sighand;
    </p>
    <p>
      sigset_t blocked, real_blocked;
    </p>
    <p>
      sigset_t saved_sigmask; /* restored if set_restore_sigmask() was used */
    </p>
    <p>
      struct sigpending pending;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1401170358179" FOLDED="true" ID="ID_465317439" MODIFIED="1450947719983" TEXT="struct mm_struct *mm, *active_mm;">
<node CREATED="1358303465051" ID="ID_1231007921" MODIFIED="1400660267961" TEXT="include/linux/mm_types.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1358303519968" FOLDED="true" ID="ID_1815091434" MODIFIED="1400748904134">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font size="3" face="SansSerif">struct <b><i>mm_struct</i></b>&#160;{ </font>
    </p>
    <p>
      <font size="3" face="SansSerif">&#160;&#160;&#160;&#160;struct vm_area_struct&#160;&#160;*</font><b><i><font face="SansSerif" color="#0000ff" size="3">mmap</font></i></b><font face="SansSerif" size="3">;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* list of memory areas */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;struct rb_root </font><b><i><font face="SansSerif" color="#0000ff" size="3">mm_rb</font></i></b><font face="SansSerif" size="3">;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* red-black tree of VMAs */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;pgd_t&#160;&#160;*</font><b><i><font face="SansSerif" color="#0000ff" size="3">pgd</font></i></b><font face="SansSerif" size="3">;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* page global directory */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;atomic_t&#160;mm_users;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* address space users */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;atomic_t&#160;mm_count;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* primary usage counter */</font>
    </p>
    <p>
      <font face="SansSerif" size="3">&#160;&#160;&#160;&#160;struct list_head&#160;</font><font face="SansSerif" color="#000000" size="3">mmlist</font><font face="SansSerif" size="3">;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* list of all mm_structs */ </font>
    </p>
    <p>
      <font face="SansSerif" size="3">};</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1358304586374" ID="ID_1296864918" MODIFIED="1400740593039" TEXT="The mmap and mm_rb fields are different data structures that contain the same thing: all the memory areas in this address space. The former stores them in a linked list, whereas the latter stores them in a red-black tree. A red-black tree is a type of binary tree; like all binary trees, searching for a given element is an O(log n) operation. ">
<icon BUILTIN="idea"/>
</node>
<node CREATED="1358304323910" ID="ID_284240669" MODIFIED="1400740599040" TEXT="All of the mm_struct structures are strung together in a doubly linked list via the mmlist field. The initial element in the list is the init_mm memory descriptor, which describes the address space of the init process.">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
<node CREATED="1401170387906" FOLDED="true" ID="ID_623807789" MODIFIED="1450947781022">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct fs_struct *fs;
    </p>
    <p>
      struct files_struct *files;
    </p>
    <p>
      struct nsproxy *nsproxy;
    </p>
  </body>
</html></richcontent>
<node CREATED="1401171188162" ID="ID_1384807595" MODIFIED="1401171495172" TEXT="include/linux/fs_struct.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1401171367500" ID="ID_362287079" MODIFIED="1401171495177">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>fs_struct</b></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct path <b><i><font color="#0000ff">root</font></i></b>, <b><font color="#0000ff"><i>pwd</i></font></b>;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1401170967001" ID="ID_1591417236" MODIFIED="1401170999346" TEXT="include/linux/fdtable.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1401171001610" ID="ID_1598643826" MODIFIED="1401171400606">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>files_struct</b></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160; struct file&#160;__rcu * <b><i><font color="#0000ff">fd_array</font></i></b>[NR_OPEN_DEFAULT];
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1401172451613" ID="ID_1211025722" MODIFIED="1401172569146" TEXT="include/linux/nsproxy.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1401172571141" ID="ID_1580417921" MODIFIED="1401172664909">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>nsproxy</b></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;atomic_t count;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct uts_namespace *uts_ns;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct ipc_namespace *ipc_ns;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct mnt_namespace *<b><i><font color="#0000ff">mnt_ns</font></i></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct pid_namespace *pid_ns_for_children;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct net &#160;&#160;&#160;&#160;&#160;*net_ns;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1315917811701" FOLDED="true" ID="ID_749542623" MODIFIED="1450947793773">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct thread_struct thread;
    </p>
    <p>
      atomic_t usage;
    </p>
    <p>
      unsigned int flags;
    </p>
    <p>
      unsigned int ptrace;
    </p>
    <p>
      int exit_state;
    </p>
    <p>
      ...
    </p>
  </body>
</html></richcontent>
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
</node>
</node>
<node CREATED="1398840731946" FOLDED="true" ID="ID_1719288201" MODIFIED="1451093998243" POSITION="right" TEXT="Process Creation/Execution/Termination">
<node CREATED="1398840513254" ID="ID_509227697" MODIFIED="1417765082366">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">Process creation&#160;in Unix is unique. Most operating systems implement a spawn&#160;mechanism to&#160;create&#160;a new process in a new address space, read in an executable, and begin executing it.&#160;Unix takes the unusual approach of separating these steps into two distinct functions: fork() and exec().</font>
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1398840885045" ID="ID_1909904793" MODIFIED="1417764141868">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">The first,</font><i><font color="#ff0000"><b>&#160;fork()</b></font></i><font color="#000000">, creates a child process that is a copy of the current task. It differs&#160;from the parent only in its PID&#160;(which is unique), its PPID&#160;(parent&#8217;s PID, which is set to the original process), and certain resources and statistics, such as pending signals, which are not inherited. </font>
    </p>
    <p>
      <font color="#000000">In Linux, fork()&#160;is implemented through the use of </font><i><font color="#0000ff"><b>copy-on-write</b></font></i><font color="#000000">&#160; pages. Copy-on-write (or COW) is a technique to delay or altogether prevent copying of the data. Rather than duplicate the <i><b>process address space</b></i>, the parent and the child can share a single copy. </font>
    </p>
    <p>
      <font color="#000000">The only overhead&#160;incurred by fork() is the duplication of the parent&#8217;s <i><b>page tables</b></i>&#160;and the creation of a unique <i><b>process descriptor</b></i>&#160;for the child.</font>
    </p>
  </body>
</html></richcontent>
<node CREATED="1398840297436" ID="ID_126426966" MODIFIED="1398840304498" TEXT="kernel/fork.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1398840246603" ID="ID_342069179" MODIFIED="1398840252962">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      fork()
    </p>
    <p>
      &#160;&#160;do_fork()
    </p>
    <p>
      &#160;&#160;&#160;&#160;copy_process()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;dup_task_struct()
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1398841090698" ID="ID_1452378122" MODIFIED="1417763230047">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The second function,<font color="#ff0000"><i><b>exec()</b></i></font>, loads a new executable into the <i><b>address space</b></i>&#160;and begins executing it. In another world, it replace the execution context of a process with a new context described by an executable file.
    </p>
  </body>
</html></richcontent>
<node CREATED="1395124649748" ID="ID_1916206700" MODIFIED="1398841580141" TEXT="executable file">
<node CREATED="1395124664348" ID="ID_478705659" MODIFIED="1395124687357" TEXT="object code"/>
<node CREATED="1395124688411" ID="ID_1804443584" MODIFIED="1395124699036" TEXT="data"/>
</node>
<node CREATED="1395132767300" ID="ID_855536174" MODIFIED="1398841582239" TEXT="libraries">
<node CREATED="1395132802739" ID="ID_980444735" MODIFIED="1395132819262" TEXT="static libraries"/>
<node CREATED="1395132776460" ID="ID_487934157" MODIFIED="1395132801883" TEXT="shared libraries"/>
</node>
<node CREATED="1395133028431" ID="ID_666568877" MODIFIED="1398841583721" TEXT="Program Segments">
<node CREATED="1395133060646" ID="ID_1837976359" MODIFIED="1417763438926">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><font color="#0000ff"><b>Text segment(ELF)</b></font></i>&#160;- Includes the program's executable code.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1395133091549" ID="ID_30950379" MODIFIED="1417763449599">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><font color="#0000ff"><b>Initialized data segment</b></font></i>&#160;- Contains the initialized datathat is, the static variables and the global variables whose initial values are stored in the executable file (because the program must know their values at startup).
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1395133123093" ID="ID_387757498" MODIFIED="1417763462078">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><font color="#0000ff"><b>Uninitialized data segment (bss)</b></font></i>&#160;- Contains the uninitialized datathat is, all global variables whose initial values are not stored in the executable file (because the program sets the values before referencing them); it is historically called a bss segment.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1395133152732" ID="ID_677290223" MODIFIED="1417763476285">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><font color="#0000ff"><b>Stack segment</b></font></i>&#160;- Contains the program stack, which includes the return addresses, parameters, and local variables of the functions being executed.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1398844464389" ID="ID_388121085" MODIFIED="1417765168516">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      When a process terminates, the kernel releases the resources&#160;owned by the process and notifies the child&#8217;s parent&#160;of its demise. Processes ultimately die forcefully or intentionally via <i><font color="#ff0000"><b>exit()</b></font></i>, and parents glean information about their deceased children via the <i><font color="#ff0000"><b>wait()</b></font></i>&#160; family of system calls.
    </p>
  </body>
</html></richcontent>
<node CREATED="1398844773298" ID="ID_1320983370" MODIFIED="1398844806483" TEXT="kernel/exit.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1398844809006" ID="ID_884154903" MODIFIED="1398844907720">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      exit()
    </p>
    <p>
      &#160;&#160;do_exit()
    </p>
    <p>
      &#160;&#160;&#160;&#160;exit_notify()
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1398833005312" ID="ID_1677865818" MODIFIED="1398833036961">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/process/process-state.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1398836995454" FOLDED="true" ID="ID_1104515770" MODIFIED="1451094004005" POSITION="right" TEXT="Process Contexts">
<node CREATED="1398837009357" ID="ID_1855528316" MODIFIED="1398837189907">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      In <font color="#0000ff"><i><b>user-space</b></i></font>, executing <font color="#0000ff"><i><b>user code</b></i></font>&#160;in a process
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1398837047848" FOLDED="true" ID="ID_153365591" MODIFIED="1450949560959">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      In <font color="#0000ff"><i><b>kernel-space</b></i></font>, in <font color="#0000ff"><i><b>process context</b></i></font>, executing on behalf of a specific process
    </p>
  </body>
</html></richcontent>
<node CREATED="1399274133538" ID="ID_859285725" MODIFIED="1399274168629">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Process context is the mode of operation the kernel is in while it is executing on behalf of a process&#8212;for example, executing a <font color="#0000ff"><i><b>system call</b></i></font>&#160;or running a <font color="#0000ff"><i><b>kernel thread</b></i></font>.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399274205491" ID="ID_1832524809" MODIFIED="1399274258591">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      In process context, the <font color="#0000ff"><i><b>current</b></i></font>&#160;macro points to the associated task. Furthermore, because a process is coupled to the kernel in process context, process context can <font color="#0000ff"><i><b>sleep</b></i></font>&#160;or otherwise invoke the <font color="#0000ff"><i><b>scheduler</b></i></font>.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1398845651802" FOLDED="true" ID="ID_57271949" MODIFIED="1417765860752">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The significant difference between <b><i>kernel threads</i></b>&#160;and normal processes is that kernel threads do not have an address space. (Their mm pointer, which points at their address space, is NULL.) For example, when idle, it turns out that the kernel is executing an <b><i>idle process </i></b>in <b><i>process context</i></b>&#160;in the <b><i>kernel</i></b>.
    </p>
  </body>
</html></richcontent>
<node CREATED="1400743393763" ID="ID_391716266" MODIFIED="1400743514373">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Kernel threads do not have a process address space and therefore do not have an associated memory descriptor.Thus, the mm field of a kernel thread&#8217;s process descriptor is NULL. This is the definition of a kernel thread&#8212;processes that have no user context.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1400743825871" ID="ID_112340146" MODIFIED="1400743856648">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      when a kernel thread is scheduled, the kernel notices that mm is NULL and keeps the previous process&#8217;s address space loaded.The kernel then updates the active_mm field of the kernel thread&#8217;s process descriptor to refer to the previous process&#8217;s memory descriptor.The kernel thread can then use the previous process&#8217;s page tables as needed.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1398837072884" FOLDED="true" ID="ID_1220407681" MODIFIED="1450949471829">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      In <font color="#0000ff"><i><b>kernel-space</b></i></font>, in <font color="#0000ff"><i><b>interrupt context</b></i></font>, not associated with a process, handling an interrupt
    </p>
  </body>
</html></richcontent>
<node CREATED="1399274379116" ID="ID_1180042969" MODIFIED="1399274390940" TEXT="Interrupt context cannot sleep&#x2014;how would it ever reschedule?"/>
</node>
</node>
<node CREATED="1399183800754" FOLDED="true" ID="ID_1745803509" MODIFIED="1451094002288" POSITION="right" TEXT="Process Scheduling">
<node CREATED="1399183810902" ID="ID_1735785535" MODIFIED="1450950677440" TEXT="policy">
<node CREATED="1399184102899" ID="ID_602928757" MODIFIED="1450950863796" TEXT="higher priority run before those with a lower priority, whereas processes with the same priority are scheduled round-robin (one after the next, repeating)">
<node CREATED="1393231629106" ID="ID_1195752606" MODIFIED="1450950509776" TEXT="include/linux/sched.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1450950463379" ID="ID_1800462793" MODIFIED="1450950486839">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      #define SCHED_NORMAL&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;0
    </p>
    <p>
      #define SCHED_FIFO&#160;&#160;&#160;&#160;&#160;&#160;1
    </p>
    <p>
      #define SCHED_RR&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;2
    </p>
    <p>
      #define SCHED_BATCH&#160;&#160;&#160;&#160;&#160;3
    </p>
    <p>
      /* SCHED_ISO: reserved but not implemented yet */
    </p>
    <p>
      #define SCHED_IDLE&#160;&#160;&#160;&#160;&#160;&#160;5
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1450950969177" ID="ID_1338208634" MODIFIED="1451010623824" TEXT="priority">
<node CREATED="1399195098576" ID="ID_1767980307" MODIFIED="1451010510337" TEXT="Real-Time Scheduling Policies (0 - 99)">
<node CREATED="1399195026459" ID="ID_1824177182" MODIFIED="1399195550017" TEXT="kernel/sched/rt.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1399195431461" ID="ID_1136354332" MODIFIED="1399196160630" TEXT="SCHED_FIFO - a simple first-in, first-out scheduling algorithm without timeslices."/>
<node CREATED="1399195449116" ID="ID_1253013825" MODIFIED="1451010468795" TEXT="SCHED_RR - run only until it exhausts a predetermined timeslice. (SCHED_FIFO + timeslices)"/>
<node CREATED="1399184811160" ID="ID_836725979" MODIFIED="1450951039551">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>real-time priority</b></i></font>, the values are configurable, but by default range from 0 to 99, inclusive. Opposite from nice values, higher real-time priority values correspond to a greater priority.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1399196188846" ID="ID_1207348297" MODIFIED="1451010536782" TEXT="Normal Scheduling Policies (100 - 139)">
<node CREATED="1399189020892" ID="ID_951127327" MODIFIED="1399189295905" TEXT="kernel/sched/fair.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1399196223565" ID="ID_1633010073" MODIFIED="1399196800391" TEXT="SCHED_NORMAL - Completely Fair Scheduler (CFS)">
<node CREATED="1451010222532" ID="ID_1060219051" MODIFIED="1451010281012" TEXT="vruntime = real_runtime/weight">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1451010242819" ID="ID_514457496" MODIFIED="1451010378001" TEXT="the less nice process, the more higher weight"/>
<node CREATED="1451010284354" ID="ID_1381512181" MODIFIED="1451010329850" TEXT="CFS select the least node from a time-ordered red-black tree"/>
</node>
<node CREATED="1399184750088" ID="ID_1570252583" MODIFIED="1450951041941">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>nice value</b></i></font>, a number from &#8211;20 to +19 with a default of 0. Larger nice values correspond to a lower priority&#8212;you are being &#8220;nice&#8221; to the other processes on the system. By default, this means the &#8211;20 to +19 nice range maps directly onto the priority space from 100 to 139.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1399184165108" ID="ID_153398619" MODIFIED="1450950455136" TEXT="timeslice">
<node CREATED="1399184640091" ID="ID_1374000925" MODIFIED="1399184658403" TEXT="The timeslice is the numeric value that represents how long a task can run until it is preempted."/>
<node CREATED="1399184169718" ID="ID_1912944811" MODIFIED="1399184568190" TEXT="When a process&apos;s timeslice runs out, the process is considered expired. A process with no timeslice is not eligible to run until all other processes have exhausted their timeslices (that is, they all have zero timeslice remaining). At that point, the timeslices for all processes are recalculated. "/>
</node>
</node>
<node CREATED="1399185207855" ID="ID_649071505" MODIFIED="1399185212702" TEXT="algorithm">
<node CREATED="1399185571913" ID="ID_1282925095" MODIFIED="1399185579819" TEXT="kernel/sched/core.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1399189298444" ID="ID_25979844" MODIFIED="1399192433482">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>schedule()</b></i></font>
    </p>
    <p>
      &#160;&#160;&#160;&#160;__schedule()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pick_next_task()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<font color="#0000ff"><i><b>context_switch()&#160; </b></i></font><i><font color="#000000">/* context switch */</font></i>
    </p>
    <p>
      <font color="#0000ff"><i><b>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;</b></i></font><b><font color="#000000">switch_mm()</font><font color="#0000ff"><i>&#160; &#160;</i></font></b><i><font color="#000000">/* switch the virtual memory mapping */ </font></i>
    </p>
    <p>
      <font color="#000000"><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </i><b>switch_to()</b></font><b><font color="#0000ff"><i>&#160; </i></font></b><i><font color="#000000">&#160;&#160;&#160;&#160;/* switch the processor state, including stack and registers */</font></i>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1399193905072" ID="ID_740199658" MODIFIED="1399196840045" TEXT="preemption">
<node CREATED="1399193968337" ID="ID_526264413" MODIFIED="1399194095868">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      check <font color="#0000ff"><i><b>need_resched</b></i></font>&#160;flag
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399193998293" ID="ID_1527914031" MODIFIED="1399194303808" TEXT="user preemption">
<node CREATED="1399194022607" ID="ID_1711230004" MODIFIED="1399194040679" TEXT="When returning to user-space from a system call"/>
<node CREATED="1399194024624" ID="ID_541810858" MODIFIED="1399194063388" TEXT="When returning to user-space from an interrupt handler"/>
</node>
<node CREATED="1399194070467" ID="ID_1714746634" MODIFIED="1399194304906" TEXT="kernel preemption">
<node CREATED="1399194205793" ID="ID_1001253478" MODIFIED="1399194212095" TEXT="When an interrupt handler exits, before returning to kernel-space"/>
<node CREATED="1399194212659" ID="ID_883852873" MODIFIED="1399194221355" TEXT="When kernel code becomes preemptible again"/>
<node CREATED="1399194221943" ID="ID_1486209620" MODIFIED="1399194242025" TEXT="If a task in the kernel explicitly calls schedule()"/>
<node CREATED="1399194242576" ID="ID_1060683438" MODIFIED="1399194252258" TEXT="If a task in the kernel blocks (which results in a call to schedule())"/>
</node>
</node>
</node>
<node CREATED="1316766906971" FOLDED="true" ID="ID_645308379" MODIFIED="1451012609904" POSITION="right" TEXT="Interrupts and Exceptions">
<node CREATED="1316769068729" ID="ID_1349911850" MODIFIED="1399620625601" TEXT="Definition">
<node CREATED="1316766926536" ID="ID_1498465646" MODIFIED="1399620628022" TEXT="Interrupts (Asynchronous, generated by hardware)">
<node CREATED="1316767054709" ID="ID_1599617338" MODIFIED="1316767078512" TEXT="Maskable Interrupts"/>
<node CREATED="1316767079731" ID="ID_175788121" MODIFIED="1316767126790" TEXT="Nonmaskable Interrupts (NMI)"/>
</node>
<node CREATED="1316766930802" ID="ID_651855405" MODIFIED="1399620639694" TEXT="Exceptions (Synchronous, generated by the processor)">
<node CREATED="1316767173412" ID="ID_1388644566" MODIFIED="1399258490970" TEXT="Processor-detected Exception">
<node CREATED="1316767223778" ID="ID_1182658758" MODIFIED="1316767227854" TEXT="Faults"/>
<node CREATED="1316767228862" ID="ID_286073273" MODIFIED="1316767232877" TEXT="Traps"/>
<node CREATED="1316767233772" ID="ID_828699720" MODIFIED="1316767236317" TEXT="Aborts"/>
</node>
<node CREATED="1316767192526" ID="ID_834789161" MODIFIED="1316767208364" TEXT="Programmed Exception"/>
</node>
</node>
<node CREATED="1399281369123" ID="ID_115032626" MODIFIED="1399620642284" TEXT="Data Structure">
<node CREATED="1316767346119" FOLDED="true" ID="ID_74815681" MODIFIED="1399620650753">
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
<node CREATED="1316767858652" ID="ID_718436077" MODIFIED="1399281389294" TEXT="Intel (Hardware)">
<node CREATED="1316767411047" ID="ID_386560905" MODIFIED="1316767511372" TEXT="Interrupt Gate - to handle interupts"/>
<node CREATED="1316769115937" ID="ID_1207589129" MODIFIED="1316769119350" TEXT="Trap Gate - to handle exceptions"/>
<node CREATED="1316767397291" ID="ID_1442372959" MODIFIED="1316769842422" TEXT="Task Gate - to handle &quot;Double fault &quot; exception"/>
</node>
<node CREATED="1316767884430" ID="ID_803462473" MODIFIED="1399281401844" TEXT="Linux (Software)">
<node CREATED="1316767902774" ID="ID_36241942" MODIFIED="1316767910011" TEXT="Interrupt Gate"/>
<node CREATED="1316767936127" ID="ID_1262195787" MODIFIED="1316768073413" TEXT="Trap Gate"/>
<node CREATED="1316767946474" ID="ID_596476977" MODIFIED="1316769846629" TEXT="Task Gate"/>
<node CREATED="1316767916716" ID="ID_393487179" MODIFIED="1316769963421" TEXT="System Gate - to handle system call"/>
<node CREATED="1316767922350" ID="ID_534098991" MODIFIED="1316770038515" TEXT="System Interrupt Gate - to handle &quot;Breakpoint&quot; exception"/>
</node>
<node CREATED="1316768346318" ID="ID_1506973519" MODIFIED="1399259543736" TEXT="Initializing IDT">
<node CREATED="1316768368803" FOLDED="true" ID="ID_1225375667" MODIFIED="1399281430190">
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
<node CREATED="1399281553278" ID="ID_1981360328" MODIFIED="1399282037153" TEXT="Interrupt Descriptor">
<node CREATED="1399281487167" ID="ID_317807738" MODIFIED="1399281512002" TEXT="include/linux/irqdesc.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1399281571405" ID="ID_1219974683" MODIFIED="1399281804129">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>irq_desc</b></i>&#160;{&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; &#160; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct irqaction&#160;&#160;&#160;&#160;*<font color="#0000ff"><i><b>action</b></i></font>; &#160;&#160;&#160;/* IRQ action list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      } ____cacheline_internodealigned_in_smp;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1399281812697" ID="ID_820749576" MODIFIED="1399282038495" TEXT="Per interrupt Action Description">
<node CREATED="1399281854570" ID="ID_1481700631" MODIFIED="1399281870785" TEXT="include/linux/interrupt.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1399281873428" ID="ID_605190251" MODIFIED="1399281993616">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>irqaction</b></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;irq_handler_t&#160;&#160;&#160;&#160;&#160;&#160; <font color="#0000ff"><i><b>handler</b></i></font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;void&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;*dev_id;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct irqaction&#160;&#160;&#160;&#160;*next;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;irq;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;flags;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      } ____cacheline_internodealigned_in_smp;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1399269281861" ID="ID_934874925" MODIFIED="1399620678518" TEXT="Registering an Interrupt Handler">
<node CREATED="1399269616811" ID="ID_614596620" MODIFIED="1399269622852" TEXT="kernel/irq/manage.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1312768426413" ID="ID_697921072" MODIFIED="1399269564946" TEXT="request_irq(irq, handler, flags, dev_name, dev_id)"/>
<node CREATED="1399269297956" ID="ID_1219313595" MODIFIED="1399269575663" TEXT="free_irq(irq, dev_id)"/>
</node>
<node CREATED="1399277872423" ID="ID_341071095" MODIFIED="1399620682126" TEXT="Implementing Interrupt Handlers">
<node CREATED="1399278445305" ID="ID_1825523158" MODIFIED="1399278448918" TEXT="The path that an interrupt takes from hardware and on through the kernel."/>
<node CREATED="1399277900300" ID="ID_800520903" MODIFIED="1399277917256">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/interrupt/interrupt-path.png" />
  </body>
</html></richcontent>
</node>
<node CREATED="1316769506966" ID="ID_1652292667" MODIFIED="1399259696255" TEXT="Interrupt Handling">
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
<node CREATED="1316769432442" ID="ID_487968707" MODIFIED="1399277893546" TEXT="Exception Handling">
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
</node>
<node CREATED="1399279539676" ID="ID_409908878" MODIFIED="1399620218894" TEXT="Interrupt Control">
<node CREATED="1312768587640" ID="ID_1318501354" MODIFIED="1399620525269" TEXT="Single Interrupt">
<node CREATED="1399279819427" ID="ID_742629331" MODIFIED="1399620604541">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i>enable_irq(irq); </i>
    </p>
    <p>
      <i>... </i>
    </p>
    <p>
      <i>disable_irq(irq)/disable_irq_nosync(irq);</i>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312768614741" ID="ID_1921753393" MODIFIED="1399259664616" TEXT="All Interrupts">
<node CREATED="1399280082101" ID="ID_153406523" MODIFIED="1399620610997">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i>unsigned long flags; </i>
    </p>
    <p>
      <i>local_irq_save(flags); </i>
    </p>
    <p>
      <i>... </i>
    </p>
    <p>
      <i>local_irq_restore(flags);</i>
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1399280952340" ID="ID_1179258026" MODIFIED="1399620582235" TEXT="check the kernel&apos;s current context">
<node CREATED="1399280956488" ID="ID_995402415" MODIFIED="1399280975296" TEXT="in_interrupt()">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1399279709582" ID="ID_1487734066" MODIFIED="1399279981991" TEXT="Show Interrupts">
<node CREATED="1312768359020" ID="ID_907850260" MODIFIED="1399280189447">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /proc/interrupts
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399280157720" ID="ID_1214356135" MODIFIED="1399280193126" TEXT="/proc/irq/&lt;pid&gt;/*"/>
<node CREATED="1399280158616" ID="ID_1296974895" MODIFIED="1399280174063" TEXT="/proc/stat"/>
</node>
</node>
<node CREATED="1399602574467" ID="ID_1598030792" MODIFIED="1399620211339" TEXT="Top Halves">
<node CREATED="1399602603777" ID="ID_928780742" MODIFIED="1399602708881" TEXT="Interrupt handlers run asynchronously and thus interrupt other, potentially important, code, including other interrupt handlers.Therefore, to avoid stalling the interrupted code for too long, interrupt handlers need to run as quickly as possible."/>
<node CREATED="1417766378179" ID="ID_1183307174" MODIFIED="1417766399480">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Interrupt handlers run with the <i><font color="#0000ff"><b>current interrupt level disabled</b></font></i>&#160; at best (if IRQF_DISABLED is unset), and at worst (if IRQF_DISABLED is set) with all interrupts on the current processor disabled.As disabling interrupts prevents hardware from communicating with the operating systems, interrupt handlers need to run as quickly as possible.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399602629313" ID="ID_840783943" MODIFIED="1399602638396" TEXT="Interrupt handlers are often timing-critical because they deal with hardware."/>
<node CREATED="1417766447506" ID="ID_1475075375" MODIFIED="1417766465987">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Interrupt handlers do not run in process context; therefore, they <i><font color="#0000ff"><b>cannot block</b></font></i>.This limits what they can do.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312768870057" ID="ID_1414900085" MODIFIED="1417766711459" TEXT="Bottom Halves">
<node CREATED="1312768891469" ID="ID_1724781127" MODIFIED="1313486687059" TEXT="softirq (no sleep, interrupt context)"/>
<node CREATED="1312768901317" FOLDED="true" ID="ID_1118359740" MODIFIED="1417766542835">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tasklet (no sleep, interrupt context)
    </p>
  </body>
</html></richcontent>
<node CREATED="1399605898561" ID="ID_1748249069" MODIFIED="1399605908185" TEXT="include/linux/interrupt.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1399605989527" ID="ID_449097725" MODIFIED="1399606014615">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>tasklet_struct</b></i>
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct tasklet_struct *next;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long state;
    </p>
    <p>
      &#160;&#160;&#160;&#160;atomic_t count;
    </p>
    <p>
      &#160;&#160;&#160;&#160;void (*<i><b>func</b></i>)(unsigned long);
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long data;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1312769252277" ID="ID_1088231767" MODIFIED="1417766499318" TEXT="Declaring Your Tasklet">
<icon BUILTIN="full-1"/>
<node CREATED="1312768938044" ID="ID_1114904354" MODIFIED="1399606027847" TEXT="static">
<node CREATED="1312768948629" ID="ID_529211850" MODIFIED="1399606479100">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>DECLARE_TASKLET</b></i>(name, func, data)
    </p>
    <p>
      DECLARE_TASKLET_DISABLED(name, func, data)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312768978605" ID="ID_1031552416" MODIFIED="1399606030070" TEXT="dynamic">
<node CREATED="1312768996110" ID="ID_448875376" MODIFIED="1313474513449" TEXT="tasklet_init(t, tasklet_handler, dev)"/>
</node>
</node>
<node CREATED="1399606208545" ID="ID_878844632" MODIFIED="1417766512790" TEXT="Writing Your Tasklet Handler">
<icon BUILTIN="full-2"/>
<node CREATED="1399606223147" ID="ID_1175846772" MODIFIED="1399606237528" TEXT="void tasklet_handler(unsigned long data)"/>
</node>
<node CREATED="1399606245743" ID="ID_534379138" MODIFIED="1417766515580" TEXT="Scheduling Your Tasklet">
<icon BUILTIN="full-3"/>
<node CREATED="1312769016773" ID="ID_1212964925" MODIFIED="1399606460751">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>tasklet_schedule</b></i>(&amp;my_tasklet)/tasklet_hi_schedule(&amp;my_tasklet)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1312769066637" ID="ID_1910418896" MODIFIED="1313485389349">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tasklet_enable()/tasklet_disable()/tasklet_disable_nosync()
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1312769101999" ID="ID_727297827" MODIFIED="1312769103841" TEXT="tasklet_kill()"/>
</node>
</node>
<node CREATED="1312768910909" FOLDED="true" ID="ID_794097156" MODIFIED="1417766629364">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      workqueue (sleep, process context)
    </p>
  </body>
</html></richcontent>
<node CREATED="1399618982324" ID="ID_721205769" MODIFIED="1399619329895">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      include/linux/workqueue.h
    </p>
    <p>
      kernel/workqueue.c
    </p>
  </body>
</html></richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1399619561421" ID="ID_1841430687" MODIFIED="1417766557133">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>workqueue_struct</b></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head&#160;&#160;&#160;&#160;pwqs;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* WR: all pwqs of this wq */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head&#160;&#160;&#160;&#160;list;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* PL: list of all workqueues *
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1312769212872" ID="ID_891040841" MODIFIED="1417766560996">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Creating New Work Queues
    </p>
  </body>
</html></richcontent>
<node CREATED="1312769347389" ID="ID_1107461994" MODIFIED="1399619983655" TEXT="create_workqueue()/create_singlethread_workqueue()"/>
<node CREATED="1312769374116" ID="ID_1091106294" MODIFIED="1312769376656" TEXT="destroy_workqueue()"/>
<node CREATED="1312769460406" ID="ID_1122862524" MODIFIED="1312769496856" TEXT="queue_work()/queue_delayed_work()"/>
<node CREATED="1312769583956" ID="ID_655962899" MODIFIED="1312769586112" TEXT="flush_workqueue()"/>
</node>
</node>
<node CREATED="1399618990980" ID="ID_1703462666" MODIFIED="1399619148602">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>work_struct</b></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;atomic_long_t data;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head entry;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<i><b>work_func_t</b></i>&#160;func;
    </p>
    <p>
      };
    </p>
    <p>
      typedef void (*<i><b>work_func_t</b></i>)(struct work_struct *work);
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399619663348" ID="ID_1703149132" MODIFIED="1417766584812" TEXT="Creating Work">
<icon BUILTIN="full-1"/>
<node CREATED="1312769385645" ID="ID_1344136187" MODIFIED="1399619632124" TEXT="static">
<node CREATED="1312769418805" ID="ID_1725697565" MODIFIED="1399620119019">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>DECLARE_WORK</b></i>(name, func)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312769388292" ID="ID_1343775588" MODIFIED="1399619633274" TEXT="dynamic">
<node CREATED="1312769427535" ID="ID_476087168" MODIFIED="1313485057764" TEXT="INIT_WORK(work, func)"/>
</node>
</node>
<node CREATED="1399619760201" ID="ID_837073676" MODIFIED="1417766587117" TEXT="Writing Your Work Queue Handler">
<icon BUILTIN="full-2"/>
<node CREATED="1399619797712" ID="ID_1006877625" MODIFIED="1399619810987" TEXT="void work_handler(void *data)"/>
</node>
<node CREATED="1399619837535" ID="ID_85646793" MODIFIED="1417766589185" TEXT="Scheduling Your Work">
<icon BUILTIN="full-3"/>
<node CREATED="1312769631892" ID="ID_947177218" MODIFIED="1399619908038">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>schedule_work</b></i>(&amp;work)/schedule_delayed_work(&amp;work, delay)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1312769658141" ID="ID_819983672" MODIFIED="1312769660345" TEXT="flush_scheduled_work()"/>
<node CREATED="1312769574845" ID="ID_147766562" MODIFIED="1313486073228" TEXT="cancel_delayed_work()"/>
</node>
</node>
<node CREATED="1313486628806" ID="ID_589613468" MODIFIED="1417766670358" TEXT="In short, normal driver writers have two choices. First, do you need a schedulable entity to perform your deferred work&#x2014;fundamentally, do you need to sleep for any reason? Then work queues are your only option. Otherwise, tasklets are preferred. Only if scalability becomes a concern do you investigate softirqs. The bottom half runs with all interrupts enabled.">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
<node CREATED="1358477579981" FOLDED="true" ID="ID_188150470" MODIFIED="1450951169841" POSITION="right" TEXT="System Call">
<node CREATED="1358477815733" FOLDED="true" ID="ID_538922577" MODIFIED="1399962878636">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>System Calls</b></i></font>&#160;is an explicit request to the kernel made via a software interrupt
    </p>
  </body>
</html></richcontent>
<node CREATED="1358477753900" ID="ID_225623548" MODIFIED="1399962864198">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>POSIX APIs</b></i></font>&#160;is a function definition that specifies how to obtain a given service.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1399258230564" ID="ID_1791705159" MODIFIED="1399962876015">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>C library</b></i></font>&#160;implements the main API on Unix systems, including the standard C library and the system call interface.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1358477980740" ID="ID_94575330" MODIFIED="1395844951627">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/syscall/invoking_system_call.png" />
  </body>
</html></richcontent>
</node>
<node CREATED="1358755437681" ID="ID_175528966" MODIFIED="1395844966215" TEXT="__kernel_vsyscall">
<node CREATED="1358755526774" FOLDED="true" ID="ID_1499798077" MODIFIED="1417766788291" TEXT="int $0x80">
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
<node CREATED="1358755538689" FOLDED="true" ID="ID_6960833" MODIFIED="1417766796281" TEXT="sysenter">
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
<node CREATED="1358924626233" ID="ID_1520347697" MODIFIED="1399962937767" TEXT="sysenter_entry()  // similar to system_call"/>
</node>
</node>
</node>
<node CREATED="1395826105267" FOLDED="true" ID="ID_1799415634" MODIFIED="1451096717025" POSITION="right" TEXT="Concurrency">
<node CREATED="1399770844089" ID="ID_869416328" MODIFIED="1399962757390" TEXT="Definiton">
<node CREATED="1399771002871" ID="ID_261412793" MODIFIED="1399771167398">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>Critical Regions</b></i>&#160;(&#20020;&#30028;&#21306;)- Code paths that access and manipulate shared data.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399771282717" ID="ID_80570559" MODIFIED="1399771342329">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>Race Conditions</b></i>&#160;(&#31454;&#20105;&#26465;&#20214;) - Two threads of execution to be simultaneously executing within the same critical region.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399771369236" ID="ID_457370386" MODIFIED="1399771446526">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>Synchronization</b></i>&#160;(&#21516;&#27493;) - Ensuring that unsafe concurrency is prevented and that race conditions do not occur.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1399774809976" ID="ID_737544554" MODIFIED="1399962758879" TEXT="Causes of Concurrency">
<node CREATED="1399774814459" FOLDED="true" ID="ID_555360005" MODIFIED="1417766847895" TEXT="Interrupts">
<node CREATED="1399774904899" ID="ID_629482231" MODIFIED="1399774925976" TEXT="An interrupt can occur asynchronously at almost any time, inter- rupting the currently executing code."/>
</node>
<node CREATED="1399774840287" FOLDED="true" ID="ID_379851033" MODIFIED="1417766857156" TEXT="Softirqs and tasklets">
<node CREATED="1399774927838" ID="ID_1840207051" MODIFIED="1399774937669" TEXT="The kernel can raise or schedule a softirq or tasklet at almost any time, interrupting the currently executing code."/>
</node>
<node CREATED="1399774865775" FOLDED="true" ID="ID_568242172" MODIFIED="1417766859570" TEXT="Kernel preemption">
<node CREATED="1399774941611" ID="ID_1883182318" MODIFIED="1399774950611" TEXT="Because the kernel is preemptive, one task in the kernel can preempt another."/>
</node>
<node CREATED="1399774876223" FOLDED="true" ID="ID_1886946840" MODIFIED="1417766864754" TEXT="Sleeping and synchronization with user-space">
<node CREATED="1399774952080" ID="ID_992637458" MODIFIED="1399774960293" TEXT="A task in the kernel can sleep and thus invoke the scheduler, resulting in the running of a new process."/>
</node>
<node CREATED="1399774888773" FOLDED="true" ID="ID_403228829" MODIFIED="1417766866751" TEXT="Symmetrical multiprocessing">
<node CREATED="1399774963046" ID="ID_1971112467" MODIFIED="1399774972951" TEXT="Two or more processors can execute kernel code at exactly the same time."/>
</node>
</node>
<node CREATED="1399778737148" ID="ID_1019982940" MODIFIED="1399962762955" TEXT="Principles of Concurrency">
<node CREATED="1313544533216" ID="ID_1459520210" MODIFIED="1399778041935">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      You should protect <font color="#0000ff"><i><b>data</b></i></font>&#160;and not code. In short, nearly all <font color="#0000ff"><i><b>global and shared data</b></i></font>&#160;in the kernel requires some form of the synchronization methods.
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1399779169643" ID="ID_1035081747" MODIFIED="1399779193680">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The tricky part is identifying the actual shared data and the corresponding critical sections.
    </p>
    <p>
      This is why <font color="#0000ff"><i><b>designing locking</b></i></font>&#160;into your code <font color="#0000ff"><i><b>from the&#160;&#160;get-go</b></i></font>, and not as an after thought
    </p>
    <p>
      &#160;is of paramount importance.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399779061906" ID="ID_1089098658" MODIFIED="1399779216253">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Implement <font color="#0000ff"><i><b>lock ordering</b></i></font>. Nested locks must always be obtained in <font color="#0000ff"><i><b>the same order</b></i></font>. This prevents the deadly embrace deadlock. Document the lock ordering so others will follow it.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399779253448" ID="ID_565513088" MODIFIED="1399779312650">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The <font color="#0000ff"><i><b>order of unlock</b></i></font>&#160;does not matter with respect to deadlock, although it is common practice to release the locks in an order <font color="#0000ff"><i><b>inverse</b></i></font>&#160;to that in which they were acquired.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399780035561" ID="ID_1498252959" MODIFIED="1399780104384">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>Contention and Scalability</b></i></font>&#160;- Start simple and grow in complexity only as needed. Simplicity is key.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399279489632" ID="ID_667810782" MODIFIED="1399777945026" TEXT="The lock provides protection against concurrent access from another processor, whereas disabling interrupts provides protection against concurrent access from a possible interrupt handler."/>
</node>
<node CREATED="1399863589335" ID="ID_514438523" MODIFIED="1417767033669" TEXT="Atomicity vs. Ordering">
<node CREATED="1399863750399" ID="ID_659545168" MODIFIED="1399962741134" TEXT="Atomic Operations">
<node CREATED="1399863775846" ID="ID_852580041" MODIFIED="1399864312007">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Atomic operations provide instructions that execute atomically&#8212;<font color="#0000ff"><i><b>without interruption</b></i></font>.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399863957407" ID="ID_825463376" MODIFIED="1399864283213">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      atomic_t v = ATOMIC_INIT(0);&#160;&#160;/* define v and initialize it to zero */
    </p>
    <p>
      atomic_inc(&amp;v)&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Atomically add one to v. */
    </p>
    <p>
      atomic_dec(&amp;v)&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Atomically subtract one from v. */
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399874962165" ID="ID_1594894653" MODIFIED="1399875005574">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unsigned long word = 0;
    </p>
    <p>
      set_bit(0, &amp;word);&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* bit zero is now set (atomically) */
    </p>
    <p>
      clear_bit(0, &amp;word);&#160;&#160;&#160;&#160;/* bit one is now unset (atomically) */
    </p>
    <p>
      change_bit(0, &amp;word); /* bit zero is flipped; now it is set (atomically) */
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1313553755558" ID="ID_1124259971" MODIFIED="1399962742367" TEXT="Barriers">
<node CREATED="1399962230356" ID="ID_779585253" MODIFIED="1399962269471">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      It is also possible to instruct the compiler <font color="#0000ff"><i><b>not to reorder</b></i></font><i><b>&#160; </b></i>instructions&#160;around a given point.These instructions are called barriers.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1313553803570" ID="ID_786162832" MODIFIED="1313553924469" TEXT="mb()/rmb()/wmb()"/>
<node CREATED="1313553929661" ID="ID_1928322973" MODIFIED="1399962718622" TEXT="read_barrier_depends()/barrier()"/>
</node>
<node CREATED="1399863598260" ID="ID_1452066092" MODIFIED="1399864334830">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The atomic operations guarantee only atomicity. Ordering is enforced via barrier operations.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312693651083" ID="ID_771001210" MODIFIED="1399963232036">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>spinlock</b></i></font>
    </p>
    <p>
      (short, no sleep, interrupt context)
    </p>
  </body>
</html></richcontent>
<node CREATED="1399882867749" ID="ID_1294603505" MODIFIED="1399884828008">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      If a lock is used in an interrupt handler, you must also disable local interrupts (interrupt requests on the current processor) before obtaining the lock.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1399882998986" ID="ID_863261330" MODIFIED="1399883367108">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>DEFINE_SPINLOCK</b></i>(mr_lock);
    </p>
    <p>
      unsigned long flags;
    </p>
    <p>
      
    </p>
    <p>
      <i><b>spin_lock_irqsave</b></i>(&amp;mr_lock, flags);
    </p>
    <p>
      /* critical region ... */
    </p>
    <p>
      <i><b>spin_unlock_irqrestore</b></i>(&amp;mr_lock, flags);
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1312694066185" ID="ID_1463723135" MODIFIED="1399884384786" TEXT="Methods">
<node CREATED="1399884299998" FOLDED="true" ID="ID_205414473" MODIFIED="1417767143554" TEXT="spin_lock_init()">
<node CREATED="1399884447092" ID="ID_902758145" MODIFIED="1399884449435" TEXT="initialize a dynamically created spin lock (a spinlock_t that you do not have a direct reference to, just a pointer)."/>
</node>
<node CREATED="1312694076678" ID="ID_1206402908" MODIFIED="1313544314222" TEXT="spin_lock()/spin_unlock()"/>
<node CREATED="1312694144427" FOLDED="true" ID="ID_256904747" MODIFIED="1417767155726" TEXT="spin_lock_irq()/spin_unlock_irq()">
<node CREATED="1313545927769" ID="ID_1701566236" MODIFIED="1399884425653" TEXT="Disables local interrupts and acquires given lock"/>
</node>
<node CREATED="1312694154453" FOLDED="true" ID="ID_1565147892" MODIFIED="1417767158470" TEXT="spin_lock_bh()/spin_unlock_bh()">
<node CREATED="1313546092211" ID="ID_376102253" MODIFIED="1399884418441" TEXT="Disables all bottom halves and acquires given lock"/>
</node>
<node CREATED="1312694398791" ID="ID_1972092235" MODIFIED="1313544335595" TEXT="spin_trylock()/spin_trylock_bh()"/>
<node CREATED="1399884291287" ID="ID_891121078" MODIFIED="1399884299427" TEXT="spin_is_locked()"/>
</node>
<node CREATED="1312694058445" ID="ID_795613481" MODIFIED="1399961062771" TEXT="rwlock/seqlock/RCU/BKL/Preemption Disabling"/>
</node>
<node CREATED="1312693202397" ID="ID_59832097" MODIFIED="1399963244299">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>Semaphore/Mutex</b></i></font>
    </p>
    <p>
      (long, sleep, process context)
    </p>
  </body>
</html></richcontent>
<node CREATED="1399960489633" FOLDED="true" ID="ID_780238327" MODIFIED="1417767182918" TEXT="Semaphore">
<node CREATED="1313547549956" ID="ID_1312026970" MODIFIED="1399887351387" TEXT="it attempts to acquire the given semaphore. If the semaphore is unavailable, it places the calling process to sleep in the TASK_INTERRUPTIBLE state. ">
<icon BUILTIN="idea"/>
</node>
<node CREATED="1399886943391" ID="ID_818723729" MODIFIED="1399886976365">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* define and declare a semaphore, named mr_sem, with a count of one */
    </p>
    <p>
      static <i><b>DECLARE_MUTEX</b></i>(mr_sem);
    </p>
    <p>
      
    </p>
    <p>
      /* attempt to acquire the semaphore ... */
    </p>
    <p>
      if (<i><b>down_interruptible</b></i>(&amp;mr_sem)) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;/* signal received, semaphore not acquired ... */
    </p>
    <p>
      }
    </p>
    <p>
      
    </p>
    <p>
      /* critical region ... */
    </p>
    <p>
      
    </p>
    <p>
      /* release the given semaphore */
    </p>
    <p>
      <i><b>up</b></i>(&amp;mr_sem);
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399886992422" ID="ID_84878958" MODIFIED="1399886996876" TEXT="Methods">
<node CREATED="1399887075490" FOLDED="true" ID="ID_1540094010" MODIFIED="1399960733849" TEXT="init_MUTEX()">
<node CREATED="1399887080509" ID="ID_1708315659" MODIFIED="1399887094158" TEXT="Initializes the dynamically created semaphore with a count of one"/>
</node>
<node CREATED="1399887104828" FOLDED="true" ID="ID_1664883462" MODIFIED="1399887126583" TEXT="init_MUTEX_LOCKED()">
<node CREATED="1399887116820" ID="ID_1301965510" MODIFIED="1399887125384" TEXT="Initializes the dynamically created semaphore with a count of zero (so it is initially locked)"/>
</node>
<node CREATED="1399887245692" FOLDED="true" ID="ID_1756729021" MODIFIED="1399960729761" TEXT="down()">
<node CREATED="1399887259116" ID="ID_969928806" MODIFIED="1399887262329" TEXT="Tries to acquire the given semaphore and enter uninterruptible sleep if it is contended"/>
</node>
<node CREATED="1399887129011" FOLDED="true" ID="ID_1569598130" MODIFIED="1399960731360" TEXT="down_trylock()">
<node CREATED="1399887174682" ID="ID_282367581" MODIFIED="1399887185924" TEXT="Tries to acquire the given semaphore and immediately return nonzero if it is contended"/>
</node>
</node>
</node>
<node CREATED="1399960387846" ID="ID_654058928" MODIFIED="1399960994974">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>DEFINE_MUTEX</b></i>(mr_mutex);
    </p>
    <p>
      
    </p>
    <p>
      <i><b>mutex_lock</b></i>(&amp;mr_mutex);
    </p>
    <p>
      /* critical region ... */
    </p>
    <p>
      <i><b>mutex_unlock</b></i>(&amp;mr_mutex);
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1399960755086" ID="ID_72470446" MODIFIED="1399960760879" TEXT="Methods">
<node CREATED="1399960761673" FOLDED="true" ID="ID_269283442" MODIFIED="1417767252772" TEXT="mutex_init()">
<node CREATED="1399960796508" ID="ID_912507473" MODIFIED="1399960798469" TEXT="To dynamically initialize a mutex"/>
</node>
<node CREATED="1399960815331" FOLDED="true" ID="ID_19237467" MODIFIED="1417767254076" TEXT="mutex_trylock()">
<node CREATED="1399960865176" ID="ID_271760694" MODIFIED="1399960877090" TEXT="Tries to acquire the given mutex; returns one if successful and the lock is acquired and zero otherwise"/>
</node>
<node CREATED="1399960880255" FOLDED="true" ID="ID_832704228" MODIFIED="1399960901811" TEXT="mutex_is_locked()">
<node CREATED="1399960890930" ID="ID_1118435493" MODIFIED="1399960900978" TEXT="Returns one if the lock is locked and zero otherwise"/>
</node>
</node>
<node CREATED="1312693352465" ID="ID_752258416" MODIFIED="1399960511566" TEXT="rw_semaphore/completion"/>
</node>
</node>
<node CREATED="1394607772301" FOLDED="true" ID="ID_232140513" MODIFIED="1451096711397" POSITION="right" TEXT="Process Communication (IPC)">
<node CREATED="1394607940675" FOLDED="true" ID="ID_833366660" MODIFIED="1451095321442">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Pipes/NamedPipes(FIFOs)
    </p>
  </body>
</html></richcontent>
<node CREATED="1410333198083" ID="ID_1422765972" MODIFIED="1411897177530" TEXT="&#x7ba1;&#x9053;&#xff0c;&#x672c;&#x8d28;&#x5c31;&#x662f;&#x5171;&#x4eab;&#x7269;&#x7406;&#x7684;&#x201c;page&#x201d;&#xff0c;&#x9700;&#x8981;&#x7684;&#x65f6;&#x5019;&#x201c;&#x751f;&#x4ea7;&#x8005;&#x201d;&#x6216;&#x8005;&#x201c;&#x6d88;&#x8d39;&#x8005;&#x201d;&#x518d;&#x6620;&#x5c04;&#x540c;&#x4e00;&#x5757;&#x7269;&#x7406;&#x5730;&#x5740;&#xff08;page&#xff09;&#x5230;&#x81ea;&#x5df1;&#x7684;&#x865a;&#x62df;&#x5185;&#x5b58;&#x3002;"/>
<node CREATED="1394608278558" ID="ID_1674073083" MODIFIED="1451094238193">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff"><i>producer/consumer</i></font></b>&#160;interactions among processes.
    </p>
  </body>
</html></richcontent>
<node CREATED="1409038499715" ID="ID_1032467219" MODIFIED="1409045100988">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#31649;&#36947;&#65292;&#29992;&#26469;&#23454;&#29616;&#31649;&#36947;&#30340;&#25991;&#20214;&#26159;&quot;&#26080;&#24418;&quot;&#30340;&#65292;&#23427;&#24182;&#19981;&#20986;&#29616;&#22312;&#30913;&#30424;&#25110;&#20854;&#20182;&#30340;&#25991;&#20214;&#31995;&#32479;&#23384;&#20648;&#20171;&#36136;&#19978;&#65292;&#32780;&#21482;&#23384;&#22312;&#20110;&#20869;&#23384;&#31354;&#38388;&#65292;&#20854;&#20182;&#36827;&#31243;&#20063;&#26080;&#27861;&#8220;&#25171;&#24320;&#8221;&#25110;&#35775;&#38382;&#36825;&#20010;&#25991;&#20214;&#12290;&#25152;&#20197;&#36825;&#20010;&#25152;&#35859;&#25991;&#20214;&#23454;&#36136;&#19978;&#21482;&#26159;&#19968;&#20010;&#29992;&#20316;&#32531;&#23384;&#21306;&#30340;&#20869;&#23384;&#39029;&#38754;&#65292;&#21482;&#26159;&#25226;&#23427;&#32435;&#20837;&#20102;&#25991;&#20214;&#31995;&#32479;&#30340;&#26426;&#21046;&#65292;&#20511;&#29992;&#20102;&#25991;&#20214;&#31995;&#32479;&#30340;&#21508;&#31181;&#25968;&#25454;&#32467;&#26500;&#21644;&#25805;&#20316;&#21152;&#20197;&#31649;&#29702;&#32780;&#24050;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1409039814252" ID="ID_1651532288" MODIFIED="1409039822479">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21629;&#21517;&#31649;&#36947;&#65288;FIFO&#25991;&#20214;&#65289;&#65292;&#36825;&#37324;&#25152;&#35859;&#8220;&#26377;&#21517;&#8221;&#26159;&#25351;&#36825;&#26679;&#19968;&#20010;&#25991;&#20214;&#24212;&#35813;&#26377;&#20010;&#25991;&#20214;&#21517;&#65292;&#20351;&#24471;&#20219;&#20309;&#36827;&#31243;&#37117;&#21487;&#20197;&#36890;&#36807;&#25991;&#20214;&#21517;&#25110;&#36335;&#24452;&#21517;&#19982;&#36825;&#20010;&#25991;&#20214;&#25346;&#19978;&#38057;&#65307;&#25152;&#35859;&#8220;&#26377;&#24418;&#8221;&#26159;&#25351;&#25991;&#20214;&#30340;inode&#24212;&#35813;&#23384;&#22312;&#20110;&#30913;&#30424;&#25110;&#20854;&#20182;&#25991;&#20214;&#31995;&#32479;&#20171;&#36136;&#19978;&#65292;&#20351;&#24471;&#20219;&#20309;&#36827;&#31243;&#22312;&#20219;&#20309;&#26102;&#38388;&#65288;&#32780;&#19981;&#20165;&#20165;&#26159;&#22312;fork()&#26102;&#65289;&#37117;&#21487;&#20197;&#24314;&#31435;&#65288;&#25110;&#26029;&#24320;&#65289;&#19982;&#36825;&#20010;&#25991;&#20214;&#20043;&#38388;&#30340;&#32852;&#31995;&#12290;&#27880;&#24847;&#65292;&#21629;&#21517;&#31649;&#36947;&#65288;FIFO&#25991;&#20214;&#65289;&#30340;inode&#33410;&#28857;&#22312;&#30913;&#30424;&#19978;&#65292;&#20294;&#37027;&#21482;&#26159;&#19968;&#20010;&#33410;&#28857;&#65292;&#32780;&#25991;&#20214;&#30340;&#25968;&#25454;&#21017;&#21482;&#23384;&#22312;&#20110;&#20869;&#23384;&#32531;&#23384;&#39029;&#38754;&#20013;&#65292;&#19982;&#26222;&#36890;&#31649;&#36947;&#19968;&#26679;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1409217174894" ID="ID_948989221" MODIFIED="1417767455598">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#21311;&#21517;&#31649;&#36947;&#30001;pipe&#20989;&#25968;&#21019;&#24314;&#24182;&#25171;&#24320;&#12290;&#21629;&#21517;&#31649;&#36947;&#30001;mkfifo&#20989;&#25968;&#21019;&#24314;&#65292;&#25171;&#24320;&#29992;open&#12290;
    </p>
    <p>
      FIFO&#65288;&#21629;&#21517;&#31649;&#36947;&#65289;&#19982;pipe&#65288;&#21311;&#21517;&#31649;&#36947;&#65289;&#20043;&#38388;&#21807;&#19968;&#30340;&#21306;&#21035;&#22312;&#23427;&#20204;&#21019;&#24314;&#19982;&#25171;&#24320;&#30340;&#26041;&#24335;&#19981;&#21516;&#65292;&#36825;&#20123;&#24037;&#20316;&#23436;&#25104;&#20043;&#21518;&#65292;&#23427;&#20204;&#20855;&#26377;&#30456;&#21516;&#30340;&#35821;&#20041;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1394692670453" ID="ID_1377888996" MODIFIED="1409040182453" TEXT="compose">
<node CREATED="1394692688493" FOLDED="true" ID="ID_1129761090" MODIFIED="1451094363155">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      an <font color="#0000ff"><i><b>inode</b></i></font>&#160;object&#160;
    </p>
  </body>
</html></richcontent>
<node CREATED="1409131678864" ID="ID_986546591" MODIFIED="1409131733688" TEXT="fs/pipe.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1409131683432" ID="ID_1227160795" MODIFIED="1409131951227">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      SYSCALL_DEFINE1(pipe, int __user *, fildes)
    </p>
    <p>
      &#160;&#160;sys_pipe(int __user *fildes)
    </p>
    <p>
      &#160;&#160;&#160;&#160;__do_pipe_flags(fd, files, flags)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;create_pipe_files()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>get_pipe_inode</i></b>()
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;inode = new_inode_pseudo(pipe_mnt-&gt;mnt_sb) </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pipe = alloc_pipe_info() </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pipe = kzalloc(sizeof(struct pipe_inode_info), GFP_KERNEL); </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;pipe-&gt;bufs = kzalloc(sizeof(struct pipe_buffer) * PIPE_DEF_BUFFERS, GFP_KERNEL); </i>
    </p>
    <p>
      <i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;inode-&gt;i_pipe = pipe;</i>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;d_alloc_pseudo() // allocate a dentry
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>alloc_file</i></b>(...FMODE_WRITE...)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>alloc_file</i></b>(...FMODE_READ...)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1394692720555" ID="ID_1152752042" MODIFIED="1399962992766">
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
<node CREATED="1394613049810" FOLDED="true" ID="ID_1831364965" MODIFIED="1451094682640" TEXT="The pipefs special filesystem">
<node CREATED="1394691860955" ID="ID_1473907831" MODIFIED="1394691903602" TEXT="include/linux/pipe_fs_i.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1394691908513" ID="ID_1650822936" MODIFIED="1409040536865">
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
<node CREATED="1394691985343" ID="ID_476786956" MODIFIED="1409040348845">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff"><i>pipe_buffer</i></font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#6600ff"><i>struct page *page</i></font></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int offset, len;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct <b><font color="#6600ff"><i>pipe_buf_operations</i></font></b>&#160; *ops;
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
</node>
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
</node>
<node CREATED="1409303258109" FOLDED="true" ID="ID_447036192" MODIFIED="1451095086386" TEXT="Signal">
<node CREATED="1409303271084" ID="ID_191823609" MODIFIED="1411897163004">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#20449;&#21495;&#65292;&#26412;&#36136;&#19978;&#23601;&#26159;&#8220;&#21457;&#36865;&#32773;&#8221;&#25226;&#24453;&#22788;&#29702;&#30340;&#35831;&#27714;&#30452;&#25509;&#25346;&#25509;&#21040;&#8220;&#25509;&#25910;&#32773;&#8221;&#30340;&#38431;&#21015;&#19978;&#12290;&#19968;&#33324;&#26469;&#35828;&#65292;signal&#26159;&#23545;&#8220;&#20013;&#26029;&#8221;&#36825;&#31181;&#27010;&#24565;&#22312;&#36719;&#20214;&#23618;&#27425;&#19978;&#30340;&#27169;&#25311;&#65288;&#25152;&#20197;&#20134;&#31216;&#8220;&#36719;&#20013;&#26029;&#8221;&#65289;&#65292;&#20854;&#20013;&#20449;&#21495;&#30340;&#21457;&#36865;&#32773;&#30456;&#24403;&#20110;&#20013;&#26029;&#28304;&#65292;&#32780;&#25509;&#25910;&#32773;&#30456;&#24403;&#20110;&#22788;&#29702;&#22120;&#65292;&#25152;&#20197;&#24517;&#39035;&#26159;&#19968;&#20010;&#36827;&#31243;&#12290;&#20449;&#21495;&#21644;&#20013;&#26029;&#19968;&#26679;&#65292;&#37117;&#26159;&#8220;&#24322;&#27493;&#8221;&#30340;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1409304818475" FOLDED="true" ID="ID_1253989942" MODIFIED="1451094694353" TEXT="data structure">
<node CREATED="1365580728182" ID="ID_943912073" MODIFIED="1409304524041">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      include/linux/sched.h
    </p>
  </body>
</html></richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1365579764329" ID="ID_544839362" MODIFIED="1398847367261">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct signal_struct {
    </p>
    <p>
      &#160;&#160;&#160;&#160;atomic_t sigcnt;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Usage counter of the signal descriptor */
    </p>
    <p>
      &#160;&#160;&#160;&#160;atomic_t live;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Number of live processes in the thread group */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int nr_threads;
    </p>
    <p>
      &#160;&#160;&#160;&#160;wait_queue_head_t wait_chldexit;&#160;&#160;&#160;/* The processes sleeping in a wait4() system call */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct task_struct *curr_target;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* last process in the thread group that received a signal */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct sigpending shared_pending; /* Data structure storing the shared pending signals */
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
<node CREATED="1365580739916" FOLDED="true" ID="ID_462838517" MODIFIED="1451094693300">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct sighand_struct {
    </p>
    <p>
      &#160;&#160;&#160;&#160;atomic_t count;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Usage counter of the signal handler descriptor */
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#0000ff"><i>struct k_sigaction action[_NSIG]</i></font></b>;&#160;&#160;&#160;&#160;/* The actions to be performed upon delivering the signals */
    </p>
    <p>
      &#160;&#160;&#160;&#160;spinlock_t siglock;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* For signal descriptor and the signal handler descriptor */
    </p>
    <p>
      &#160;&#160;&#160;&#160;wait_queue_head_t&#160;&#160;&#160;signalfd_wqh;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1366168611255" ID="ID_1270956179" MODIFIED="1409304073945" TEXT="include/linux/signal.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1366168658355" ID="ID_1469689717" MODIFIED="1409304502421">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /*&#160;&#160;Type of a signal handler.&#160;&#160;*/
    </p>
    <p>
      typedef void (*__sighandler_t)(int);
    </p>
    <p>
      
    </p>
    <p>
      struct sigaction {&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int&#160;&#160;&#160;&#160;sa_flags;
    </p>
    <p>
      &#160;&#160;&#160;&#160;__sighandler_t&#160;&#160;<b><font color="#0000ff"><i>sa_handler</i></font></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;sigset_t&#160;&#160;&#160;&#160;sa_mask;&#160;&#160;&#160;&#160;/* mask last for extensibility */
    </p>
    <p>
      };
    </p>
    <p>
      
    </p>
    <p>
      struct k_sigaction {
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct sigaction sa;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1409303791185" FOLDED="true" ID="ID_275050707" MODIFIED="1451094441200">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct sigpending {
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <b><font color="#000000"><i>list</i></font></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;sigset_t signal;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1366168611255" ID="ID_1145813047" MODIFIED="1409304194557" TEXT="include/linux/signal.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1409303924982" ID="ID_424028508" MODIFIED="1409304724634">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct sigqueue {
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <b><font color="#000000"><i>list</i></font></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;int flags;
    </p>
    <p>
      &#160;&#160;&#160;&#160;siginfo_t info;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct user_struct *user;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1366168611255" ID="ID_585150410" MODIFIED="1409304565926" TEXT="include/uapi/asm-generic/siginfo.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1409304184560" ID="ID_222440537" MODIFIED="1409304326417">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      typedef struct siginfo {
    </p>
    <p>
      &#160;&#160;&#160;&#160;int si_signo;
    </p>
    <p>
      &#160;&#160;&#160;&#160;int si_errno;
    </p>
    <p>
      &#160;&#160;&#160;&#160;int si_code;&#160;&#160;// signal source
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;union {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;int _pad[SI_PAD_SIZE];
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* kill() */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;struct {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;__kernel_pid_t _pid; /* sender's pid */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;__ARCH_SI_UID_T _uid; /* sender's uid */
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;} _kill;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;} _sifields;
    </p>
    <p>
      } __ARCH_SI_ATTRIBUTES siginfo_t;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1409304872194" FOLDED="true" ID="ID_1556239518" MODIFIED="1451094727442" TEXT="operation">
<node CREATED="1409304875825" FOLDED="true" ID="ID_1277062803" MODIFIED="1451094725916" TEXT="setup signal action">
<node CREATED="1365580728182" ID="ID_1475758844" MODIFIED="1409304929922">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      kernel/signal.c
    </p>
  </body>
</html></richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1409304933688" ID="ID_405456301" MODIFIED="1409305054337">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sys_signal()
    </p>
    <p>
      &#160;&#160;do_sigaction()
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1409304877946" FOLDED="true" ID="ID_653617886" MODIFIED="1451094709365" TEXT="send signal">
<node CREATED="1365580728182" ID="ID_465583667" MODIFIED="1409304929922">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      kernel/signal.c
    </p>
  </body>
</html></richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1409305068334" ID="ID_1868114363" MODIFIED="1409305170558">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      sys_kill()
    </p>
    <p>
      &#160;&#160;kill_something_info()
    </p>
    <p>
      &#160;&#160;&#160;&#160;kill_proc_info()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;send_sig_info()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;deliver_signal()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;send_signal()
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1409304879914" FOLDED="true" ID="ID_25058641" MODIFIED="1451094723490" TEXT="receive signal">
<node CREATED="1365580728182" ID="ID_1825578398" MODIFIED="1409304929922">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      kernel/signal.c
    </p>
  </body>
</html></richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1409305235547" ID="ID_840637216" MODIFIED="1409305309316">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      ret_with_reschedule()
    </p>
    <p>
      &#160;&#160;do_signal()
    </p>
    <p>
      &#160;&#160;&#160;&#160;handle_signal()
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1394608019438" FOLDED="true" ID="ID_1660392140" MODIFIED="1451095280009" TEXT="Messages">
<node CREATED="1411896237332" FOLDED="true" ID="ID_1843314913" MODIFIED="1451094975780" TEXT="overview">
<node CREATED="1411119119971" ID="ID_317725713" MODIFIED="1411896984308">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#28040;&#24687;&#65292;&#26412;&#36136;&#19978;&#23601;&#26159;&#27599;&#20010;ID&#23545;&#24212;&#19968;&#20010;&#8220;&#28040;&#24687;&#38431;&#21015;&#8221;&#65292;&#37324;&#38754;&#30340;&#28040;&#24687;&#37319;&#29992;&#38142;&#34920;&#30340;&#24418;&#24335;&#23384;&#25918;&#12290;
    </p>
    <p>
      &#21457;&#36865;&#32773;&#65292;&#21521;&#36825;&#20010;&#28040;&#24687;&#38431;&#21015;&#37324;&#38754;&#25554;&#20837;&#28040;&#24687;&#12290;&#25509;&#25910;&#32773;&#65292;&#20174;&#36825;&#20010;&#28040;&#24687;&#38431;&#21015;&#37324;&#38754;&#21462;&#36208;&#28040;&#24687;&#12290;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1394784671796" ID="ID_742765223" MODIFIED="1451094816162" TEXT="compose">
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
<node CREATED="1395043470647" ID="ID_1299941336" MODIFIED="1411895902711">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/ipc/ipc-message-queue.jpg" />
  </body>
</html></richcontent>
</node>
<node CREATED="1411026660064" ID="ID_34983018" MODIFIED="1411026690681">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/ipc/ipc-message-queue2.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1411118423286" FOLDED="true" ID="ID_1502062810" MODIFIED="1451094969401" TEXT="data structure">
<node CREATED="1395042319785" ID="ID_1164296285" MODIFIED="1395042338581" TEXT="include/linux/msg.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1395042341185" ID="ID_746765244" MODIFIED="1411119033750">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* one msq_queue structure for each present queue on the system */
    </p>
    <p>
      struct <b><font color="#660066"><i>msg_queue</i></font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#6600ff"><i>struct kern_ipc_perm q_perm</i></font></b>;
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
      &#160;&#160;&#160;&#160;struct list_head <b><font color="#0000ff"><i>q_messages</i></font></b>;
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
<node CREATED="1411119076865" ID="ID_1321898770" MODIFIED="1451094970718" TEXT="operation">
<node CREATED="1411119080670" ID="ID_1869855198" MODIFIED="1411119106788" TEXT="msg send"/>
<node CREATED="1411119093120" ID="ID_1194337764" MODIFIED="1411119101370" TEXT="msg receive"/>
<node CREATED="1411119108640" ID="ID_1371475236" MODIFIED="1411119115403" TEXT="msg ctrl"/>
</node>
</node>
<node CREATED="1394608023737" FOLDED="true" ID="ID_230625253" MODIFIED="1451095469783" TEXT="Shared memory regions">
<icon BUILTIN="button_ok"/>
<node CREATED="1411896052711" FOLDED="true" ID="ID_1174668635" MODIFIED="1451095468647" TEXT="overview">
<node CREATED="1411896363569" ID="ID_1240329312" MODIFIED="1411896647271" TEXT="&#x5171;&#x4eab;&#x5185;&#x5b58;&#xff0c;&#x672c;&#x8d28;&#x4e0a;&#x662f;&#x6bcf;&#x4e2a;&#x8fdb;&#x7a0b;&#xff0c;&#x901a;&#x8fc7;&#x4e00;&#x4e2a;&#x952e;&#x503c;&#xff0c;&#x5c06;&#x201c;&#x5171;&#x4eab;&#x5185;&#x5b58;&#x533a;&#x201d;&#x6620;&#x5c04;&#x5230;&#x5404;&#x81ea;&#x7684;&#x865a;&#x62df;&#x7a7a;&#x95f4;&#x3002;"/>
<node CREATED="1395047974244" ID="ID_1761056915" MODIFIED="1411896675274">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/ipc/ipc-shared-memory.jpg" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1411896041247" FOLDED="true" ID="ID_1648456789" MODIFIED="1451095463211" TEXT="data structure">
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
<node CREATED="1411896047495" FOLDED="true" ID="ID_1345048409" MODIFIED="1451095467533" TEXT="operation">
<node CREATED="1411896324737" ID="ID_1263935069" MODIFIED="1411896337271" TEXT="shm get"/>
<node CREATED="1411896337578" ID="ID_721405858" MODIFIED="1411896344575" TEXT="shm attach"/>
<node CREATED="1411896345002" ID="ID_972185020" MODIFIED="1411896350094" TEXT="shm detach"/>
<node CREATED="1411896350785" ID="ID_471388277" MODIFIED="1411896357694" TEXT="shm ctrl"/>
</node>
</node>
<node CREATED="1394607980850" FOLDED="true" ID="ID_1023591222" MODIFIED="1451095513551" TEXT="Semaphores">
<node CREATED="1411896893014" FOLDED="true" ID="ID_919488769" MODIFIED="1451095510207" TEXT="overview">
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
<node CREATED="1411896903094" ID="ID_1205245231" MODIFIED="1411896906067" TEXT="data structure"/>
<node CREATED="1411896906461" ID="ID_758467113" MODIFIED="1411896908562" TEXT="operation"/>
</node>
<node CREATED="1394608032169" ID="ID_1896979205" MODIFIED="1451094985063" TEXT="Sockets">
<icon BUILTIN="button_ok"/>
</node>
</node>
</node>
</map>
