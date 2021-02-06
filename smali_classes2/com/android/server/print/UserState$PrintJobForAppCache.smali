.class final Lcom/android/server/print/UserState$PrintJobForAppCache;
.super Ljava/lang/Object;
.source "UserState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/print/UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintJobForAppCache"
.end annotation


# instance fields
.field private final mPrintJobsForRunningApp:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/print/UserState;


# direct methods
.method private constructor <init>(Lcom/android/server/print/UserState;)V
    .locals 0

    .line 1741
    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1742
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/print/UserState;Lcom/android/server/print/UserState$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/print/UserState;
    .param p2, "x1"    # Lcom/android/server/print/UserState$1;

    .line 1741
    invoke-direct {p0, p1}, Lcom/android/server/print/UserState$PrintJobForAppCache;-><init>(Lcom/android/server/print/UserState;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/print/UserState$PrintJobForAppCache;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 1741
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    return-object v0
.end method


# virtual methods
.method public dumpLocked(Lcom/android/internal/util/dump/DualDumpOutputStream;)V
    .locals 16
    .param p1, "dumpStream"    # Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 1835
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v8

    .line 1836
    .local v8, "bucketCount":I
    const/4 v1, 0x0

    move v9, v1

    .local v9, "i":I
    :goto_0
    if-ge v9, v8, :cond_1

    .line 1837
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v10

    .line 1838
    .local v10, "appId":I
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Ljava/util/List;

    .line 1839
    .local v11, "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    .line 1840
    .local v12, "printJobCount":I
    const/4 v1, 0x0

    move v13, v1

    .local v13, "j":I
    :goto_1
    if-ge v13, v12, :cond_0

    .line 1841
    const-wide v1, 0x20b00000005L

    const-string v3, "cached_print_jobs"

    invoke-virtual {v7, v3, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    move-result-wide v14

    .line 1844
    .local v14, "token":J
    const-wide v1, 0x10500000001L

    const-string v3, "app_id"

    invoke-virtual {v7, v3, v1, v2, v10}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 1846
    iget-object v1, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v1}, Lcom/android/server/print/UserState;->access$900(Lcom/android/server/print/UserState;)Landroid/content/Context;

    move-result-object v1

    const-wide v4, 0x10b00000002L

    .line 1847
    invoke-interface {v11, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/print/PrintJobInfo;

    .line 1846
    const-string v3, "print_job"

    move-object/from16 v2, p1

    invoke-static/range {v1 .. v6}, Lcom/android/internal/print/DumpUtils;->writePrintJobInfo(Landroid/content/Context;Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/lang/String;JLandroid/print/PrintJobInfo;)V

    .line 1849
    invoke-virtual {v7, v14, v15}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 1840
    .end local v14    # "token":J
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 1836
    .end local v10    # "appId":I
    .end local v11    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v12    # "printJobCount":I
    .end local v13    # "j":I
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 1852
    .end local v9    # "i":I
    :cond_1
    return-void
.end method

.method public getPrintJob(Landroid/print/PrintJobId;I)Landroid/print/PrintJobInfo;
    .locals 7
    .param p1, "printJobId"    # Landroid/print/PrintJobId;
    .param p2, "appId"    # I

    .line 1790
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1791
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1792
    .local v1, "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 1793
    monitor-exit v0

    return-object v2

    .line 1795
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 1796
    .local v3, "printJobCount":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1797
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/print/PrintJobInfo;

    .line 1798
    .local v5, "printJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v5}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1799
    monitor-exit v0

    return-object v5

    .line 1796
    .end local v5    # "printJob":Landroid/print/PrintJobInfo;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1802
    .end local v1    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v3    # "printJobCount":I
    .end local v4    # "i":I
    :cond_2
    monitor-exit v0

    .line 1803
    return-object v2

    .line 1802
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getPrintJobs(I)Ljava/util/List;
    .locals 6
    .param p1, "appId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/print/PrintJobInfo;",
            ">;"
        }
    .end annotation

    .line 1807
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1808
    const/4 v1, 0x0

    .line 1809
    .local v1, "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    const/4 v2, -0x2

    if-ne p1, v2, :cond_2

    .line 1810
    :try_start_0
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 1811
    .local v2, "bucketCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 1812
    iget-object v4, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1813
    .local v4, "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v1, :cond_0

    .line 1814
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v5

    .line 1816
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1811
    nop

    .end local v4    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1818
    .end local v2    # "bucketCount":I
    .end local v3    # "i":I
    :cond_1
    goto :goto_1

    .line 1819
    :cond_2
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 1820
    .local v2, "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-eqz v2, :cond_4

    .line 1821
    if-nez v1, :cond_3

    .line 1822
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object v1, v3

    .line 1824
    :cond_3
    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1827
    .end local v2    # "bucket":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    .line 1828
    monitor-exit v0

    return-object v1

    .line 1830
    :cond_5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 1831
    .end local v1    # "printJobs":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z
    .locals 3
    .param p1, "creator"    # Landroid/os/IBinder;
    .param p2, "appId"    # I
    .param p3, "printJob"    # Landroid/print/PrintJobInfo;

    .line 1748
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lcom/android/server/print/UserState$PrintJobForAppCache$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/print/UserState$PrintJobForAppCache$1;-><init>(Lcom/android/server/print/UserState$PrintJobForAppCache;Landroid/os/IBinder;I)V

    invoke-interface {p1, v1, v0}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1760
    nop

    .line 1761
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 1762
    :try_start_1
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 1763
    .local v0, "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v0, :cond_0

    .line 1764
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v2

    .line 1765
    iget-object v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1767
    :cond_0
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1768
    nop

    .end local v0    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    monitor-exit v1

    .line 1769
    const/4 v0, 0x1

    return v0

    .line 1768
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 1757
    :catch_0
    move-exception v1

    .line 1759
    .local v1, "re":Landroid/os/RemoteException;
    return v0
.end method

.method public onPrintJobStateChanged(Landroid/print/PrintJobInfo;)V
    .locals 7
    .param p1, "printJob"    # Landroid/print/PrintJobInfo;

    .line 1773
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1774
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache;->mPrintJobsForRunningApp:Landroid/util/SparseArray;

    .line 1775
    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getAppId()I

    move-result v2

    .line 1774
    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 1776
    .local v1, "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    if-nez v1, :cond_0

    .line 1777
    monitor-exit v0

    return-void

    .line 1779
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 1780
    .local v2, "printJobCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 1781
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/print/PrintJobInfo;

    .line 1782
    .local v4, "oldPrintJob":Landroid/print/PrintJobInfo;
    invoke-virtual {v4}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v5

    invoke-virtual {p1}, Landroid/print/PrintJobInfo;->getId()Landroid/print/PrintJobId;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/print/PrintJobId;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1783
    invoke-interface {v1, v3, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1780
    .end local v4    # "oldPrintJob":Landroid/print/PrintJobInfo;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1786
    .end local v1    # "printJobsForApp":Ljava/util/List;, "Ljava/util/List<Landroid/print/PrintJobInfo;>;"
    .end local v2    # "printJobCount":I
    .end local v3    # "i":I
    :cond_2
    monitor-exit v0

    .line 1787
    return-void

    .line 1786
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
