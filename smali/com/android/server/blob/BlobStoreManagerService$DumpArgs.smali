.class final Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;
.super Ljava/lang/Object;
.source "BlobStoreManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStoreManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "DumpArgs"
.end annotation


# static fields
.field private static final FLAG_DUMP_BLOBS:I = 0x2

.field private static final FLAG_DUMP_CONFIG:I = 0x4

.field private static final FLAG_DUMP_SESSIONS:I = 0x1


# instance fields
.field private mDumpAll:Z

.field private final mDumpBlobIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpHelp:Z

.field private final mDumpPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDumpUids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mDumpUnredacted:Z

.field private final mDumpUserIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectedSectionFlags:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1762
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1684
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    .line 1685
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    .line 1686
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    .line 1687
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 1762
    return-void
.end method

.method static synthetic access$2500(Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;
    .param p1, "x1"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1677
    invoke-direct {p0, p1}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->dumpArgsUsage(Lcom/android/internal/util/IndentingPrintWriter;)V

    return-void
.end method

.method private dumpArgsUsage(Lcom/android/internal/util/IndentingPrintWriter;)V
    .locals 1
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;

    .line 1837
    const-string v0, "--help | -h"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1838
    const-string v0, "Dump this help text"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1839
    const-string v0, "--sessions"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1840
    const-string v0, "Dump only the sessions info"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1841
    const-string v0, "--blobs"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1842
    const-string v0, "Dump only the committed blobs info"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1843
    const-string v0, "--config"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1844
    const-string v0, "Dump only the config values"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1845
    const-string v0, "--package | -p [package-name]"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1846
    const-string v0, "Dump blobs info associated with the given package"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1847
    const-string v0, "--uid | -u [uid]"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1848
    const-string v0, "Dump blobs info associated with the given uid"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1849
    const-string v0, "--user [user-id]"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1850
    const-string v0, "Dump blobs info in the given user"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1851
    const-string v0, "--blob | -b [session-id | blob-id]"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1852
    const-string v0, "Dump blob info corresponding to the given ID"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1853
    const-string v0, "--full | -f"

    invoke-virtual {p1, v0}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1854
    const-string v0, "Dump full unredacted blobs data"

    invoke-direct {p0, p1, v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->printWithIndent(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V

    .line 1855
    return-void
.end method

.method private static getIntArgRequired([Ljava/lang/String;ILjava/lang/String;)I
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "argName"    # Ljava/lang/String;

    .line 1811
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 1816
    :try_start_0
    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1819
    .local v0, "value":I
    nop

    .line 1820
    return v0

    .line 1817
    .end local v0    # "value":I
    :catch_0
    move-exception v0

    .line 1818
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1812
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getLongArgRequired([Ljava/lang/String;ILjava/lang/String;)J
    .locals 4
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "argName"    # Ljava/lang/String;

    .line 1824
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 1829
    :try_start_0
    aget-object v0, p0, p1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1832
    .local v0, "value":J
    nop

    .line 1833
    return-wide v0

    .line 1830
    .end local v0    # "value":J
    :catch_0
    move-exception v0

    .line 1831
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1825
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static getStringArgRequired([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "args"    # [Ljava/lang/String;
    .param p1, "index"    # I
    .param p2, "argName"    # Ljava/lang/String;

    .line 1804
    array-length v0, p0

    if-ge p1, v0, :cond_0

    .line 1807
    aget-object v0, p0, p1

    return-object v0

    .line 1805
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static parse([Ljava/lang/String;)Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;

    .line 1765
    new-instance v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;

    invoke-direct {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;-><init>()V

    .line 1766
    .local v0, "dumpArgs":Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;
    if-nez p0, :cond_0

    .line 1767
    return-object v0

    .line 1770
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_12

    .line 1771
    aget-object v2, p0, v1

    .line 1772
    .local v2, "opt":Ljava/lang/String;
    const-string v3, "--all"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_11

    const-string v3, "-a"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_5

    .line 1774
    :cond_1
    const-string v3, "--unredacted"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_e

    const-string v3, "-u"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_4

    .line 1779
    :cond_2
    const-string v3, "--sessions"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1780
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->allowDumpSessions()V

    goto/16 :goto_6

    .line 1781
    :cond_3
    const-string v3, "--blobs"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1782
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->allowDumpBlobs()V

    goto/16 :goto_6

    .line 1783
    :cond_4
    const-string v3, "--config"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1784
    invoke-virtual {v0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->allowDumpConfig()V

    goto/16 :goto_6

    .line 1785
    :cond_5
    const-string v3, "--package"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d

    const-string v3, "-p"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    goto/16 :goto_3

    .line 1787
    :cond_6
    const-string v3, "--uid"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1788
    iget-object v3, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v5, "uid"

    invoke-static {p0, v1, v5}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getIntArgRequired([Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 1789
    :cond_7
    const-string v3, "--user"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1790
    iget-object v3, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v5, "userId"

    invoke-static {p0, v1, v5}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getIntArgRequired([Ljava/lang/String;ILjava/lang/String;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1791
    :cond_8
    const-string v3, "--blob"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, "blobId"

    if-nez v3, :cond_c

    const-string v3, "-b"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_2

    .line 1793
    :cond_9
    const-string v3, "--help"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "-h"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    goto :goto_1

    .line 1797
    :cond_a
    iget-object v3, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    invoke-static {p0, v1, v5}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getLongArgRequired([Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1794
    :cond_b
    :goto_1
    iput-boolean v4, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpHelp:Z

    goto :goto_6

    .line 1792
    :cond_c
    :goto_2
    iget-object v3, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    invoke-static {p0, v1, v5}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getLongArgRequired([Ljava/lang/String;ILjava/lang/String;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1786
    :cond_d
    :goto_3
    iget-object v3, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    add-int/lit8 v1, v1, 0x1

    const-string/jumbo v5, "packageName"

    invoke-static {p0, v1, v5}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->getStringArgRequired([Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 1775
    :cond_e
    :goto_4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1776
    .local v3, "callingUid":I
    const/16 v5, 0x7d0

    if-eq v3, v5, :cond_f

    if-nez v3, :cond_10

    .line 1777
    :cond_f
    iput-boolean v4, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUnredacted:Z

    .line 1779
    .end local v3    # "callingUid":I
    :cond_10
    goto :goto_6

    .line 1773
    :cond_11
    :goto_5
    iput-boolean v4, v0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpAll:Z

    .line 1770
    .end local v2    # "opt":Ljava/lang/String;
    :goto_6
    add-int/2addr v1, v4

    goto/16 :goto_0

    .line 1800
    .end local v1    # "i":I
    :cond_12
    return-object v0
.end method

.method private printWithIndent(Lcom/android/internal/util/IndentingPrintWriter;Ljava/lang/String;)V
    .locals 0
    .param p1, "pw"    # Lcom/android/internal/util/IndentingPrintWriter;
    .param p2, "str"    # Ljava/lang/String;

    .line 1858
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1859
    invoke-virtual {p1, p2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 1860
    invoke-virtual {p1}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    .line 1861
    return-void
.end method


# virtual methods
.method public allowDumpBlobs()V
    .locals 1

    .line 1723
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 1724
    return-void
.end method

.method public allowDumpConfig()V
    .locals 1

    .line 1734
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 1735
    return-void
.end method

.method public allowDumpSessions()V
    .locals 1

    .line 1712
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    .line 1713
    return-void
.end method

.method public shouldDumpAllSections()Z
    .locals 1

    .line 1708
    iget-boolean v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpAll:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public shouldDumpBlob(J)Z
    .locals 2
    .param p1, "blobId"    # J

    .line 1745
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 1746
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1745
    :goto_1
    return v0
.end method

.method public shouldDumpBlobs()Z
    .locals 2

    .line 1727
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1728
    return v1

    .line 1730
    :cond_0
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public shouldDumpConfig()Z
    .locals 2

    .line 1738
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1739
    return v1

    .line 1741
    :cond_0
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public shouldDumpFull()Z
    .locals 1

    .line 1750
    iget-boolean v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUnredacted:Z

    return v0
.end method

.method public shouldDumpHelp()Z
    .locals 1

    .line 1759
    iget-boolean v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpHelp:Z

    return v0
.end method

.method public shouldDumpSession(Ljava/lang/String;IJ)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "blobId"    # J

    .line 1692
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpPackages:Ljava/util/ArrayList;

    .line 1693
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_0

    .line 1694
    return v1

    .line 1696
    :cond_0
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUids:Ljava/util/ArrayList;

    .line 1697
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_1

    .line 1698
    return v1

    .line 1700
    :cond_1
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpBlobIds:Ljava/util/ArrayList;

    .line 1701
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_2

    .line 1702
    return v1

    .line 1704
    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public shouldDumpSessions()Z
    .locals 2

    .line 1716
    invoke-virtual {p0}, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->shouldDumpAllSections()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 1717
    return v1

    .line 1719
    :cond_0
    iget v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mSelectedSectionFlags:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public shouldDumpUser(I)Z
    .locals 2
    .param p1, "userId"    # I

    .line 1754
    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    invoke-static {v0}, Lcom/android/internal/util/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/blob/BlobStoreManagerService$DumpArgs;->mDumpUserIds:Ljava/util/ArrayList;

    .line 1755
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 1754
    :goto_1
    return v0
.end method
