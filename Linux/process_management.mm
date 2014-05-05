<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1314436073487" ID="ID_1195057024" MODIFIED="1395371901167" TEXT="Process Management">
<node CREATED="1393233067733" FOLDED="true" ID="ID_266019102" MODIFIED="1399282089432" POSITION="right" TEXT="Process Descriptor">
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
<node CREATED="1358849568031" FOLDED="true" ID="ID_1241600752" MODIFIED="1399193348923">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/process/thread_stack.png" />
  </body>
</html></richcontent>
<node CREATED="1398826906494" ID="ID_563990978" MODIFIED="1398831377217">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* how to get the current stack pointer from C */
    </p>
    <p>
      register unsigned long current_stack_pointer asm(&quot;<font color="#0000ff"><i><b>esp</b></i></font>&quot;) __used;
    </p>
    <p>
      
    </p>
    <p>
      /* how to get the thread information struct from C */
    </p>
    <p>
      static inline struct thread_info *<font color="#0000ff"><i><b>current_thread_info</b></i></font>(void)
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
      #define <font color="#ff0000"><i><b>current</b></i></font>&#160;get_current()
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
<node CREATED="1315919137906" ID="ID_650907153" MODIFIED="1398828057770">
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
<node CREATED="1315906710224" ID="ID_1707237907" MODIFIED="1398836317928">
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
<node CREATED="1315914126372" ID="ID_1983933720" MODIFIED="1398833108602">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      void * <font color="#0000ff"><i><b>stack</b></i></font>;
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_650907153" ENDARROW="Default" ENDINCLINATION="297;0;" ID="Arrow_ID_693488617" STARTARROW="None" STARTINCLINATION="297;0;"/>
</node>
<node CREATED="1398838631337" FOLDED="true" ID="ID_691973270" MODIFIED="1399193389674">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      volatile long state;
    </p>
    <p>
      int exit_state;
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1398838675735" ID="ID_326758892" MODIFIED="1398838698556">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /*
    </p>
    <p>
      &#160;* Task state bitmask. NOTE! These bits are also
    </p>
    <p>
      &#160;* encoded in fs/proc/array.c: get_task_state().
    </p>
    <p>
      &#160;*
    </p>
    <p>
      &#160;* We have two separate sets of flags: task-&gt;state
    </p>
    <p>
      &#160;* is about runnability, while task-&gt;exit_state are
    </p>
    <p>
      &#160;* about the task exiting. Confusing, but this way
    </p>
    <p>
      &#160;* modifying one set can't modify the other one by
    </p>
    <p>
      &#160;* mistake.
    </p>
    <p>
      &#160;*/
    </p>
    <p>
      #define TASK_RUNNING&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;0
    </p>
    <p>
      #define TASK_INTERRUPTIBLE&#160;&#160;1
    </p>
    <p>
      #define TASK_UNINTERRUPTIBLE&#160;&#160;&#160;&#160;2
    </p>
    <p>
      #define __TASK_STOPPED&#160;&#160;&#160;&#160;&#160;&#160;4
    </p>
    <p>
      #define __TASK_TRACED&#160;&#160;&#160;&#160;&#160;&#160;&#160;8
    </p>
    <p>
      /* in tsk-&gt;exit_state */
    </p>
    <p>
      #define EXIT_ZOMBIE&#160;&#160;&#160;&#160;&#160;16
    </p>
    <p>
      #define EXIT_DEAD&#160;&#160;&#160;&#160;&#160;&#160;&#160;32
    </p>
    <p>
      /* in tsk-&gt;state again */
    </p>
    <p>
      #define TASK_DEAD&#160;&#160;&#160;&#160;&#160;&#160;&#160;64&#160;
    </p>
    <p>
      #define TASK_WAKEKILL&#160;&#160;&#160;&#160;&#160;&#160;&#160;128
    </p>
    <p>
      #define TASK_WAKING&#160;&#160;&#160;&#160;&#160;256
    </p>
    <p>
      #define TASK_PARKED&#160;&#160;&#160;&#160;&#160;512
    </p>
    <p>
      #define TASK_STATE_MAX&#160;&#160;&#160;&#160;&#160;&#160;1024
    </p>
    <p>
      &#160;&#160;&#160;
    </p>
    <p>
      #define TASK_STATE_TO_CHAR_STR &quot;RSDTtZXxKWP&quot;
    </p>
  </body>
</html>
</richcontent>
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
<node CREATED="1316843584303" ID="ID_1772179729" MODIFIED="1398839739651">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct list_head tasks;
    </p>
  </body>
</html>
</richcontent>
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
<node CREATED="1316843916945" ID="ID_27378462" MODIFIED="1398836033095">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>init_task</b>&#160;- Initial task structure
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1398835951861" ID="ID_712481122" MODIFIED="1398835977845" TEXT="arch/x86/kernel/init_task.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1398835996859" ID="ID_334993240" MODIFIED="1398836000187" TEXT="struct task_struct init_task = INIT_TASK(init_task);"/>
</node>
<node CREATED="1316917476163" ID="ID_686524080" MODIFIED="1398836021528">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>for_each_process(p)</b>&#160;- scans the whole process list
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1398838166869" FOLDED="true" ID="ID_1751707897" MODIFIED="1398848160104">
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
<node CREATED="1316920156962" ID="ID_505848288" MODIFIED="1398838272680" TEXT="&quot;real_parent&quot; - Points to the process descriptor of the process that created P or to the descriptor of process 1 (init) if the parent process no longer exists."/>
<node CREATED="1316920269649" ID="ID_1301081112" MODIFIED="1398838289493" TEXT="&quot;parent&quot; - Points to the current parent of P "/>
</node>
<node CREATED="1316928554073" FOLDED="true" ID="ID_62137992" MODIFIED="1399193408566">
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
    <p>
      struct pid_link pids[PIDTYPE_MAX];
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
<node CREATED="1365579658729" FOLDED="true" ID="ID_676626903" MODIFIED="1399193415140">
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
  </body>
</html>
</richcontent>
<node CREATED="1365580728182" ID="ID_943912073" MODIFIED="1393232241842" TEXT="include/linux/sched.h">
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
</html>
</richcontent>
</node>
<node CREATED="1365580739916" ID="ID_462838517" MODIFIED="1398847523537">
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
      &#160;&#160;&#160;&#160;struct k_sigaction action[_NSIG];&#160;&#160;&#160;&#160;/* The actions to be performed upon delivering the signals */
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
</html>
</richcontent>
<node CREATED="1366168611255" ID="ID_682990093" MODIFIED="1398847580252" TEXT="include/linux/signal.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1366168658355" ID="ID_1469689717" MODIFIED="1398847694395">
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
      &#160;&#160;&#160;&#160;__sighandler_t&#160;&#160;sa_handler;
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
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1315917811701" FOLDED="true" ID="ID_749542623" MODIFIED="1399193422339" TEXT="struct thread_struct thread;">
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
<node CREATED="1315917802230" ID="ID_533218755" MODIFIED="1398848264425">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unsigned int flags;
    </p>
    <p>
      atomic_t usage;
    </p>
    <p>
      struct mm_struct *mm, *active_mm;
    </p>
    <p>
      ...
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1398840731946" FOLDED="true" ID="ID_1719288201" MODIFIED="1399282091337" POSITION="right" TEXT="Process Creation/Execution/Termination">
<node CREATED="1398840513254" ID="ID_509227697" MODIFIED="1398842872065">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Process creation&#160;in Unix is unique. Most operating systems implement a spawn&#160;mechanism to<i><b>&#160;<font color="#0000ff">create&#160;a new process in a new address space, read in an executable, and begin executing it</font></b></i><font color="#0000ff">.</font>&#160;Unix takes the unusual approach of separating these steps into two distinct functions: fork()and exec().
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1398840885045" FOLDED="true" ID="ID_1909904793" MODIFIED="1399210038160">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The first, <font color="#ff0000"><i><b>fork()</b></i></font>, creates a child process that is a copy of the current task. It <font color="#0000ff"><i><b>differs</b></i></font>&#160;from the parent only in its <i><b>PID</b></i>&#160;(which is unique), its <i><b>PPID</b></i>&#160;(parent&#8217;s PID, which is set to the original process), and certain <i><b>resources and statistics</b></i>, such as pending signals, which are not inherited.
    </p>
    <p>
      In Linux, fork()<font color="#0000ff">&#160;</font>is implemented through the use of <font color="#0000ff"><i><b>copy-on-write</b></i></font>&#160; pages. Copy-on-write (or COW) is a technique to delay or altogether <i><b>prevent copying of the data</b></i>. Rather than duplicate the process address space, the parent and the child can share a single copy.
    </p>
    <p>
      The only <font color="#0000ff"><i><b>overhead</b></i></font>&#160;incurred by fork() is the duplication of the parent&#8217;s <i><b>page tables</b></i>&#160;and the creation of a unique <i><b>process descriptor</b></i>&#160;for the child.
    </p>
  </body>
</html>
</richcontent>
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
<node CREATED="1398841090698" FOLDED="true" ID="ID_1452378122" MODIFIED="1399192649903">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The second function,<font color="#ff0000"><i><b>exec()</b></i></font>, loads a new executable into the <i><b>address space</b></i>&#160;and begins executing it. In another world, it replace the execution context of a process with a new context described by an executable file.
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1395124649748" ID="ID_1916206700" MODIFIED="1398841580141" TEXT="executable file">
<node CREATED="1395124664348" ID="ID_478705659" MODIFIED="1395124687357" TEXT="object code"/>
<node CREATED="1395124688411" ID="ID_1804443584" MODIFIED="1395124699036" TEXT="data"/>
</node>
<node CREATED="1395132767300" ID="ID_855536174" MODIFIED="1398841582239" TEXT="libraries">
<node CREATED="1395132802739" ID="ID_980444735" MODIFIED="1395132819262" TEXT="static libraries"/>
<node CREATED="1395132776460" ID="ID_487934157" MODIFIED="1395132801883" TEXT="shared libraries"/>
</node>
<node CREATED="1395133028431" ID="ID_666568877" MODIFIED="1398841583721" TEXT="Program Segments">
<node CREATED="1395133060646" FOLDED="true" ID="ID_1837976359" MODIFIED="1398841879158" TEXT="Text segment(ELF)">
<node CREATED="1395133081238" ID="ID_392463521" MODIFIED="1395133089646" TEXT="Includes the program&apos;s executable code."/>
</node>
<node CREATED="1395133091549" FOLDED="true" ID="ID_30950379" MODIFIED="1398841868755" TEXT="Initialized data segment">
<node CREATED="1395133112221" ID="ID_409161118" MODIFIED="1395133120872" TEXT="Contains the initialized datathat is, the static variables and the global variables whose initial values are stored in the executable file (because the program must know their values at startup)."/>
</node>
<node CREATED="1395133123093" FOLDED="true" ID="ID_387757498" MODIFIED="1398841866478" TEXT="Uninitialized data segment (bss)">
<node CREATED="1395133134517" ID="ID_715672963" MODIFIED="1395133144623" TEXT="Contains the uninitialized datathat is, all global variables whose initial values are not stored in the executable file (because the program sets the values before referencing them); it is historically called a bss segment."/>
</node>
<node CREATED="1395133152732" FOLDED="true" ID="ID_677290223" MODIFIED="1398841878164" TEXT="Stack segment">
<node CREATED="1395133164428" ID="ID_928905832" MODIFIED="1395133166852" TEXT="Contains the program stack, which includes the return addresses, parameters, and local variables of the functions being executed."/>
</node>
</node>
</node>
<node CREATED="1398844464389" FOLDED="true" ID="ID_388121085" MODIFIED="1399192647046">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      When a process terminates, the kernel <i><b>releases the resources</b></i>&#160; owned by the process and <i><b>notifies the child&#8217;s parent</b></i>&#160;of its demise. Processes ultimately die forcefully or intentionally via <font color="#ff0000"><i><b>exit()</b></i></font>, and parents glean information about their deceased children via the <font color="#ff0000"><i><b>wait()</b></i></font>&#160; family of system calls.
    </p>
  </body>
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1398836995454" FOLDED="true" ID="ID_1104515770" MODIFIED="1399282170736" POSITION="right" TEXT="Process Contexts">
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
<node CREATED="1398837047848" FOLDED="true" ID="ID_153365591" MODIFIED="1399282099788">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
<node CREATED="1398837072884" FOLDED="true" ID="ID_1220407681" MODIFIED="1399282103568">
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
<node CREATED="1398845651802" ID="ID_57271949" MODIFIED="1398846022052">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The significant difference between <i><b>kernel threads</b></i>&#160;and normal processes is that kernel threads do not have an address space. (Their mm pointer, which points at their address space, is NULL.) For example, when idle, it turns out that the kernel is executing an <i><b>idle process</b></i>&#160; in <i><b>process context</b></i>&#160;in the <i><b>kernel</b></i>.
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1399183800754" FOLDED="true" ID="ID_1745803509" MODIFIED="1399282175521" POSITION="right" TEXT="Process Scheduling">
<node CREATED="1399183810902" ID="ID_1735785535" MODIFIED="1399183830546" TEXT="policy">
<node CREATED="1399183831062" FOLDED="true" ID="ID_135059142" MODIFIED="1399196819273" TEXT="process priority">
<node CREATED="1399184102899" ID="ID_602928757" MODIFIED="1399184105962" TEXT="higher priority run before those with a lower priority, whereas processes with the same priority are scheduled round-robin (one after the next, repeating)"/>
<node CREATED="1399184750088" ID="ID_1570252583" MODIFIED="1399195944140">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>nice value</b></i></font>, a number from &#8211;20 to +19 with a default of 0. Larger nice values correspond to a lower priority&#8212;you are being &#8220;nice&#8221; to the other processes on the system. By default, this means the &#8211;20 to +19 nice range maps directly onto the priority space from 100 to 139.
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-1"/>
</node>
<node CREATED="1399184811160" ID="ID_836725979" MODIFIED="1399184835233">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff"><i><b>real-time priority</b></i></font>, the values are configurable, but by default range from 0 to 99, inclusive. Opposite from nice values, higher real-time priority values correspond to a greater priority.
    </p>
  </body>
</html>
</richcontent>
<icon BUILTIN="full-2"/>
</node>
</node>
<node CREATED="1399184165108" FOLDED="true" ID="ID_153398619" MODIFIED="1399196830641" TEXT="timeslice">
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
</html>
</richcontent>
</node>
<node CREATED="1399196188846" ID="ID_1207348297" MODIFIED="1399196256135" TEXT="Normal Scheduling Policies">
<node CREATED="1399189020892" ID="ID_951127327" MODIFIED="1399189295905" TEXT="kernel/sched/fair.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1399196223565" ID="ID_1633010073" MODIFIED="1399196800391" TEXT="SCHED_NORMAL - Completely Fair Scheduler (CFS)"/>
</node>
<node CREATED="1399195098576" ID="ID_1767980307" MODIFIED="1399196213472" TEXT="Real-Time Scheduling Policies">
<node CREATED="1399195026459" ID="ID_1824177182" MODIFIED="1399195550017" TEXT="kernel/sched/rt.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1399195431461" ID="ID_1136354332" MODIFIED="1399196160630" TEXT="SCHED_FIFO - a simple first-in, first-out scheduling algorithm without timeslices."/>
<node CREATED="1399195449116" ID="ID_1253013825" MODIFIED="1399196174491" TEXT="SCHED_RR - each process can run only until it exhausts a predetermined timeslice."/>
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
</html>
</richcontent>
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
<node CREATED="1358477579981" FOLDED="true" ID="ID_188150470" MODIFIED="1399282118267" POSITION="right" TEXT="System Call">
<node CREATED="1358477815733" FOLDED="true" ID="ID_538922577" MODIFIED="1399258577435">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>System Calls</b>&#160;is an explicit request to the kernel made via a software interrupt
    </p>
  </body>
</html></richcontent>
<node CREATED="1358477753900" ID="ID_225623548" MODIFIED="1399258341561">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>POSIX APIs</b>&#160;is a function definition that specifies how to obtain a given service.
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1399258230564" ID="ID_1791705159" MODIFIED="1399258306937">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>C library</b>&#160;implements the main API on Unix systems, including the standard C library and the system call interface.
    </p>
  </body>
</html>
</richcontent>
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
<node CREATED="1358755526774" FOLDED="true" ID="ID_1499798077" MODIFIED="1395844978573" TEXT="int $0x80">
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
<node CREATED="1358755538689" FOLDED="true" ID="ID_6960833" MODIFIED="1395844980081" TEXT="sysenter">
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
<node CREATED="1316766906971" ID="ID_645308379" MODIFIED="1399277542559" POSITION="right" TEXT="Interrupts and Exceptions">
<node CREATED="1316769068729" ID="ID_1349911850" MODIFIED="1399282234467" TEXT="Definition">
<node CREATED="1316766926536" FOLDED="true" ID="ID_1498465646" MODIFIED="1399281904673" TEXT="Interrupts (Asynchronous, generated by hardware)">
<node CREATED="1316767054709" ID="ID_1599617338" MODIFIED="1316767078512" TEXT="Maskable Interrupts"/>
<node CREATED="1316767079731" ID="ID_175788121" MODIFIED="1316767126790" TEXT="Nonmaskable Interrupts (NMI)"/>
</node>
<node CREATED="1316766930802" FOLDED="true" ID="ID_651855405" MODIFIED="1399281901898" TEXT="Exceptions (Synchronous, generated by the processor)">
<node CREATED="1316767173412" ID="ID_1388644566" MODIFIED="1399258490970" TEXT="Processor-detected Exception">
<node CREATED="1316767223778" ID="ID_1182658758" MODIFIED="1316767227854" TEXT="Faults"/>
<node CREATED="1316767228862" ID="ID_286073273" MODIFIED="1316767232877" TEXT="Traps"/>
<node CREATED="1316767233772" ID="ID_828699720" MODIFIED="1316767236317" TEXT="Aborts"/>
</node>
<node CREATED="1316767192526" ID="ID_834789161" MODIFIED="1316767208364" TEXT="Programmed Exception"/>
</node>
</node>
<node CREATED="1399281369123" FOLDED="true" ID="ID_115032626" MODIFIED="1399282247158" TEXT="Data Structure">
<node CREATED="1316767346119" FOLDED="true" ID="ID_74815681" MODIFIED="1399282032474">
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
</html>
</richcontent>
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
</html>
</richcontent>
</node>
</node>
</node>
<node CREATED="1399269281861" FOLDED="true" ID="ID_934874925" MODIFIED="1399282212963" TEXT="Registering an Interrupt Handler">
<node CREATED="1399269616811" ID="ID_614596620" MODIFIED="1399269622852" TEXT="kernel/irq/manage.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1312768426413" ID="ID_697921072" MODIFIED="1399269564946" TEXT="request_irq(irq, handler, flags, dev_name, dev_id)"/>
<node CREATED="1399269297956" ID="ID_1219313595" MODIFIED="1399269575663" TEXT="free_irq(irq, dev_id)"/>
</node>
<node CREATED="1399277872423" FOLDED="true" ID="ID_341071095" MODIFIED="1399282221674" TEXT="Implementing Interrupt Handlers">
<node CREATED="1399278445305" ID="ID_1825523158" MODIFIED="1399278448918" TEXT="The path that an interrupt takes from hardware and on through the kernel."/>
<node CREATED="1399277900300" ID="ID_800520903" MODIFIED="1399277917256">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/interrupt/interrupt-path.png" />
  </body>
</html>
</richcontent>
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
<node CREATED="1399279539676" FOLDED="true" ID="ID_409908878" MODIFIED="1399282256364" TEXT="Interrupt Control">
<node CREATED="1312768486781" ID="ID_324711695" MODIFIED="1399259662284" TEXT="Single Interrupt">
<node CREATED="1399269616811" ID="ID_1201693733" MODIFIED="1399279930898" TEXT="kernel/irq/manage.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1312768587640" ID="ID_1318501354" MODIFIED="1399279915788" TEXT="enable_irq(irq)"/>
<node CREATED="1399279819427" ID="ID_742629331" MODIFIED="1399279956805" TEXT="disable_irq(irq)/disable_irq_nosync(irq)"/>
</node>
<node CREATED="1312768614741" ID="ID_1921753393" MODIFIED="1399259664616" TEXT="All Interrupts">
<node CREATED="1399280082101" ID="ID_153406523" MODIFIED="1399280086612" TEXT="unsigned long flags;"/>
<node CREATED="1312768643397" ID="ID_1028915712" MODIFIED="1399280253296" TEXT="local_irq_save(flags)">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1399280089517" ID="ID_1611468258" MODIFIED="1399280256759" TEXT="local_irq_restore(flags)">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1399280952340" ID="ID_1179258026" MODIFIED="1399280953652" TEXT="Status of the Interrupt System">
<node CREATED="1399280956488" ID="ID_995402415" MODIFIED="1399280975296" TEXT="in_interrupt()">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1399280976999" ID="ID_1381654401" MODIFIED="1399281033915" TEXT="check the kernel&apos;s current context">
<icon BUILTIN="idea"/>
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
</html>
</richcontent>
</node>
<node CREATED="1399280157720" ID="ID_1214356135" MODIFIED="1399280193126" TEXT="/proc/irq/&lt;pid&gt;/*"/>
<node CREATED="1399280158616" ID="ID_1296974895" MODIFIED="1399280174063" TEXT="/proc/stat"/>
</node>
</node>
<node CREATED="1312768870057" ID="ID_1414900085" MODIFIED="1395844892974" TEXT="Bottom Halves">
<node CREATED="1312768891469" ID="ID_1724781127" MODIFIED="1313486687059" TEXT="softirq (no sleep, interrupt context)"/>
<node CREATED="1312768901317" FOLDED="true" ID="ID_1118359740" MODIFIED="1399282268454">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      tasklet
    </p>
    <p>
      (no sleep, interrupt context)
    </p>
  </body>
</html></richcontent>
<node CREATED="1312769252277" FOLDED="true" ID="ID_1088231767" MODIFIED="1395826563397" TEXT="struct tasklet_struct">
<node CREATED="1312768938044" FOLDED="true" ID="ID_1114904354" MODIFIED="1395826563396" TEXT="static">
<node CREATED="1312768948629" ID="ID_529211850" MODIFIED="1313485340188">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      DECLARE_TASKLET(name, func, data)
    </p>
    <p>
      DECLARE_TASKLET_DISABLED(name, func, data)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312768978605" FOLDED="true" ID="ID_1031552416" MODIFIED="1395826563396" TEXT="dynamic">
<node CREATED="1312768996110" ID="ID_448875376" MODIFIED="1313474513449" TEXT="tasklet_init(t, tasklet_handler, dev)"/>
</node>
</node>
<node CREATED="1312769016773" ID="ID_1212964925" MODIFIED="1313474621336" TEXT="tasklet_schedule(&amp;my_tasklet)/tasklet_hi_schedule(&amp;my_tasklet)">
<icon BUILTIN="button_ok"/>
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
<node CREATED="1312768910909" FOLDED="true" ID="ID_794097156" MODIFIED="1399259744995">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      workqueue
    </p>
    <p>
      (sleep, process context)
    </p>
  </body>
</html></richcontent>
<node CREATED="1312769212872" FOLDED="true" ID="ID_891040841" MODIFIED="1399259739195">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct workqueue_struct
    </p>
    <p>
      (struct cpu_workqueue_struct)
    </p>
  </body>
</html></richcontent>
<node CREATED="1312769347389" ID="ID_1107461994" MODIFIED="1312769354568" TEXT="create_workqueue()"/>
<node CREATED="1312769364861" MODIFIED="1312769367225" TEXT="create_singlethread_workqueue()"/>
<node CREATED="1312769374116" ID="ID_1091106294" MODIFIED="1312769376656" TEXT="destroy_workqueue()"/>
<node CREATED="1312769460406" ID="ID_1122862524" MODIFIED="1312769496856" TEXT="queue_work()/queue_delayed_work()"/>
<node CREATED="1312769583956" ID="ID_655962899" MODIFIED="1312769586112" TEXT="flush_workqueue()"/>
</node>
<node CREATED="1312769222053" FOLDED="true" ID="ID_1043283881" MODIFIED="1399259741366" TEXT="struct work_struct">
<node CREATED="1312769385645" FOLDED="true" ID="ID_1344136187" MODIFIED="1395826563397" TEXT="static">
<node CREATED="1312769418805" ID="ID_1725697565" MODIFIED="1313481470917" TEXT="DECLARE_WORK(name, func)"/>
</node>
<node CREATED="1312769388292" FOLDED="true" ID="ID_1343775588" MODIFIED="1395826563397" TEXT="dynamic">
<node CREATED="1312769427535" ID="ID_476087168" MODIFIED="1313485057764" TEXT="INIT_WORK(work, func)"/>
</node>
</node>
<node CREATED="1312769631892" ID="ID_947177218" MODIFIED="1313485614588" TEXT="schedule_work(&amp;work)/schedule_delayed_work(&amp;work, delay)">
<icon BUILTIN="button_ok"/>
</node>
<node CREATED="1312769574845" ID="ID_147766562" MODIFIED="1313486073228" TEXT="cancel_delayed_work()"/>
<node CREATED="1312769658141" ID="ID_819983672" MODIFIED="1312769660345" TEXT="flush_scheduled_work()"/>
</node>
<node CREATED="1313486628806" ID="ID_589613468" MODIFIED="1399269150141" TEXT="In short, normal driver writers have two choices. First, do you need a schedulable entity to perform your deferred work&#x2014;fundamentally, do you need to sleep for any reason? Then work queues are your only option. Otherwise, tasklets are preferred. Only if  scalability becomes a concern do you investigate softirqs. The bottom half runs with all interrupts enabled.">
<icon BUILTIN="idea"/>
</node>
</node>
</node>
<node CREATED="1395826105267" FOLDED="true" ID="ID_1799415634" MODIFIED="1399282127936" POSITION="right" TEXT="Concurrency">
<node CREATED="1312693202397" FOLDED="true" ID="ID_59832097" MODIFIED="1395826073053">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Semaphore
    </p>
    <p>
      (long, sleep, process context)
    </p>
  </body>
</html></richcontent>
<node CREATED="1312693302454" FOLDED="true" ID="ID_740546722" MODIFIED="1395826073052" TEXT="semaphore">
<node CREATED="1312693512550" ID="ID_1849881313" MODIFIED="1313548907626" TEXT="static DECLARE_SEMAPHORE_GENERIC(name, count)"/>
<node CREATED="1312693518316" ID="ID_967799322" MODIFIED="1313548984342" TEXT="sema_init(sem, count)"/>
</node>
<node CREATED="1312693352465" ID="ID_752258416" MODIFIED="1313549756423" TEXT="rw_semaphore/completion"/>
<node CREATED="1312693386730" FOLDED="true" ID="ID_1970555050" MODIFIED="1395826073053" TEXT="mutex">
<icon BUILTIN="button_ok"/>
<node CREATED="1312693396454" FOLDED="true" ID="ID_551072747" MODIFIED="1395826073052" TEXT="static">
<node CREATED="1312693416715" ID="ID_1495494447" MODIFIED="1313549066546">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static DECLARE_MUTEX(name)
    </p>
    <p>
      static DECLARE_MUTEX_LOCKED(name)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312693431973" FOLDED="true" ID="ID_1008579193" MODIFIED="1395826073053" TEXT="dynamic">
<node CREATED="1312693459388" ID="ID_1482323652" MODIFIED="1313549087545">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      init_MUTEX(sem)
    </p>
    <p>
      init_MUTEX_LOCKED(sem)
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1312693740526" FOLDED="true" ID="ID_1969698129" MODIFIED="1395826073053" TEXT="usage">
<node CREATED="1312693800962" FOLDED="true" ID="ID_314690552" MODIFIED="1395826073053">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b>down_interruptible</b>(&amp;my_sem)
    </p>
    <p>
      up(&amp;my_sem)
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
<node CREATED="1313549941186" ID="ID_249606607" MODIFIED="1313550157146">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      &#160;If the&#160;&#160;semaphore is unavailable, it places the calling process
    </p>
    <p>
      &#160;to sleep in the TASK_INTERRUPTIBLE state.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312693813435" ID="ID_1097964744" MODIFIED="1313549173430" TEXT="down()/down_trylock()">
<icon BUILTIN="button_cancel"/>
</node>
</node>
</node>
<node CREATED="1313547549956" ID="ID_1312026970" MODIFIED="1313547728842" TEXT="In cases where  the sleep time might be long or you potentially need to sleep while holding the lock, the  semaphore is a solution.">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312693651083" FOLDED="true" ID="ID_771001210" MODIFIED="1395826073055">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      spinlock
    </p>
    <p>
      (short, no sleep, interrupt context)
    </p>
  </body>
</html></richcontent>
<node CREATED="1312693951073" FOLDED="true" ID="ID_341396860" MODIFIED="1395826073055" TEXT="spinlock">
<icon BUILTIN="button_ok"/>
<node CREATED="1312693968931" FOLDED="true" ID="ID_1387000666" MODIFIED="1395826073054" TEXT="static">
<node CREATED="1312694017006" ID="ID_515272272" MODIFIED="1312694024756" TEXT="spinlock_t my_lock = SPIN_LOCK_UNLOCKED;"/>
</node>
<node CREATED="1312694027908" FOLDED="true" ID="ID_1810418454" MODIFIED="1395826073054" TEXT="dynamic">
<node CREATED="1312694044309" ID="ID_1719388903" MODIFIED="1312694050626" TEXT="spin_lock_init()"/>
</node>
<node CREATED="1312694066185" FOLDED="true" ID="ID_1463723135" MODIFIED="1395826073055" TEXT="usage">
<node CREATED="1312694134224" FOLDED="true" ID="ID_1244850060" MODIFIED="1395826073054">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      spin_lock_irqsave(&amp;my_lock, flags)
    </p>
    <p>
      spin_unlock_irqrestore(&amp;my_lock, flags)
    </p>
  </body>
</html></richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="button_ok"/>
<node CREATED="1313545973967" ID="ID_1004456907" MODIFIED="1313547149761">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Saves current state of local interrupts,
    </p>
    <p>
      disables local interrupts, and acquires given lock
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312694076678" ID="ID_1206402908" MODIFIED="1313544314222" TEXT="spin_lock()/spin_unlock()"/>
<node CREATED="1312694144427" FOLDED="true" ID="ID_256904747" MODIFIED="1395826073054" TEXT="spin_lock_irq()/spin_unlock_irq()">
<icon BUILTIN="button_cancel"/>
<node CREATED="1313545927769" ID="ID_1701566236" MODIFIED="1313545955406" TEXT="Disables local interrupts and acquires given lock">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312694154453" FOLDED="true" ID="ID_1565147892" MODIFIED="1395826073054" TEXT="spin_lock_bh()/spin_unlock_bh()">
<node CREATED="1313546092211" ID="ID_376102253" MODIFIED="1313546945688" TEXT="Disables all bottom halves and acquires given lock">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1312694398791" ID="ID_1972092235" MODIFIED="1313544335595" TEXT="spin_trylock()/spin_trylock_bh()"/>
</node>
</node>
<node CREATED="1312694058445" ID="ID_795613481" MODIFIED="1313551561036" TEXT="rwlock/seqlock/RCU/BKL"/>
<node CREATED="1313547693964" ID="ID_648267487" MODIFIED="1313547836980" TEXT="Spin locks provide a quick and simple lock. The spinning behavior is optimal for short  hold times and code that cannot sleep (interrupt handlers, for example). ">
<icon BUILTIN="idea"/>
</node>
</node>
<node CREATED="1313552079457" FOLDED="true" ID="ID_545884410" MODIFIED="1395826073055" TEXT="Preemption Disabling">
<node CREATED="1313552107043" ID="ID_56290824" MODIFIED="1313552164925">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      preempt_disable()
    </p>
    <p>
      preempt_enable()
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1313553755558" FOLDED="true" ID="ID_1124259971" MODIFIED="1395826073055" TEXT="Barriers">
<node CREATED="1313553803570" ID="ID_786162832" MODIFIED="1313553924469" TEXT="mb()/rmb()/wmb()"/>
<node CREATED="1313553929661" ID="ID_1928322973" MODIFIED="1313553940804" TEXT="read_barrier_depends()"/>
<node CREATED="1313553952421" ID="ID_1581681392" MODIFIED="1313553956243" TEXT="barrier()"/>
</node>
<node CREATED="1313544533216" ID="ID_1459520210" MODIFIED="1399279506891" TEXT="You should protect data and not code">
<font NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1313503319379" ID="ID_947159726" MODIFIED="1399279516545" TEXT="The tricky part is identifying the actual shared data and the corresponding critical sections.&#xa;This is why designing locking into your code from the  get-go, and not as an after thought&#xa; is of paramount importance.">
<icon BUILTIN="idea"/>
</node>
<node CREATED="1313550639680" ID="ID_1180693157" MODIFIED="1395826431485">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/process/spin-lock-usage.png" />
  </body>
</html></richcontent>
</node>
<node CREATED="1399279489632" ID="ID_667810782" MODIFIED="1399279501249" TEXT="The lock provides protection against concurrent access from another processor, whereas disabling interrupts provides protection against concurrent access from a possible interrupt handler."/>
</node>
<node CREATED="1394607772301" FOLDED="true" ID="ID_232140513" MODIFIED="1399193546661" POSITION="right" TEXT="Process Communication">
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
</node>
</map>
