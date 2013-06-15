<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1366184501690" ID="ID_106286176" MODIFIED="1369728418139" TEXT="File System">
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
<node CREATED="1366185131209" ID="ID_1535514442" MODIFIED="1369634463008" POSITION="right" TEXT="Filesystems">
<node CREATED="1370239154930" ID="ID_282454318" MODIFIED="1370239177886" TEXT="Filesystem Types">
<node CREATED="1366185168265" ID="ID_1445111663" MODIFIED="1369634700249" TEXT="Disk-based filesystems (Ext2, DOS/FAT/NTFS)"/>
<node CREATED="1366188682100" ID="ID_333407511" MODIFIED="1366188750105" TEXT="Network filesystems (NFS)"/>
<node CREATED="1366188692444" ID="ID_1349695691" MODIFIED="1366188743974" TEXT="Special filesystems (/proc)"/>
</node>
<node CREATED="1370239188600" ID="ID_246551241" MODIFIED="1370239805518">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct file_system_type *<font color="#ff33ff">file_systems</font>;
    </p>
  </body>
</html>
</richcontent>
<arrowlink DESTINATION="ID_401191182" ENDARROW="Default" ENDINCLINATION="369;0;" ID="Arrow_ID_1334596200" STARTARROW="None" STARTINCLINATION="369;0;"/>
</node>
<node CREATED="1370239236074" ID="ID_856403586" MODIFIED="1370239246982" TEXT="struct file_system_type">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1370239251786" ID="ID_1530967015" MODIFIED="1370239264058" TEXT="include/linux/fs.h"/>
<node CREATED="1370239310274" ID="ID_401191182" MODIFIED="1370239805518">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const char *name;
    </p>
    <p>
      int fs_flags;
    </p>
    <p>
      struct dentry *(*mount) (struct file_system_type *, int, const char *, void *);
    </p>
    <p>
      void (*kill_sb) (struct super_block *);
    </p>
    <p>
      struct module *owner;
    </p>
    <p>
      struct file_system_type * <font color="#ff33ff">next</font>;
    </p>
    <p>
      struct list_head <font color="#006600">fs_supers</font>;
    </p>
  </body>
</html>
</richcontent>
<arrowlink DESTINATION="ID_425894147" ENDARROW="Default" ENDINCLINATION="637;0;" ID="Arrow_ID_86022622" STARTARROW="None" STARTINCLINATION="637;0;"/>
</node>
</node>
<node CREATED="1370239712086" ID="ID_1677955300" MODIFIED="1370239804556">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      int <b>register_filesystem</b>(struct file_system_type * fs);&#160;&#160;&#160;/* register a new filesystem */
    </p>
  </body>
</html>
</richcontent>
</node>
</node>
<node CREATED="1366189248236" ID="ID_1806333498" MODIFIED="1366189250848" POSITION="right" TEXT="The Common File Model">
<node CREATED="1369637391056" ID="ID_182356661" MODIFIED="1369637505621" TEXT="The kernel is responsible for assigning the right set of pointers to the file variable associated with each open file, and then for invoking the call specific to each filesystem that the f_op field points to."/>
<node CREATED="1369709079229" ID="ID_1821757888" MODIFIED="1369817971487">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="Interaction%20between%20processes%20and%20VFS%20objects.png" />
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1366189506952" ID="ID_1566163540" MODIFIED="1369638046921" POSITION="right" TEXT="superblock object">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1369637845942" ID="ID_349538503" MODIFIED="1369637848179" TEXT="Stores information concerning a mounted filesystem. For disk-based filesystems, this object usually corresponds to a filesystem control block stored on disk."/>
<node CREATED="1369710087938" ID="ID_1394783049" MODIFIED="1369710630317">
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
<node CREATED="1369709687461" ID="ID_5265185" MODIFIED="1369710080829" TEXT="struct super_block">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1369709722854" ID="ID_524176037" MODIFIED="1369709731607" TEXT="include/linux/fs.h"/>
<node CREATED="1369709745280" ID="ID_425894147" MODIFIED="1370239623731">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct list_head <font color="#cc00cc">s_list</font>;
    </p>
    <p>
      unsigned char s_dirt;
    </p>
    <p>
      const struct super_operations *s_op;
    </p>
    <p>
      struct list_head <font color="#0033cc">s_inodes</font>;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* all inodes */
    </p>
    <p>
      struct list_head <font color="#0033cc">s_files</font>;
    </p>
    <p>
      void *s_fs_info;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Filesystem private info */
    </p>
    <p>
      struct list_head <font color="#006600">s_instances</font>;
    </p>
  </body>
</html>
</richcontent>
<arrowlink DESTINATION="ID_1409554322" ENDARROW="Default" ENDINCLINATION="566;0;" ID="Arrow_ID_67717443" STARTARROW="None" STARTINCLINATION="416;0;"/>
<arrowlink DESTINATION="ID_78514318" ENDARROW="Default" ENDINCLINATION="494;0;" ID="Arrow_ID_1846840984" STARTARROW="None" STARTINCLINATION="494;0;"/>
</node>
</node>
</node>
<node CREATED="1366189518401" ID="ID_494530525" MODIFIED="1369709260830" POSITION="right" TEXT="inode object">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1369637920433" ID="ID_1650539098" MODIFIED="1369637922304" TEXT="Stores general information about a specific file. For disk-based filesystems, this object usually corresponds to a file control block stored on disk. Each inode object is associated with an inode number, which uniquely identifies the file within the filesystem.  "/>
<node CREATED="1369723281584" ID="ID_1608025725" MODIFIED="1369723293182" TEXT="struct inode">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1369723392961" ID="ID_57843421" MODIFIED="1369723399282" TEXT="include/linux/fs.h"/>
<node CREATED="1369723297287" ID="ID_1409554322" MODIFIED="1369733585421">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      unsigned long i_ino;
    </p>
    <p>
      const struct inode_operations *i_op;
    </p>
    <p>
      const struct file_operations *i_fop;
    </p>
    <p>
      unsigned long i_state;
    </p>
    <p>
      struct super_block *i_sb;
    </p>
    <p>
      struct hlist_node i_hash;
    </p>
    <p>
      struct list_head i_wb_list;&#160;&#160;&#160;&#160;&#160;&#160;/* backing dev IO list */
    </p>
    <p>
      struct list_head i_lru;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* inode LRU list */
    </p>
    <p>
      struct list_head <font color="#0033cc">i_sb_list</font>;
    </p>
    <p>
      struct list_head <font color="#339900">i_dentry</font>;
    </p>
  </body>
</html></richcontent>
<arrowlink DESTINATION="ID_1560357739" ENDARROW="Default" ENDINCLINATION="507;0;" ID="Arrow_ID_1705257615" STARTARROW="None" STARTINCLINATION="507;0;"/>
</node>
</node>
</node>
<node CREATED="1366189532051" ID="ID_198670532" MODIFIED="1369733161680" POSITION="right" TEXT="dentry object">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1369638242904" ID="ID_1904145160" MODIFIED="1369638244888" TEXT="Stores information about the linking of a directory entry (that is, a particular name of the file) with the corresponding file. Each disk-based filesystem stores this information in its own particular way on disk.  "/>
<node CREATED="1369729785394" ID="ID_1807061159" MODIFIED="1369729791292" TEXT="struct dentry">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1369729796600" ID="ID_370000365" MODIFIED="1369729824512" TEXT="include/linux/dcache.h"/>
<node CREATED="1369733488565" ID="ID_887547705" MODIFIED="1369733560710">
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
<node CREATED="1369729854013" ID="ID_1560357739" MODIFIED="1369818752793">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      const struct dentry_operations *d_op;
    </p>
    <p>
      unsigned int d_flags;
    </p>
    <p>
      unsigned int d_count;
    </p>
    <p>
      struct inode *d_inode;
    </p>
    <p>
      struct list_head <font color="#ff00ff">d_lru</font>;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* LRU list */
    </p>
    <p>
      struct list_head <font color="#339900">d_alias</font>; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* inode alias list */
    </p>
    <p>
      struct hlist_bl_node d_hash;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* lookup hash list */
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1366189528521" ID="ID_1249395069" MODIFIED="1369638053659" POSITION="right" TEXT="file object">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1369638028382" ID="ID_19029987" MODIFIED="1369638031431" TEXT="Stores information about the interaction between an open file and a process. This information exists only in kernel memory during the period when a process has the file open.  "/>
<node CREATED="1369636689759" ID="ID_1275236444" MODIFIED="1369636701634" TEXT="struct file">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1369636883365" ID="ID_65479377" MODIFIED="1369636896560" TEXT="include/linux/fs.h"/>
<node CREATED="1369636711023" ID="ID_78514318" MODIFIED="1369727820865">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      loff_t f_pos;
    </p>
    <p>
      const struct file_operations *f_op;
    </p>
    <p>
      void *private_data;
    </p>
    <p>
      atomic_long_t f_count;
    </p>
    <p>
      struct list_head <font color="#0033cc">fu_list</font>;
    </p>
    <p>
      struct path f_path;
    </p>
  </body>
</html></richcontent>
<node CREATED="1369639062595" ID="ID_1006448450" MODIFIED="1369639198188" TEXT="struct path">
<node CREATED="1369639073539" ID="ID_1376766354" MODIFIED="1369639102547" TEXT="include/linux/path.h"/>
<node CREATED="1369639104052" ID="ID_448584187" MODIFIED="1369818752793">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct vfsmount *mnt;
    </p>
    <p>
      struct dentry *dentry;
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
<node CREATED="1369637028315" ID="ID_218973717" MODIFIED="1369637042352" TEXT="struct file_operations">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1369636883365" ID="ID_97886068" MODIFIED="1369636896560" TEXT="include/linux/fs.h"/>
<node CREATED="1369637057651" ID="ID_156016210" MODIFIED="1369637117729">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      int (*open) (...)
    </p>
    <p>
      int (*release) (...)
    </p>
    <p>
      ssize_t (*read) (...)
    </p>
    <p>
      ssize_t (*write) (...)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
</node>
</map>
