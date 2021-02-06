.class final Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;
.super Ljava/lang/Object;
.source "HistoricalRegistry.java"

# interfaces
.implements Landroid/app/AppOpsManager$HistoricalOpsVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appop/HistoricalRegistry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "StringDumpVisitor"
.end annotation


# instance fields
.field private final mAttributionPrefix:Ljava/lang/String;

.field private final mDate:Ljava/util/Date;

.field private final mDateFormatter:Ljava/text/SimpleDateFormat;

.field private final mEntryPrefix:Ljava/lang/String;

.field private final mFilter:I

.field private final mFilterAttributionTag:Ljava/lang/String;

.field private final mFilterOp:I

.field private final mFilterPackage:Ljava/lang/String;

.field private final mFilterUid:I

.field private final mNow:J

.field private final mOpsPrefix:Ljava/lang/String;

.field private final mPackagePrefix:Ljava/lang/String;

.field private final mUidPrefix:Ljava/lang/String;

.field private final mUidStatePrefix:Ljava/lang/String;

.field private final mWriter:Ljava/io/PrintWriter;

.field final synthetic this$0:Lcom/android/server/appop/HistoricalRegistry;


# direct methods
.method constructor <init>(Lcom/android/server/appop/HistoricalRegistry;Ljava/lang/String;Ljava/io/PrintWriter;ILjava/lang/String;Ljava/lang/String;II)V
    .locals 2
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "writer"    # Ljava/io/PrintWriter;
    .param p4, "filterUid"    # I
    .param p5, "filterPackage"    # Ljava/lang/String;
    .param p6, "filterAttributionTag"    # Ljava/lang/String;
    .param p7, "filterOp"    # I
    .param p8, "filter"    # I

    .line 1754
    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->this$0:Lcom/android/server/appop/HistoricalRegistry;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1733
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mNow:J

    .line 1735
    new-instance p1, Ljava/text/SimpleDateFormat;

    const-string/jumbo v0, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {p1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDateFormatter:Ljava/text/SimpleDateFormat;

    .line 1737
    new-instance p1, Ljava/util/Date;

    invoke-direct {p1}, Ljava/util/Date;-><init>()V

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    .line 1755
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "  "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mOpsPrefix:Ljava/lang/String;

    .line 1756
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mOpsPrefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    .line 1757
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mPackagePrefix:Ljava/lang/String;

    .line 1758
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mPackagePrefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mAttributionPrefix:Ljava/lang/String;

    .line 1759
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mAttributionPrefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mEntryPrefix:Ljava/lang/String;

    .line 1760
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mEntryPrefix:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    .line 1761
    iput-object p3, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    .line 1762
    iput p4, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterUid:I

    .line 1763
    iput-object p5, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterPackage:Ljava/lang/String;

    .line 1764
    iput-object p6, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterAttributionTag:Ljava/lang/String;

    .line 1765
    iput p7, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterOp:I

    .line 1766
    iput p8, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilter:I

    .line 1767
    return-void
.end method


# virtual methods
.method public visitHistoricalAttributionOps(Landroid/app/AppOpsManager$AttributedHistoricalOps;)V
    .locals 2
    .param p1, "ops"    # Landroid/app/AppOpsManager$AttributedHistoricalOps;

    .line 1816
    iget v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilter:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterPackage:Ljava/lang/String;

    .line 1817
    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v1

    .line 1816
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1818
    return-void

    .line 1820
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mAttributionPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1821
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Attribution "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1822
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$AttributedHistoricalOps;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1823
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1824
    return-void
.end method

.method public visitHistoricalOp(Landroid/app/AppOpsManager$HistoricalOp;)V
    .locals 22
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOp;

    .line 1828
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilter:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    iget v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterOp:I

    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 1829
    return-void

    .line 1831
    :cond_0
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mEntryPrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1832
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOp;->getOpCode()I

    move-result v3

    invoke-static {v3}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1833
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1834
    invoke-virtual/range {p1 .. p1}, Landroid/app/AppOpsManager$HistoricalOp;->collectKeys()Landroid/util/LongSparseArray;

    move-result-object v2

    .line 1835
    .local v2, "keys":Landroid/util/LongSparseArray;
    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    .line 1836
    .local v3, "keyCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_8

    .line 1837
    invoke-virtual {v2, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v5

    .line 1838
    .local v5, "key":J
    invoke-static {v5, v6}, Landroid/app/AppOpsManager;->extractUidStateFromKey(J)I

    move-result v7

    .line 1839
    .local v7, "uidState":I
    invoke-static {v5, v6}, Landroid/app/AppOpsManager;->extractFlagsFromKey(J)I

    move-result v8

    .line 1840
    .local v8, "flags":I
    const/4 v9, 0x0

    .line 1841
    .local v9, "printedUidState":Z
    invoke-virtual {v1, v7, v7, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessCount(III)J

    move-result-wide v10

    .line 1842
    .local v10, "accessCount":J
    const-wide/16 v12, 0x0

    cmp-long v14, v10, v12

    const-string v15, " = "

    if-lez v14, :cond_2

    .line 1843
    if-nez v9, :cond_1

    .line 1844
    iget-object v14, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v12, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    invoke-virtual {v14, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1845
    iget-object v12, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v5, v6}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1846
    iget-object v12, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v12, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1847
    const/4 v9, 0x1

    .line 1849
    :cond_1
    iget-object v12, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v13, "access="

    invoke-virtual {v12, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1850
    iget-object v12, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v12, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 1852
    :cond_2
    invoke-virtual {v1, v7, v7, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getRejectCount(III)J

    move-result-wide v12

    .line 1853
    .local v12, "rejectCount":J
    const-wide/16 v16, 0x0

    cmp-long v14, v12, v16

    move-object/from16 v18, v2

    .end local v2    # "keys":Landroid/util/LongSparseArray;
    .local v18, "keys":Landroid/util/LongSparseArray;
    const-string v2, ", "

    if-lez v14, :cond_4

    .line 1854
    if-nez v9, :cond_3

    .line 1855
    iget-object v14, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    move/from16 v19, v3

    .end local v3    # "keyCount":I
    .local v19, "keyCount":I
    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    invoke-virtual {v14, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1856
    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v5, v6}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1857
    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1858
    const/4 v9, 0x1

    goto :goto_1

    .line 1860
    .end local v19    # "keyCount":I
    .restart local v3    # "keyCount":I
    :cond_3
    move/from16 v19, v3

    .end local v3    # "keyCount":I
    .restart local v19    # "keyCount":I
    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1862
    :goto_1
    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v14, "reject="

    invoke-virtual {v3, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1863
    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3, v12, v13}, Ljava/io/PrintWriter;->print(J)V

    goto :goto_2

    .line 1853
    .end local v19    # "keyCount":I
    .restart local v3    # "keyCount":I
    :cond_4
    move/from16 v19, v3

    .line 1865
    .end local v3    # "keyCount":I
    .restart local v19    # "keyCount":I
    :goto_2
    move-wide/from16 v20, v10

    .end local v10    # "accessCount":J
    .local v20, "accessCount":J
    invoke-virtual {v1, v7, v7, v8}, Landroid/app/AppOpsManager$HistoricalOp;->getAccessDuration(III)J

    move-result-wide v10

    .line 1866
    .local v10, "accessDuration":J
    const-wide/16 v16, 0x0

    cmp-long v3, v10, v16

    if-lez v3, :cond_6

    .line 1867
    if-nez v9, :cond_5

    .line 1868
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidStatePrefix:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1869
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v5, v6}, Landroid/app/AppOpsManager;->keyToString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1870
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v2, v15}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1871
    const/4 v9, 0x1

    goto :goto_3

    .line 1873
    :cond_5
    iget-object v3, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v3, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1875
    :goto_3
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v3, "duration="

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1876
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v10, v11, v2}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1878
    :cond_6
    if-eqz v9, :cond_7

    .line 1879
    iget-object v2, v0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1836
    .end local v5    # "key":J
    .end local v7    # "uidState":I
    .end local v8    # "flags":I
    .end local v9    # "printedUidState":Z
    .end local v10    # "accessDuration":J
    .end local v12    # "rejectCount":J
    .end local v20    # "accessCount":J
    :cond_7
    add-int/lit8 v4, v4, 0x1

    move-object/from16 v2, v18

    move/from16 v3, v19

    goto/16 :goto_0

    .line 1882
    .end local v4    # "i":I
    .end local v18    # "keys":Landroid/util/LongSparseArray;
    .end local v19    # "keyCount":I
    .restart local v2    # "keys":Landroid/util/LongSparseArray;
    .restart local v3    # "keyCount":I
    :cond_8
    return-void
.end method

.method public visitHistoricalOps(Landroid/app/AppOpsManager$HistoricalOps;)V
    .locals 6
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalOps;

    .line 1771
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1772
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mOpsPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1773
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string/jumbo v1, "snapshot:"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1774
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1775
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "begin = "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1776
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Date;->setTime(J)V

    .line 1777
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDateFormatter:Ljava/text/SimpleDateFormat;

    iget-object v2, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1778
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "  ("

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1779
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getBeginTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mNow:J

    sub-long/2addr v2, v4

    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v2, v3, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1780
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1781
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1782
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v3, "end = "

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1783
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 1784
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDateFormatter:Ljava/text/SimpleDateFormat;

    iget-object v4, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mDate:Ljava/util/Date;

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1785
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalOps;->getEndTimeMillis()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mNow:J

    sub-long/2addr v0, v3

    iget-object v3, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-static {v0, v1, v3}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1787
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1788
    return-void
.end method

.method public visitHistoricalPackageOps(Landroid/app/AppOpsManager$HistoricalPackageOps;)V
    .locals 2
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalPackageOps;

    .line 1804
    iget v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilter:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterPackage:Ljava/lang/String;

    .line 1805
    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1804
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1806
    return-void

    .line 1808
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mPackagePrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1809
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Package "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1810
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalPackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1811
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1812
    return-void
.end method

.method public visitHistoricalUidOps(Landroid/app/AppOpsManager$HistoricalUidOps;)V
    .locals 2
    .param p1, "ops"    # Landroid/app/AppOpsManager$HistoricalUidOps;

    .line 1792
    iget v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilter:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mFilterUid:I

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1793
    return-void

    .line 1795
    :cond_0
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 1796
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    iget-object v1, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mUidPrefix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1797
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, "Uid "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1798
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Landroid/app/AppOpsManager$HistoricalUidOps;->getUid()I

    move-result v1

    invoke-static {v0, v1}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 1799
    iget-object v0, p0, Lcom/android/server/appop/HistoricalRegistry$StringDumpVisitor;->mWriter:Ljava/io/PrintWriter;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1800
    return-void
.end method
