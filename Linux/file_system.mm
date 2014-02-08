<map version="0.9.0">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1366184501690" ID="ID_106286176" MODIFIED="1390810597289" TEXT="File System">
<node CREATED="1369634187531" ID="ID_820278448" MODIFIED="1390808571182" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <table cellspacing="0" cellpadding="0" width="100%" border="0">
      <tr>
        <td valign="top">
          <p class="docText">
            The Virtual Filesystem&#160;(also known as Virtual Filesystem Switch or <b><font color="#0000ff"><i>VFS</i></font></b>) is a kernel software layer that handles all system calls related to a standard Unix filesystem. Its main strength is providing a <b><font color="#0000ff"><i>common interface</i></font></b>&#160;to several kinds of filesystems.
          </p>
        </td>
      </tr>
    </table>
  </body>
</html></richcontent>
</node>
<node CREATED="1366189248236" FOLDED="true" ID="ID_1806333498" MODIFIED="1391850531281" POSITION="right" TEXT="The Common File Model">
<node CREATED="1390808647367" ID="ID_200050510" MODIFIED="1390808688107">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The kernel is responsible for <b><font color="#0000ff"><i>assigning the right set of pointers</i></font></b>&#160; to the file variable associated with each open file, and then for invoking the call specific to each filesystem that the f_op field points to.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1390808085478" ID="ID_725537960" MODIFIED="1390808102902">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/fs/vfs-objects.png" />
  </body>
</html></richcontent>
</node>
<node CREATED="1366189506952" FOLDED="true" ID="ID_1566163540" MODIFIED="1390810597282" TEXT="superblock object">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1369637845942" ID="ID_349538503" MODIFIED="1369637848179" TEXT="Stores information concerning a mounted filesystem. For disk-based filesystems, this object usually corresponds to a filesystem control block stored on disk."/>
<node CREATED="1369709722854" ID="ID_524176037" MODIFIED="1390460509440" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369709745280" ID="ID_425894147" MODIFIED="1390724851283">
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
      &#160;&#160;&#160;&#160;struct list_head <font color="#009900">s_instances</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct file_system_type *s_type;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct dentry *s_root;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#0033cc">s_inodes</font>; /* all inodes */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head <font color="#0033cc">s_files</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;const struct super_operations *s_op;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#0000ff" DESTINATION="ID_1409554322" ENDARROW="Default" ENDINCLINATION="316;0;" ID="Arrow_ID_421093846" STARTARROW="None" STARTINCLINATION="316;0;"/>
</node>
<node CREATED="1390460887973" ID="ID_1057163362" MODIFIED="1390460907950" TEXT="fs/super.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369710087938" ID="ID_1394783049" MODIFIED="1390724883837">
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
<arrowlink COLOR="#ff00ff" DESTINATION="ID_425894147" ENDARROW="Default" ENDINCLINATION="135;0;" ID="Arrow_ID_1807737045" STARTARROW="None" STARTINCLINATION="135;0;"/>
</node>
</node>
<node CREATED="1366189518401" ID="ID_494530525" MODIFIED="1391850417457" TEXT="inode object">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1369637920433" ID="ID_1650539098" MODIFIED="1369637922304" TEXT="Stores general information about a specific file. For disk-based filesystems, this object usually corresponds to a file control block stored on disk. Each inode object is associated with an inode number, which uniquely identifies the file within the filesystem.  "/>
<node CREATED="1369723392961" ID="ID_57843421" MODIFIED="1390461489941" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369723297287" ID="ID_1409554322" MODIFIED="1390725517097">
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
      &#160;&#160;&#160;&#160;struct list_head <font color="#ff9900">i_dentry</font>;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      }
    </p>
  </body>
</html></richcontent>
<arrowlink COLOR="#ff9900" DESTINATION="ID_1560357739" ENDARROW="Default" ENDINCLINATION="262;0;" ID="Arrow_ID_333913323" STARTARROW="None" STARTINCLINATION="262;0;"/>
</node>
</node>
<node CREATED="1366189532051" FOLDED="true" ID="ID_198670532" MODIFIED="1390810597282" TEXT="dentry object">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1369638242904" ID="ID_1904145160" MODIFIED="1369638244888" TEXT="Stores information about the linking of a directory entry (that is, a particular name of the file) with the corresponding file. Each disk-based filesystem stores this information in its own particular way on disk.  "/>
<node CREATED="1369729796600" ID="ID_370000365" MODIFIED="1390462018634" TEXT="include/linux/dcache.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369729854013" ID="ID_1560357739" MODIFIED="1390725510079">
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
      &#160;&#160;&#160;&#160;struct list_head <font color="#ff9900">d_alias</font>; &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* inode alias list */
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
<node CREATED="1366189528521" FOLDED="true" ID="ID_1249395069" MODIFIED="1390810597283" TEXT="file object">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1369638028382" ID="ID_19029987" MODIFIED="1369638031431" TEXT="Stores information about the interaction between an open file and a process. This information exists only in kernel memory during the period when a process has the file open.  "/>
<node CREATED="1369636883365" ID="ID_65479377" MODIFIED="1390462325372" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1369636711023" FOLDED="true" ID="ID_78514318" MODIFIED="1390810597283">
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
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1370239154930" ID="ID_282454318" MODIFIED="1391846392002" POSITION="right" TEXT="Filesystem Types">
<node CREATED="1366185168265" ID="ID_1445111663" MODIFIED="1391846474448">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Disk-based filesystems (<font color="#0000ff"><b>Ext2</b></font>, DOS/<b>FAT</b>/NTFS)
    </p>
  </body>
</html>
</richcontent>
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1391846572773" FOLDED="true" ID="ID_1812686643" MODIFIED="1391850791837" TEXT="Ext2 Disk Data Structures">
<node CREATED="1391846743251" ID="ID_424384855" MODIFIED="1391846766060">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/fs/ext2-layouts.jpg" />
  </body>
</html>
</richcontent>
</node>
<node CREATED="1391847080876" ID="ID_1315735517" MODIFIED="1391849874653" TEXT="Superblock">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1391847425869" ID="ID_1215890267" MODIFIED="1391847452433" TEXT="fs/ext2/ext2.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1391847454143" ID="ID_171018086" MODIFIED="1391848658763">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>ext2_super_block</b></i>&#160;{&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;s_inodes_count;&#160;&#160;&#160;&#160;&#160;/* Inodes count */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;s_blocks_count;&#160;&#160;&#160;&#160;&#160;/* Blocks count */
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
</node>
<node CREATED="1391847746567" ID="ID_891006467" MODIFIED="1391849877577" TEXT="Blocks Group Descriptor">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1391847777035" ID="ID_993193935" MODIFIED="1391847798038" TEXT="fs/ext2/ext2.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1391847752473" ID="ID_97084042" MODIFIED="1391848774989">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>ext2_group_desc</b></i>
    </p>
    <p>
      {
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;bg_block_bitmap;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Blocks bitmap block */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;bg_inode_bitmap;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;/* Inodes bitmap block */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;<i><font color="#0000ff"><b>bg_inode_table</b></font></i>;&#160;&#160;&#160;&#160;&#160;/* Inodes table block */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le16&#160;&#160;bg_free_blocks_count;&#160;&#160;&#160;/* Free blocks count */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le16&#160;&#160;bg_free_inodes_count;&#160;&#160;&#160;/* Free inodes count */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le16&#160;&#160;bg_used_dirs_count; /* Directories count */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le16&#160;&#160;bg_pad;
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;bg_reserved[3];
    </p>
    <p>
      };
    </p>
  </body>
</html>
</richcontent>
<arrowlink DESTINATION="ID_1113220723" ENDARROW="Default" ENDINCLINATION="273;0;" ID="Arrow_ID_1587100055" STARTARROW="None" STARTINCLINATION="273;0;"/>
</node>
</node>
<node CREATED="1391848584238" ID="ID_125976382" MODIFIED="1391849879917" TEXT="inode">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1391847777035" ID="ID_701450684" MODIFIED="1391847798038" TEXT="fs/ext2/ext2.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1391848594729" ID="ID_1113220723" MODIFIED="1391848774989">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <i><b>ext2_inode</b></i>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;i_size;&#160;&#160;&#160;&#160;&#160;/* Size in bytes */
    </p>
    <p>
      &#160;&#160;&#160;&#160;__le32&#160;&#160;i_blocks;&#160;&#160;&#160;/* Blocks count */
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
<node CREATED="1391849111548" ID="ID_1052189794" MODIFIED="1391849112963" TEXT="All inodes have the same size: 128 bytes."/>
</node>
<node CREATED="1391849964587" ID="ID_965204423" MODIFIED="1391850746451" TEXT="File Types Vs. Disk Blocks">
<node CREATED="1391850038444" ID="ID_1178286778" MODIFIED="1391850634224">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><font color="#000000"><b>Regular file</b></font></i>&#160;- When first created, a regular file is empty and needs no data blocks
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1391850291085" ID="ID_245446588" MODIFIED="1391850640820">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>Directory</b></i>&#160;- Ext2 implements directories as a special kind of file whose data blocks store <i><font color="#0000ff"><b>filenames</b></font></i>&#160;together with the corresponding <i><font color="#0000ff"><b>inode numbers</b></font></i>.
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1391850651077" ID="ID_868870268" MODIFIED="1391850712354">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <i><b>Symbolic link, Device file, pipe, and socket</b></i>&#160;-&#160;No data blocks are required for these kinds of files. All the necessary information is stored in the inode.
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1391850845521" ID="ID_936251428" MODIFIED="1391850848387" TEXT="Ext2 Memory Data Structures"/>
</node>
<node CREATED="1366188682100" ID="ID_333407511" MODIFIED="1366188750105" TEXT="Network filesystems (NFS)"/>
<node CREATED="1366188692444" ID="ID_1349695691" MODIFIED="1366188743974" TEXT="Special filesystems (/proc)"/>
</node>
<node CREATED="1390462557543" FOLDED="true" ID="ID_1710226371" MODIFIED="1391850533448" POSITION="right">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      Register Filesystem
    </p>
  </body>
</html></richcontent>
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1370239251786" ID="ID_1530967015" MODIFIED="1390539536637" TEXT="include/linux/fs.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1370239310274" ID="ID_401191182" MODIFIED="1390724907238">
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
</html></richcontent>
<arrowlink COLOR="#339900" DESTINATION="ID_425894147" ENDARROW="Default" ENDINCLINATION="402;0;" ID="Arrow_ID_1301444596" STARTARROW="None" STARTINCLINATION="402;0;"/>
</node>
<node CREATED="1390458883824" ID="ID_400167546" MODIFIED="1390539474812" TEXT="fs/filesystems.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1370239188600" ID="ID_246551241" MODIFIED="1390539474808">
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
</html></richcontent>
</node>
<node CREATED="1370239712086" FOLDED="true" ID="ID_1677955300" MODIFIED="1390810597284">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* register a new filesystem */
    </p>
    <p>
      int <b><font color="#0000ff">register_filesystem</font></b>(struct file_system_type * fs)
    </p>
    <p>
      &#160;&#160;&#160;&#160;write_lock(&amp;file_systems_lock);
    </p>
    <p>
      &#160;&#160;&#160;&#160;p = <b><i>find_filesystem</i></b>(fs-&gt;name, strlen(fs-&gt;name));
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><i>*p = fs;</i></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;write_unlock(&amp;file_systems_lock);
    </p>
  </body>
</html></richcontent>
<node CREATED="1390459417235" ID="ID_1032117686" MODIFIED="1390539672014">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct file_system_type **<b><font color="#0000ff">find_filesystem</font></b>(const char *name, unsigned len)
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
<node CREATED="1390459743541" ID="ID_812171925" MODIFIED="1390466605961">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      /* unregister a file system */
    </p>
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
<node CREATED="1390466308341" ID="ID_1895733499" MODIFIED="1391850392148" POSITION="right" TEXT="Mounting Filesystem">
<node CREATED="1390466320756" FOLDED="true" ID="ID_1467198402" MODIFIED="1391850409481" TEXT="Mounting a Generic Filesystem">
<node CREATED="1390529852805" ID="ID_1289092885" MODIFIED="1390539601224" TEXT="fs/mount.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390529874076" FOLDED="true" ID="ID_818732699" MODIFIED="1390810597284">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">mount</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head mnt_hash;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct mount *mnt_parent;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct dentry *mnt_mountpoint;
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#6600ff">struct vfsmount&#160;mnt;</font></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head mnt_mounts;&#160;&#160;&#160;&#160;/* list of children, anchored here */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head mnt_child; /* and going through their mnt_child */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head mnt_instance;&#160;&#160;/* mount instance on sb-&gt;s_mounts */
    </p>
    <p>
      &#160;&#160;&#160;&#160;const char *mnt_devname;&#160;&#160;&#160;&#160;/* Name of device e.g. /dev/dsk/hda1 */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct list_head mnt_list;
    </p>
    <p>
      &#160;&#160;&#160;&#160;...
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1390466161817" ID="ID_1076557367" MODIFIED="1390539601219" TEXT="include/linux/mount.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390466174712" ID="ID_1046638237" MODIFIED="1390539601222">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff">vfsmount</font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct dentry *mnt_root;&#160;&#160;&#160;&#160;/* root of the mounted tree */
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct super_block *mnt_sb; /* pointer to superblock */
    </p>
    <p>
      &#160;&#160;&#160;&#160;int mnt_flags;
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1390466770036" ID="ID_1614029978" MODIFIED="1390539625013" TEXT="fs/namespace.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390719293162" ID="ID_786173474" MODIFIED="1390725961221">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <font color="#000000">$</font><font color="#ff0000">mount</font>&#160;-t ext2 /dev/fd0 /flp
    </p>
  </body>
</html></richcontent>
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1390539190722" ID="ID_528865274" MODIFIED="1390719201281">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      SYSCALL_DEFINE5(<b><font color="#ff0000"><i>mount</i></font></b>, char __user *, dev_name, char __user *, dir_name,
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;char __user *, type, unsigned long, flags, void __user *, data)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1390466786651" ID="ID_312799230" MODIFIED="1390792646883">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff0000"><i>do_mount</i></font></b>(dev_name, dir_name, type_page, flags, data_page)
    </p>
    <p>
      &#160;&#160;&#160;&#160;kern_path(dir_name, ..., &amp;path);
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b>do_new_mount</b>()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;struct vfsmount *mnt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt = <b>vfs_kern_mount</b>(type, flags, name, data);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;struct mount *mnt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt = <b>alloc_vfsmnt</b>(name)
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;struct mount *mnt = <b>kmem_cache_zalloc</b>(mnt_cache, GFP_KERNEL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt_alloc_id(mnt);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt-&gt;mnt_devname = kstrdup(name, GFP_KERNEL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;INIT_LIST_HEAD(&amp;mnt-&gt;mnt_hash);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;struct dentry *root;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;root = <b>mount_fs</b>(type, flags, name, data);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;root = <b><font color="#ff0000"><i>type-&gt;mount</i></font></b>(type, flags, name, data);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt-&gt;mnt.mnt_root = root;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt-&gt;mnt.mnt_sb = root-&gt;d_sb;
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt-&gt;mnt_mountpoint = mnt-&gt;mnt.mnt_root;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mnt-&gt;mnt_parent = mnt;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;list_add_tail(&amp;mnt-&gt;mnt_instance, &amp;root-&gt;d_sb-&gt;s_mounts);
    </p>
    <p>
      
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>do_add_mount</b>()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;graft_tree();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b>attach_recursive_mnt</b>();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1390466334988" FOLDED="true" ID="ID_348316753" MODIFIED="1391850407405" TEXT="Mounting the Root Filesystem">
<node CREATED="1390715914064" FOLDED="true" ID="ID_1514757978" MODIFIED="1390810597285">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      The kernel mounts the special <b><i>rootfs</i></b>&#160;filesystem, which simply provides an empty directory that serves as initial mount point.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="full-1"/>
<node CREATED="1390725988057" ID="ID_1447513140" MODIFIED="1390726027951" TEXT="init/do_mounts.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390716742061" ID="ID_1921989238" MODIFIED="1390721988624">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct file_system_type <b><font color="#6600ff"><i>rootfs_fs_type</i></font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.name&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &quot;rootfs&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.mount&#160;&#160;&#160;&#160;&#160;&#160;= <b><font color="#0000ff"><i>rootfs_mount</i></font></b>,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.kill_sb&#160;&#160;&#160;&#160;= kill_litter_super,
    </p>
    <p>
      };&#160;
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1390718037455" FOLDED="true" ID="ID_1296322323" MODIFIED="1390810597285">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      int __init <b><font color="#0000ff"><i>init_rootfs</i></font></b>(void)
    </p>
    <p>
      &#160;&#160;&#160;&#160;register_filesystem(&amp;<b><font color="#6600ff"><i>rootfs_fs_type</i></font></b>);
    </p>
    <p>
      &#160;&#160;&#160;&#160;init_ramfs_fs();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;register_filesystem(&amp;<b><font color="#6600ff"><i>ramfs_fs_type</i></font></b>);
    </p>
  </body>
</html></richcontent>
<node CREATED="1390718702219" ID="ID_351392478" MODIFIED="1390719734020">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct file_system_type <b><font color="#6600ff"><i>ramfs_fs_type</i></font></b>&#160;= {
    </p>
    <p>
      &#160;&#160;&#160;&#160;.name&#160;&#160;&#160;&#160;&#160;&#160;&#160;= &quot;ramfs&quot;,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.mount&#160;&#160;&#160;&#160;&#160;&#160;= ramfs_mount,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.kill_sb&#160;&#160;&#160;&#160;= ramfs_kill_sb,
    </p>
    <p>
      &#160;&#160;&#160;&#160;.fs_flags&#160;&#160;&#160;= FS_USERNS_MOUNT,
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1390719608619" ID="ID_1770638017" MODIFIED="1390725779748">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      static struct dentry *<b><font color="#0000ff"><i>rootfs_mount</i></font></b>(fs_type, flags, dev_name, data)
    </p>
    <p>
      &#160;&#160;&#160;&#160;mount_nodev(fs_type, flags, data, ramfs_fill_super);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;struct super_block *s;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;s = sget(fs_type, NULL, set_anon_super, flags, NULL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;s = alloc_super(type, flags);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;kzalloc(sizeof(<b><font color="#ff0000"><i>struct super_block</i></font></b>),&#160;&#160;GFP_USER);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;set_anon_super(s, data);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;s-&gt;s_type = type;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;strlcpy(s-&gt;s_id, type-&gt;name, sizeof(s-&gt;s_id));
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>list_add_tail(&amp;<font color="#ff33ff">s-&gt;s_list</font>, &amp;<font color="#ff33ff">super_blocks</font>);</i></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>hlist_add_head(&amp;<font color="#009900">s-&gt;s_instances</font>, &amp;<font color="#009900">type-&gt;fs_supers</font>);</i></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;ramfs_fill_super(s, data, flags &amp; MS_SILENT ? 1 : 0);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;struct inode *inode;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;inode = ramfs_get_inode(sb, ...);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;kmem_cache_alloc(<b><font color="#ff0000"><i>inode_cachep</i></font></b>, GFP_KERNEL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;inode-&gt;i_sb = sb;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>&#160;list_add(&amp;<font color="#0000ff">inode-&gt;i_sb_list</font>, &amp;<font color="#0000ff">inode-&gt;i_sb-&gt;s_inodes</font>);</i></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;sb-&gt;s_root = d_make_root(inode);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;...
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;kmem_cache_alloc(<b><font color="#ff0000"><i>dentry_cache</i></font></b>, GFP_KERNEL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><i>hlist_add_head(&amp;<font color="#ff9900">dentry-&gt;d_alias</font>, &amp;<font color="#ff9900">inode-&gt;i_dentry</font>);</i></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;dentry-&gt;d_inode = inode;
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;return dget(<b><i>s-&gt;s_root</i></b>);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1390715857104" FOLDED="true" ID="ID_1678381492" MODIFIED="1390810597287" TEXT="The kernel mounts the real root filesystem over the empty directory.">
<icon BUILTIN="full-2"/>
<node CREATED="1390725988057" ID="ID_1412475266" MODIFIED="1390726027951" TEXT="init/do_mounts.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390789538625" ID="ID_1202772895" MODIFIED="1390792387676">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      prepare_namespace()
    </p>
    <p>
      &#160;&#160;&#160;&#160;mount_root()
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#ff0000"><i>create_dev</i></font><i>(&quot;/dev/root&quot;, ROOT_DEV);</i></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;sys_mknod();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;mount_block_root(&quot;/dev/root&quot;, root_mountflags);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;get_fs_names(fs_names);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;do_mount_root();
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>&#160;&#160;&#160;&#160;<font color="#ff0000">sys_mount</font>(&quot;/dev/root&quot;, &quot;/root&quot;, fs, flags, data); </i></b>
    </p>
    <p>
      <b><i>&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; </i></b>&#160;&#160;&#160;&#160;sys_chdir(&quot;/root&quot;);
    </p>
    <p>
      &#160;&#160;&#160;&#160;sys_mount(&quot;.&quot;, &quot;/&quot;, NULL, MS_MOVE, NULL);
    </p>
    <p>
      &#160;&#160;&#160;&#160;sys_chroot(&quot;.&quot;)
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1390795376383" FOLDED="true" ID="ID_1295606713" MODIFIED="1391850406803" TEXT="Unmounting a Filesystem">
<node CREATED="1390466770036" ID="ID_1131833807" MODIFIED="1390539625013" TEXT="fs/namespace.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390795430111" ID="ID_1404176747" MODIFIED="1390795480067">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      SYSCALL_DEFINE2(<b><font color="#ff0000"><i>umount</i></font></b>, char __user *, name, int, flags)
    </p>
  </body>
</html></richcontent>
</node>
<node CREATED="1390795496731" ID="ID_781774070" MODIFIED="1390796556613">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      <b><font color="#ff0000"><i>do_umount</i></font></b>(mnt, flags)
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct super_block *sb = mnt-&gt;mnt.mnt_sb;
    </p>
    <p>
      &#160;&#160;&#160;&#160;sb-&gt;s_op-&gt;umount_begin(sb);
    </p>
    <p>
      &#160;&#160;&#160;&#160;do_remount_sb(sb, MS_RDONLY, NULL, 0);
    </p>
    <p>
      &#160;&#160;&#160; <b><i>umount_tree</i></b>(mnt, 2);
    </p>
  </body>
</html></richcontent>
</node>
</node>
</node>
<node CREATED="1390806941757" FOLDED="true" ID="ID_1020061402" MODIFIED="1391846426096" POSITION="right" TEXT="VFS System Calls">
<node CREATED="1390808421418" ID="ID_1535044358" MODIFIED="1390808427617" TEXT="$ cp /floppy/TEST /tmp/test">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1390808325603" ID="ID_612790801" MODIFIED="1390808371712">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <img src="kernel/fs/vfs-operation.jpg" />
  </body>
</html></richcontent>
</node>
<node CREATED="1390797145579" FOLDED="true" ID="ID_1345245329" MODIFIED="1390810597288" TEXT="Pathname Lookup">
<node CREATED="1390797228437" ID="ID_1730871698" MODIFIED="1390804945709">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      How it derives an <b><font color="#ff0000"><i>inode</i></font></b>&#160;from the corresponding file pathname.
    </p>
  </body>
</html></richcontent>
<icon BUILTIN="idea"/>
</node>
<node CREATED="1390804515032" ID="ID_1295065751" MODIFIED="1390804536052" TEXT="include/linux/namei.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390804516976" FOLDED="true" ID="ID_1860249032" MODIFIED="1390810597288">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff"><i>nameidata</i></font></b>&#160;{
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><i>struct path <font color="#6600ff">path</font>;</i></b>
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct qstr last;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct path root;
    </p>
    <p>
      &#160;&#160;&#160;&#160;struct inode&#160;&#160;&#160;&#160;*inode; /* path.dentry.d_inode */
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned int&#160;&#160;&#160;&#160;flags;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned&#160;&#160;&#160;&#160;seq, m_seq;
    </p>
    <p>
      &#160;&#160;&#160;&#160;int&#160;&#160;&#160;&#160;&#160;last_type;
    </p>
    <p>
      &#160;&#160;&#160;&#160;unsigned&#160;&#160;&#160;&#160;depth;
    </p>
    <p>
      &#160;&#160;&#160;&#160;char *saved_names[MAX_NESTED_LINKS + 1];
    </p>
    <p>
      };
    </p>
  </body>
</html></richcontent>
<node CREATED="1390804414918" ID="ID_1409903065" MODIFIED="1390804471865" TEXT="include/linux/path.h">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390804448298" ID="ID_1135010221" MODIFIED="1390804814053">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      struct <b><font color="#6600ff"><i>path</i></font></b>&#160;{
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
<node CREATED="1390804399572" ID="ID_140812146" MODIFIED="1390804412946" TEXT="fs/namei.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390797224885" ID="ID_7807152" MODIFIED="1390807602529">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      vfs_path_lookup(dentry, mnt, name, flags, <b><font color="#6600ff"><i>path</i></font></b>)
    </p>
    <p>
      &#160;&#160;&#160;&#160;<b><font color="#6600ff"><i>struct nameidata nd;</i></font></b>&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;nd.root.dentry = dentry;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;nd.root.mnt = mnt;&#160;&#160;&#160;&#160;&#160;&#160;&#160;
    </p>
    <p>
      &#160;&#160;&#160;&#160;do_path_lookup(AT_FDCWD, name, flags | LOOKUP_ROOT, &amp;nd);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;filename_lookup(dfd, &amp;filename, flags, nd);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><font color="#ff0000"><i>path_lookupat</i></font></b>(dfd, name-&gt;name, flags | LOOKUP_RCU, nd);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>path_init</i></b>(dfd, name, flags | LOOKUP_PARENT, nd, &amp;base);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>link_path_walk</i></b>(name, nd);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>lookup_last</i></b>(nd, &amp;path);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><i>follow_link</i></b>(&amp;link, nd, &amp;cookie);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><i>complete_walk</i></b>(nd);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1390806966677" FOLDED="true" ID="ID_519837347" MODIFIED="1390810597288" TEXT="open()">
<node CREATED="1390807002602" ID="ID_917440337" MODIFIED="1390807022860" TEXT="fs/open.c">
<font BOLD="true" ITALIC="true" NAME="SansSerif" SIZE="12"/>
<icon BUILTIN="attach"/>
</node>
<node CREATED="1390807025275" ID="ID_66555935" MODIFIED="1390807610358">
<richcontent TYPE="NODE"><html>
  <head>
    
  </head>
  <body>
    <p>
      SYSCALL_DEFINE3(<b><font color="#ff0000"><i>open</i></font></b>, const char __user *, filename, int, flags, umode_t, mode)
    </p>
    <p>
      &#160;&#160;&#160;&#160;do_sys_open(AT_FDCWD, filename, flags, mode);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;do_filp_open(dfd, tmp, &amp;op);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><font color="#ff0000"><i>path_openat</i></font></b>(dfd, pathname, &amp;nd, op, flags | LOOKUP_RCU);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>path_init</i></b>(dfd, pathname-&gt;name, flags | LOOKUP_PARENT, nd, &amp;base);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>link_path_walk</i></b>(pathname-&gt;name, nd);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;<b><i>do_last</i></b>(nd, &amp;path, file, op, &amp;opened, pathname);
    </p>
    <p>
      &#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160;&#160; <b><i>follow_link</i></b>(&amp;link, nd, &amp;cookie);
    </p>
  </body>
</html></richcontent>
</node>
</node>
<node CREATED="1390806992034" ID="ID_276835583" MODIFIED="1390806994390" TEXT="read()"/>
<node CREATED="1390806995089" ID="ID_976246064" MODIFIED="1390806997221" TEXT="write()"/>
<node CREATED="1390806997898" ID="ID_733685696" MODIFIED="1390806999933" TEXT="close()"/>
</node>
</node>
</map>
