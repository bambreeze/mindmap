<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1366184501690" ID="ID_106286176" MODIFIED="1390462888053" TEXT="File System">
<node CREATED="1369634187531" ID="ID_820278448" MODIFIED="1369634204695" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <table cellpadding="0" width="100%" border="0" cellspacing="0">
      <tr>
        <td valign="top">
          <p class="docText">
            The <span class="docEmphasis">Virtual Filesystem</span>&#160;(also known as Virtual Filesystem Switch or <span class="docEmphasis">VFS</span>) is a kernel software layer that handles all system calls related to a standard Unix filesystem. Its main strength is providing a common interface to several kinds of filesystems.
          </p>
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
</node>
<node CREATED="1366189248236" ID="ID_1806333498" MODIFIED="1390462891720" POSITION="right" TEXT="The Common File Model">
<node CREATED="1369637391056" ID="ID_182356661" MODIFIED="1369637505621" TEXT="The kernel is responsible for assigning the right set of pointers to the file variable associated with each open file, and then for invoking the call specific to each filesystem that the f_op field points to."/>
<node CREATED="1390458491897" ID="ID_1709121695" MODIFIED="1390458525897">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/fs/Interaction%20between%20processes%20and%20VFS%20objects.png" />
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1366185131209" FOLDED="true" ID="ID_1535514442" MODIFIED="1390462888051" POSITION="right" TEXT="Filesystems">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1370239154930" FOLDED="true" ID="ID_282454318" MODIFIED="1390462888050" TEXT="Filesystem Types">
<node CREATED="1366185168265" ID="ID_1445111663" MODIFIED="1369634700249" TEXT="Disk-based filesystems (Ext2, DOS/FAT/NTFS)"/>
<node CREATED="1366188682100" ID="ID_333407511" MODIFIED="1366188750105" TEXT="Network filesystems (NFS)"/>
<node CREATED="1366188692444" ID="ID_1349695691" MODIFIED="1366188743974" TEXT="Special filesystems (/proc)"/>
</node>
<node CREATED="1370239251786" ID="ID_1530967015" MODIFIED="1390458538442" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1370239310274" ID="ID_401191182" MODIFIED="1390461288680">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">file_system_type</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;const char *<b>name</b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;int fs_flags;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct dentry *(*mount) (struct file_system_type *, int, const char *, void *);
    </p>
    <p>
      &#160;&#160;&#160;&#160;void (*kill_sb) (struct super_block *);
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct module *owner;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct file_system_type * <b><font color="#000000">next</font></b>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#009900">fs_supers</font>;
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
<arrowlink DESTINATION="ID_425894147" ENDARROW="Default" ENDINCLINATION="651;0;" ID="Arrow_ID_677682011" STARTARROW="None" STARTINCLINATION="651;0;"/>
</node>
<node CREATED="1390458883824" ID="ID_400167546" MODIFIED="1390458916581" TEXT="fs/filesystems.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1370239188600" ID="ID_246551241" MODIFIED="1390460364887">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct file_system_type *<b><font color="#6600ff">file_systems</font></b>;
    </p>
    <p>
      static DEFINE_RWLOCK(<font color="#000000">file_systems_lock</font>);
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1390462557543" FOLDED="true" ID="ID_1710226371" MODIFIED="1390462888050">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#0000ff">register_filesystem()</font>
    </p>
  </body>
</html>
</richcontent>
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1390462677052" ID="ID_1209179945" MODIFIED="1390462788172" TEXT="register a new filesystem">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1370239712086" ID="ID_1677955300" MODIFIED="1390462675326">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      int <b><font color="#0000ff">register_filesystem</font></b>(struct file_system_type * fs)
    </p>
    <p>
      &#160;&#160;&#160;&#160;write_lock(&amp;file_systems_lock);
    </p>
    <p>
      &#160;&#160;&#160;&#160;p = find_filesystem(fs-&gt;name, strlen(fs-&gt;name));
    </p>
    <p>
      &#160;&#160;&#160;&#160;if (*p)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;res = -EBUSY;
    </p>
    <p>
      &#160;&#160;&#160;&#160;else
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;*p = fs;
    </p>
    <p>
      &#160;&#160;&#160;&#160;write_unlock(&amp;file_systems_lock);
    </p>
  </body>
</html>
</richcontent>
</node>
<node CREATED="1390459417235" ID="ID_1032117686" MODIFIED="1390460237137">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct file_system_type **<font color="#000000">find_filesystem</font>(const char *name, unsigned len)
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct file_system_type **p;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;for (p=&amp;<b><font color="#6600ff">file_systems</font></b>; *p; p=&amp;(*p)-&gt;next)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if (strlen((*p)-&gt;name) == len &amp;&amp;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;strncmp((*p)-&gt;name, name, len) == 0)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;break;
    </p>
    <p>
      &#160;&#160;&#160;&#160;return p;
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1390462606718" FOLDED="true" ID="ID_615016095" MODIFIED="1390462888051">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#0000ff">unregister_filesystem()</font></b>
    </p>
  </body>
</html>
</richcontent>
<node CREATED="1390462690701" ID="ID_1132549187" MODIFIED="1390462793185" TEXT="unregister a file system">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1390459743541" ID="ID_812171925" MODIFIED="1390462596991">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      int <b><font color="#0000ff">unregister_filesystem</font></b>(struct file_system_type * fs)
    </p>
    <p>
      &#160;&#160;&#160;&#160;write_lock(&amp;file_systems_lock);
    </p>
    <p>
      &#160;&#160;&#160;&#160;tmp = &amp;<b><font color="#6600ff">file_systems</font></b>;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;while (*tmp) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;if (fs == *tmp) {
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;*tmp = fs-&gt;next;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;fs-&gt;next = NULL;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;write_unlock(&amp;file_systems_lock);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;synchronize_rcu();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return 0;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;}&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;tmp = &amp;(*tmp)-&gt;next;
    </p>
    <p>
      &#160;&#160;&#160;&#160;}
    </p>
    <p>
      &#160;&#160;&#160;&#160;write_unlock(&amp;file_systems_lock);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1366189506952" FOLDED="true" ID="ID_1566163540" MODIFIED="1390462888052" POSITION="right" TEXT="superblock object">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1369637845942" ID="ID_349538503" MODIFIED="1369637848179" TEXT="Stores information concerning a mounted filesystem. For disk-based filesystems, this object usually corresponds to a filesystem control block stored on disk."/>
<node CREATED="1369709722854" ID="ID_524176037" MODIFIED="1390460509440" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369709745280" ID="ID_425894147" MODIFIED="1390461239653">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">super_block</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#cc00cc">s_list</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned char s_dirt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct super_operations *s_op;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#0033cc">s_inodes</font>;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* all inodes */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#0033cc">s_files</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;void *s_fs_info;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Filesystem private info */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#009900">s_instances</font>;
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
<arrowlink DESTINATION="ID_1409554322" ENDARROW="Default" ENDINCLINATION="566;0;" ID="Arrow_ID_67717443" STARTARROW="None" STARTINCLINATION="416;0;"/>
<arrowlink DESTINATION="ID_78514318" ENDARROW="Default" ENDINCLINATION="494;0;" ID="Arrow_ID_1846840984" STARTARROW="None" STARTINCLINATION="494;0;"/>
</node>
<node CREATED="1390460887973" ID="ID_1057163362" MODIFIED="1390460907950" TEXT="fs/super.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369710087938" ID="ID_1394783049" MODIFIED="1390460907946">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct list_head <font color="#cc00cc">super_blocks</font>;
    </p>
    <p>
      spinlock_t sb_lock;
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_425894147" ENDARROW="Default" ENDINCLINATION="135;0;" ID="Arrow_ID_1807737045" STARTARROW="None" STARTINCLINATION="135;0;"/>
</node>
</node>
<node CREATED="1366189518401" FOLDED="true" ID="ID_494530525" MODIFIED="1390462888052" POSITION="right" TEXT="inode object">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1369637920433" ID="ID_1650539098" MODIFIED="1369637922304" TEXT="Stores general information about a specific file. For disk-based filesystems, this object usually corresponds to a file control block stored on disk. Each inode object is associated with an inode number, which uniquely identifies the file within the filesystem.  "/>
<node CREATED="1369723392961" ID="ID_57843421" MODIFIED="1390461489941" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369723297287" ID="ID_1409554322" MODIFIED="1390461853672">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">inode</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long i_ino;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct inode_operations *i_op;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct file_operations *i_fop;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned long i_state;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct super_block *i_sb;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct hlist_node i_hash;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head i_wb_list;&#160;&#160;&#160;&#160;&#160;&#160;/* backing dev IO list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head i_lru;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* inode LRU list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#0033cc">i_sb_list</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#339900">i_dentry</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1366189532051" FOLDED="true" ID="ID_198670532" MODIFIED="1390462888052" POSITION="right" TEXT="dentry object">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1369638242904" ID="ID_1904145160" MODIFIED="1369638244888" TEXT="Stores information about the linking of a directory entry (that is, a particular name of the file) with the corresponding file. Each disk-based filesystem stores this information in its own particular way on disk.  "/>
<node CREATED="1369729796600" ID="ID_370000365" MODIFIED="1390462018634" TEXT="include/linux/dcache.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369729854013" ID="ID_1560357739" MODIFIED="1390462187774">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">dentry</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct dentry_operations *d_op;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int d_flags;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int d_count;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct inode *d_inode;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#ff00ff">d_lru</font>;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* LRU list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#339900">d_alias</font>; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* inode alias list */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct hlist_bl_node d_hash;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* lookup hash list */
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
<node CREATED="1369733488565" ID="ID_887547705" MODIFIED="1390462022365">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct list_head <font color="#ff00ff">dentry_unused</font>;
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_1560357739" ENDARROW="Default" ENDINCLINATION="172;0;" ID="Arrow_ID_1146499315" STARTARROW="None" STARTINCLINATION="172;0;"/>
</node>
</node>
<node CREATED="1366189528521" FOLDED="true" ID="ID_1249395069" MODIFIED="1390462888053" POSITION="right" TEXT="file object">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1369638028382" ID="ID_19029987" MODIFIED="1369638031431" TEXT="Stores information about the interaction between an open file and a process. This information exists only in kernel memory during the period when a process has the file open.  "/>
<node CREATED="1369636883365" ID="ID_65479377" MODIFIED="1390462325372" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369636711023" FOLDED="true" ID="ID_78514318" MODIFIED="1390462888052">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">file</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;loff_t f_pos;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct file_operations *f_op;
    </p>
    <p>
      &#160;&#160;&#160;&#160;void *private_data;
    </p>
    <p>
      &#160;&#160;&#160;&#160;atomic_long_t f_count;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#0033cc">fu_list</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct path f_path;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1369639073539" ID="ID_1376766354" MODIFIED="1390462302346" TEXT="include/linux/path.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369639104052" ID="ID_448584187" MODIFIED="1390462431642">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct path {
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct vfsmount *mnt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct dentry *dentry;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1369637057651" ID="ID_156016210" MODIFIED="1390462448966">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">file_operations</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*open) (...)
    </p>
    <p>
      &#160;&#160;&#160;&#160;int (*release) (...)
    </p>
    <p>
      &#160;&#160;&#160;&#160;ssize_t (*read) (...)
    </p>
    <p>
      &#160;&#160;&#160;&#160;ssize_t (*write) (...)
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
</map>
