.class final Lcom/android/server/am/ActiveServices$AppOpCallback;
.super Ljava/lang/Object;
.source "ActiveServices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/ActiveServices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppOpCallback"
.end annotation


# static fields
.field private static final LOGGED_AP_OPS:[I


# instance fields
.field private final mAcceptedOps:Landroid/util/SparseIntArray;

.field private final mAppOpModes:Landroid/util/SparseIntArray;

.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private final mCounterLock:Ljava/lang/Object;

.field private mDestroyed:Z

.field private mNumFgs:I

.field private final mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedListener;

.field private final mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

.field private final mProcessRecord:Lcom/android/server/am/ProcessRecord;

.field private final mRejectedOps:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1809
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1b
        0x1a
    .end array-data
.end method

.method constructor <init>(Lcom/android/server/am/ProcessRecord;Landroid/app/AppOpsManager;)V
    .locals 6
    .param p1, "r"    # Lcom/android/server/am/ProcessRecord;
    .param p2, "appOpsManager"    # Landroid/app/AppOpsManager;

    .line 1851
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1819
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    .line 1822
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    .line 1826
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    .line 1832
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    .line 1838
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    .line 1846
    iput-boolean v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    .line 1860
    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback$1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$AppOpCallback$1;-><init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedListener;

    .line 1868
    new-instance v1, Lcom/android/server/am/ActiveServices$AppOpCallback$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/ActiveServices$AppOpCallback$2;-><init>(Lcom/android/server/am/ActiveServices$AppOpCallback;)V

    iput-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    .line 1852
    iput-object p1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    .line 1853
    iput-object p2, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1854
    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget v3, v1, v0

    .line 1855
    .local v3, "op":I
    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v3, v4, v5}, Landroid/app/AppOpsManager;->unsafeCheckOpRawNoThrow(IILjava/lang/String;)I

    move-result v4

    .line 1856
    .local v4, "mode":I
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v3, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 1854
    .end local v3    # "op":I
    .end local v4    # "mode":I
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1858
    :cond_0
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/ActiveServices$AppOpCallback;III)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/am/ActiveServices$AppOpCallback;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .line 1807
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/ActiveServices$AppOpCallback;->incrementOpCountIfNeeded(III)V

    return-void
.end method

.method private incrementOpCount(IZ)V
    .locals 5
    .param p1, "op"    # I
    .param p2, "allowed"    # Z

    .line 1887
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1888
    if-eqz p2, :cond_0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    .line 1889
    .local v1, "counter":Landroid/util/SparseIntArray;
    :goto_0
    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    .line 1890
    .local v2, "index":I
    const/4 v3, 0x1

    if-gez v2, :cond_1

    .line 1891
    invoke-virtual {v1, p1, v3}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 1893
    :cond_1
    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    add-int/2addr v4, v3

    invoke-virtual {v1, v2, v4}, Landroid/util/SparseIntArray;->setValueAt(II)V

    .line 1895
    .end local v1    # "counter":Landroid/util/SparseIntArray;
    .end local v2    # "index":I
    :goto_1
    monitor-exit v0

    .line 1896
    return-void

    .line 1895
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private incrementOpCountIfNeeded(III)V
    .locals 1
    .param p1, "op"    # I
    .param p2, "uid"    # I
    .param p3, "result"    # I

    .line 1877
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget v0, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne p2, v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isNotTop()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1878
    if-nez p3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->incrementOpCount(IZ)V

    .line 1880
    :cond_1
    return-void
.end method

.method private isNotTop()Z
    .locals 2

    .line 1883
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private logFinalValues()V
    .locals 13

    .line 1929
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mCounterLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1930
    :try_start_0
    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget v4, v1, v3

    .line 1931
    .local v4, "op":I
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAcceptedOps:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    move v11, v5

    .line 1932
    .local v11, "acceptances":I
    iget-object v5, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mRejectedOps:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v5

    move v12, v5

    .line 1933
    .local v12, "rejections":I
    if-gtz v11, :cond_0

    if-lez v12, :cond_1

    .line 1934
    :cond_0
    const/16 v5, 0x100

    iget-object v6, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mProcessRecord:Lcom/android/server/am/ProcessRecord;

    iget v6, v6, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v7, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpModes:Landroid/util/SparseIntArray;

    .line 1937
    invoke-virtual {v7, v4}, Landroid/util/SparseIntArray;->get(I)I

    move-result v7

    invoke-static {v7}, Lcom/android/server/am/ActiveServices$AppOpCallback;->modeToEnum(I)I

    move-result v8

    .line 1934
    move v7, v4

    move v9, v11

    move v10, v12

    invoke-static/range {v5 .. v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIIII)V

    .line 1930
    .end local v4    # "op":I
    .end local v11    # "acceptances":I
    .end local v12    # "rejections":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1942
    :cond_2
    monitor-exit v0

    .line 1943
    return-void

    .line 1942
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private static modeToEnum(I)I
    .locals 1
    .param p0, "mode"    # I

    .line 1947
    const/4 v0, 0x1

    if-eqz p0, :cond_2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 1954
    const/4 v0, 0x0

    return v0

    .line 1952
    :cond_0
    const/4 v0, 0x3

    return v0

    .line 1950
    :cond_1
    const/4 v0, 0x2

    return v0

    .line 1948
    :cond_2
    return v0
.end method


# virtual methods
.method isObsoleteLocked()Z
    .locals 1

    .line 1925
    iget-boolean v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    return v0
.end method

.method registerLocked()V
    .locals 3

    .line 1899
    invoke-virtual {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->isObsoleteLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1900
    const-string v0, "ActivityManager"

    const-string v1, "Trying to register on a stale AppOpCallback."

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    return-void

    .line 1903
    :cond_0
    iget v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    .line 1904
    if-ne v0, v1, :cond_1

    .line 1905
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->startWatchingNoted([ILandroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 1906
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    sget-object v1, Lcom/android/server/am/ActiveServices$AppOpCallback;->LOGGED_AP_OPS:[I

    iget-object v2, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AppOpsManager;->startWatchingStarted([ILandroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 1908
    :cond_1
    return-void
.end method

.method unregisterLocked()V
    .locals 2

    .line 1911
    iget v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mNumFgs:I

    .line 1912
    if-gtz v0, :cond_0

    .line 1913
    iput-boolean v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mDestroyed:Z

    .line 1914
    invoke-direct {p0}, Lcom/android/server/am/ActiveServices$AppOpCallback;->logFinalValues()V

    .line 1915
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpNotedCallback:Landroid/app/AppOpsManager$OnOpNotedListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingNoted(Landroid/app/AppOpsManager$OnOpNotedListener;)V

    .line 1916
    iget-object v0, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v1, p0, Lcom/android/server/am/ActiveServices$AppOpCallback;->mOpStartedCallback:Landroid/app/AppOpsManager$OnOpStartedListener;

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->stopWatchingStarted(Landroid/app/AppOpsManager$OnOpStartedListener;)V

    .line 1918
    :cond_0
    return-void
.end method
