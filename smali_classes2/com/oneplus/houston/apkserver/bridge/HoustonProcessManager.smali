.class public Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
.super Ljava/lang/Object;
.source "HoustonProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$ConfigHandler;,
        Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$Instance;
    }
.end annotation


# static fields
.field private static final AI_BOOST_ALL_EXCEPT_BLACK_LIST:I = 0x2

.field private static final AI_BOOST_OFF:I = 0x0

.field private static final AI_BOOST_WHITE_LIST:I = 0x1

.field public static final EMPTY:[Ljava/lang/String;

.field private static final HT_ONLINE_CONFIG_UPDATE_PATH:Ljava/lang/String; = "/sys/module/houston/parameters/ht_online_config_update"

.field private static final INVALID_START_TIME:I = -0x1

.field private static final MAX_JANK_COUNT:I = 0x32

.field private static final MSG_HT_ONLINE_CONFIG_UPDATE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "HoustonProcessManager"


# instance fields
.field private mAiBoostController:I

.field private mAiPicker:Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;

.field private mBlackGameArray:[Ljava/lang/String;

.field private final mBoostedPids:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentPackage:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsAiFeatrueOn:Z

.field private mIsBoostAll:Z

.field private final mJankPackcages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;",
            ">;"
        }
    .end annotation
.end field

.field private mLock:Ljava/lang/Object;

.field private final mPackages:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;",
            ">;"
        }
    .end annotation
.end field

.field private mTopProcess:I

.field private mWhiteGameAdjustMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;",
            ">;"
        }
    .end annotation
.end field

.field private mWhiteGameArray:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 59
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->EMPTY:[Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    .line 48
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mJankPackcages:Ljava/util/ArrayList;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    .line 57
    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    .line 63
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameArray:[Ljava/lang/String;

    .line 64
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    .line 67
    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsBoostAll:Z

    .line 68
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    .line 69
    const/4 v1, 0x1

    iput v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    .line 70
    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsAiFeatrueOn:Z

    .line 81
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HoustonProcessManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "hthread":Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 83
    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$ConfigHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$ConfigHandler;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mHandler:Landroid/os/Handler;

    .line 84
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$1;

    .line 45
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    .line 45
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Ljava/lang/String;

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->writeSysFile(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private addToAiBoostWhite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;

    .line 634
    if-nez p1, :cond_0

    .line 635
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    .line 638
    .local v0, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    if-nez v0, :cond_1

    .line 639
    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    invoke-direct {v1, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 641
    :cond_1
    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/Param;

    invoke-direct {v1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    .local v1, "param":Lcom/oneplus/houston/apkserver/bridge/Param;
    invoke-virtual {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->addParam(Lcom/oneplus/houston/apkserver/bridge/Param;)V

    .line 643
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    return-void
.end method

.method private addToBlackArray(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 647
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 648
    .local v0, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 649
    aget-object v2, v2, v1

    .line 650
    .local v2, "pkgName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "black["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HoustonProcessManager"

    invoke-static {v4, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    .end local v2    # "pkgName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 653
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 654
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    .line 655
    return-void
.end method

.method public static getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
    .locals 1

    .line 87
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$Instance;->access$100()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    return-object v0
.end method

.method private initDefaultAisConfig()V
    .locals 4

    .line 472
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameArray:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 474
    aget-object v1, v1, v0

    .line 475
    .local v1, "pkg":Ljava/lang/String;
    new-instance v2, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    invoke-direct {v2, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;-><init>(Ljava/lang/String;)V

    .line 476
    .local v2, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    if-eqz v1, :cond_0

    .line 477
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 473
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private isBoostPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 264
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    .line 265
    .local v0, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    if-eqz v0, :cond_0

    .line 266
    const/4 v1, 0x1

    return v1

    .line 268
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isSkipBoostPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 272
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 273
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 274
    const/4 v1, 0x1

    return v1

    .line 272
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 277
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private pause(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V
    .locals 4
    .param p1, "hp"    # Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 303
    if-eqz p1, :cond_1

    .line 304
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 305
    :try_start_0
    const-string v1, "HoustonProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " pause : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " main_pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAiBoostFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 307
    :try_start_1
    iget v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 308
    const/4 v1, 0x1

    iput v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    .line 309
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    :cond_0
    goto :goto_0

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v2, "HoustonProcessManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    .line 314
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 316
    :cond_1
    :goto_1
    return-void
.end method

.method private printAllMap(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 689
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 690
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 691
    .local v2, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-eqz v2, :cond_0

    .line 692
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HoustonPackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 694
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_0
    goto :goto_0

    .line 696
    :cond_1
    const-string v0, "---------ai_config_controller---------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 698
    .restart local v1    # "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    .line 699
    .local v2, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    if-eqz v2, :cond_2

    .line 700
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "wpackage = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->toShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 702
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    :cond_2
    goto :goto_1

    .line 704
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bpackage["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 704
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 708
    .end local v0    # "i":I
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nai boost controller = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 709
    return-void
.end method

.method private remove(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V
    .locals 5
    .param p1, "hp"    # Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 319
    if-eqz p1, :cond_6

    .line 320
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 321
    :try_start_0
    const-string v1, "HoustonProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " remove : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " main_pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAiBoostFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 323
    :try_start_1
    iget v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    if-lez v1, :cond_0

    .line 324
    const/4 v1, 0x0

    iput v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    .line 325
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 330
    :cond_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_2
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 331
    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_1

    .line 332
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 333
    :goto_1
    goto :goto_2

    .line 330
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "i":I
    :cond_2
    :goto_2
    goto :goto_4

    .line 330
    :catchall_0
    move-exception v1

    goto :goto_5

    .line 327
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "HoustonProcessManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 330
    .end local v1    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3
    :try_start_4
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 331
    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 332
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 330
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 337
    .end local v1    # "i":I
    :goto_4
    monitor-exit v0

    goto :goto_7

    .line 330
    :goto_5
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_6
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 331
    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_4

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    .line 332
    :cond_4
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 336
    .end local v2    # "i":I
    :cond_5
    nop

    .end local p0    # "this":Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
    .end local p1    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    throw v1

    .line 337
    .restart local p0    # "this":Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
    .restart local p1    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 339
    :cond_6
    :goto_7
    return-void
.end method

.method private removeFromAiBoostWhite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;

    .line 675
    if-nez p1, :cond_0

    .line 676
    return-void

    .line 678
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    .line 679
    .local v0, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    if-nez v0, :cond_1

    .line 680
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t remove from null white list pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HoustonProcessManager"

    invoke-static {v2, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    .line 681
    return-void

    .line 683
    :cond_1
    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/Param;

    invoke-direct {v1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 684
    .local v1, "param":Lcom/oneplus/houston/apkserver/bridge/Param;
    invoke-virtual {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->removeParam(Lcom/oneplus/houston/apkserver/bridge/Param;)V

    .line 685
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 686
    return-void
.end method

.method private removeFromBlackArray(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 658
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 659
    .local v0, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 660
    aget-object v2, v2, v1

    .line 661
    .local v2, "pkgName":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "black["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "HoustonProcessManager"

    invoke-static {v4, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 663
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 659
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 666
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 667
    .local v1, "size":I
    if-lez v1, :cond_2

    .line 668
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    goto :goto_1

    .line 670
    :cond_2
    sget-object v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->EMPTY:[Ljava/lang/String;

    iput-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    .line 672
    :goto_1
    return-void
.end method

.method private start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V
    .locals 4
    .param p1, "hp"    # Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 281
    if-eqz p1, :cond_2

    .line 282
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    const-string v1, "HoustonProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " main_pid:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mAiBoostFlag:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    iget v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    .line 287
    :try_start_1
    iput v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    .line 288
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 292
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 292
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 289
    :catch_0
    move-exception v1

    .line 290
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "HoustonProcessManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 292
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 293
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0

    .line 292
    :goto_1
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 293
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 295
    :cond_0
    nop

    .end local p0    # "this":Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
    .end local p1    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    throw v1

    .line 297
    .restart local p0    # "this":Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
    .restart local p1    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_1
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 299
    :cond_2
    :goto_3
    return-void
.end method

.method private updateAiBoostLocked(Ljava/util/HashMap;[Ljava/lang/String;I)V
    .locals 6
    .param p2, "blackArray"    # [Ljava/lang/String;
    .param p3, "controller"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;",
            ">;[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 414
    .local p1, "whiteMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;>;"
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 416
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 417
    .local v1, "hpFront":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-eqz v1, :cond_5

    .line 418
    invoke-direct {p0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->pause(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    .line 424
    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    if-nez v2, :cond_2

    .line 425
    const-string v2, "HoustonProcessManager"

    const-string v3, " turn off ai boost!"

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 427
    .local v3, "pkg":Ljava/lang/String;
    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 428
    .local v4, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-eqz v4, :cond_0

    .line 429
    iget v5, v4, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    if-lez v5, :cond_0

    .line 430
    invoke-direct {p0, v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->remove(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    .line 433
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 434
    :cond_2
    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 435
    const-string v2, "HoustonProcessManager"

    const-string v3, " AI_BOOST_WHITE_LIST ai boost!"

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->isBoostPackage(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 437
    invoke-direct {p0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    goto :goto_1

    .line 439
    :cond_3
    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 440
    const-string v2, "HoustonProcessManager"

    const-string v3, " AI_BOOST_ALL_EXCEPT_BLACK_LIST ai boost!"

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->isSkipBoostPackage(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 442
    invoke-direct {p0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    .line 445
    .end local v1    # "hpFront":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_4
    :goto_1
    monitor-exit v0

    .line 446
    return-void

    .line 420
    .restart local v1    # "hpFront":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_5
    const-string v2, "HoustonProcessManager"

    const-string v3, "ai boost current top never be null!"

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->err(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    monitor-exit v0

    return-void

    .line 445
    .end local v1    # "hpFront":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private writeSysFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p1, "sysPath"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeSysFile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonProcessManager"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 484
    const/4 v0, 0x0

    .line 486
    .local v0, "fw":Ljava/io/FileWriter;
    :try_start_0
    new-instance v2, Ljava/io/FileWriter;

    invoke-direct {v2, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 487
    invoke-virtual {v0, p2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 493
    nop

    .line 494
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 498
    :cond_0
    :goto_0
    goto :goto_1

    .line 496
    :catch_0
    move-exception v2

    .line 497
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    .end local v2    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 492
    :catchall_0
    move-exception v2

    goto :goto_2

    .line 488
    :catch_1
    move-exception v2

    .line 489
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to write "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 493
    .end local v2    # "e":Ljava/io/IOException;
    if-eqz v0, :cond_0

    .line 494
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 500
    :goto_1
    return-void

    .line 493
    :goto_2
    if-eqz v0, :cond_1

    .line 494
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    .line 496
    :catch_2
    move-exception v3

    .line 497
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 498
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    nop

    .line 499
    :goto_4
    throw v2
.end method


# virtual methods
.method public autoAcquireOrRelease(Z)V
    .locals 5
    .param p1, "isAwake"    # Z

    .line 342
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 344
    .local v1, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-eqz v1, :cond_1

    .line 345
    const-string v2, "HoustonProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoAcquireOrRelease isAwake :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mAiBoostFlag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    if-lez v2, :cond_1

    .line 347
    if-eqz p1, :cond_0

    .line 348
    iget v2, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 349
    invoke-direct {p0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    goto :goto_0

    .line 352
    :cond_0
    invoke-direct {p0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->pause(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    .line 356
    .end local v1    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_1
    :goto_0
    monitor-exit v0

    .line 357
    return-void

    .line 356
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 543
    monitor-enter p0

    .line 545
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 548
    goto :goto_0

    .line 549
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 546
    :catch_0
    move-exception v0

    .line 547
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 549
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    .line 550
    return-void

    .line 549
    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 16
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 553
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    array-length v0, v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 554
    const-string v0, "------------------Dump fps-------------------------------------"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 555
    invoke-direct {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->printAllMap(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 556
    :cond_0
    array-length v0, v3

    const/4 v5, 0x0

    const-string v6, "--ai_config_controller"

    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    aget-object v0, v3, v5

    .line 557
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 558
    iget v5, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    .line 560
    .local v5, "tmp":I
    :try_start_0
    aget-object v0, v3, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 563
    goto :goto_0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/lang/Exception;
    iput v5, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    .line 564
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "---------ai_config_controller:-----"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 565
    .local v0, "aiController":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    iget-object v4, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    iget v7, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-direct {v1, v4, v6, v7}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateAiBoostLocked(Ljava/util/HashMap;[Ljava/lang/String;I)V

    .line 567
    .end local v0    # "aiController":Ljava/lang/String;
    .end local v5    # "tmp":I
    goto/16 :goto_2

    :cond_1
    array-length v0, v3

    const-string v8, "add"

    const-string v9, "black"

    const/4 v10, 0x4

    const/4 v11, 0x3

    if-ne v0, v10, :cond_2

    aget-object v0, v3, v5

    .line 568
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, v3, v4

    .line 569
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, v3, v7

    .line 570
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 571
    aget-object v0, v3, v11

    .line 572
    .local v0, "pkg":Ljava/lang/String;
    invoke-direct {v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->addToBlackArray(Ljava/lang/String;)V

    .line 573
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add black:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 574
    invoke-direct {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->printAllMap(Ljava/io/PrintWriter;)V

    .line 575
    iget-object v4, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    iget v6, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-direct {v1, v4, v5, v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateAiBoostLocked(Ljava/util/HashMap;[Ljava/lang/String;I)V

    .line 576
    .end local v0    # "pkg":Ljava/lang/String;
    goto/16 :goto_2

    :cond_2
    array-length v0, v3

    const-string v12, "remove"

    if-ne v0, v10, :cond_3

    aget-object v0, v3, v5

    .line 577
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, v3, v4

    .line 578
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, v3, v7

    .line 579
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 580
    aget-object v0, v3, v11

    .line 581
    .restart local v0    # "pkg":Ljava/lang/String;
    invoke-direct {v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->removeFromBlackArray(Ljava/lang/String;)V

    .line 582
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove black:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 583
    invoke-direct {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->printAllMap(Ljava/io/PrintWriter;)V

    .line 584
    iget-object v4, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    iget v6, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-direct {v1, v4, v5, v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateAiBoostLocked(Ljava/util/HashMap;[Ljava/lang/String;I)V

    .line 585
    .end local v0    # "pkg":Ljava/lang/String;
    goto/16 :goto_2

    :cond_3
    array-length v0, v3

    const-string v9, " p2:"

    const-string v13, " p1:"

    const-string v15, "white"

    const/4 v14, 0x6

    const-string v10, "none"

    if-ne v0, v14, :cond_6

    aget-object v0, v3, v5

    .line 586
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    aget-object v0, v3, v4

    .line 587
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    aget-object v0, v3, v7

    .line 588
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 589
    aget-object v0, v3, v11

    .line 590
    .restart local v0    # "pkg":Ljava/lang/String;
    const/4 v4, 0x4

    aget-object v4, v3, v4

    .line 591
    .local v4, "param1":Ljava/lang/String;
    const/4 v5, 0x5

    aget-object v5, v3, v5

    .line 592
    .local v5, "param2":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 593
    const-string v4, ""

    .line 595
    :cond_4
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 596
    const-string v5, ""

    .line 598
    :cond_5
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "white add pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 599
    invoke-direct {v1, v0, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->addToAiBoostWhite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 600
    invoke-direct {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->printAllMap(Ljava/io/PrintWriter;)V

    .line 601
    iget-object v6, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    iget-object v7, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    iget v8, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-direct {v1, v6, v7, v8}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateAiBoostLocked(Ljava/util/HashMap;[Ljava/lang/String;I)V

    .line 602
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v4    # "param1":Ljava/lang/String;
    .end local v5    # "param2":Ljava/lang/String;
    goto/16 :goto_2

    :cond_6
    array-length v0, v3

    if-ne v0, v14, :cond_9

    aget-object v0, v3, v5

    .line 603
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    aget-object v0, v3, v4

    .line 604
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    aget-object v0, v3, v7

    .line 605
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 606
    aget-object v0, v3, v11

    .line 607
    .restart local v0    # "pkg":Ljava/lang/String;
    const/4 v4, 0x4

    aget-object v4, v3, v4

    .line 608
    .restart local v4    # "param1":Ljava/lang/String;
    const/4 v5, 0x5

    aget-object v5, v3, v5

    .line 609
    .restart local v5    # "param2":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 610
    const-string v4, ""

    .line 612
    :cond_7
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 613
    const-string v5, ""

    .line 615
    :cond_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "white remove pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 616
    invoke-direct {v1, v0, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->removeFromAiBoostWhite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    invoke-direct {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->printAllMap(Ljava/io/PrintWriter;)V

    .line 618
    iget-object v6, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    iget-object v7, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    iget v8, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-direct {v1, v6, v7, v8}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateAiBoostLocked(Ljava/util/HashMap;[Ljava/lang/String;I)V

    .line 619
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v4    # "param1":Ljava/lang/String;
    .end local v5    # "param2":Ljava/lang/String;
    goto :goto_2

    :cond_9
    array-length v0, v3

    if-ne v0, v11, :cond_a

    aget-object v0, v3, v5

    .line 620
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    aget-object v0, v3, v4

    .line 621
    const-string v4, "log"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 622
    sget v4, Lcom/oneplus/houston/common/client/utils/Logger;->mLogLevel:I

    .line 624
    .local v4, "tmp":I
    :try_start_1
    aget-object v0, v3, v7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/oneplus/houston/common/client/utils/Logger;->mLogLevel:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 627
    goto :goto_1

    .line 625
    :catch_1
    move-exception v0

    .line 626
    .local v0, "e":Ljava/lang/Exception;
    sput v4, Lcom/oneplus/houston/common/client/utils/Logger;->mLogLevel:I

    .line 628
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "---------ai_config_controller Logger LEVEL-----"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/oneplus/houston/common/client/utils/Logger;->mLogLevel:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 629
    .local v0, "loggerLevel":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    .end local v0    # "loggerLevel":Ljava/lang/String;
    .end local v4    # "tmp":I
    :cond_a
    :goto_2
    return-void
.end method

.method public fillProcesses(Lcom/oneplus/houston/common/client/parcel/InitArg;)V
    .locals 7
    .param p1, "args"    # Lcom/oneplus/houston/common/client/parcel/InitArg;

    .line 91
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 93
    .local v1, "size":I
    new-array v2, v1, [Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    iput-object v2, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    .line 94
    const/4 v2, 0x0

    .line 95
    .local v2, "p":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 96
    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    move-object v2, v4

    .line 97
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    new-instance v5, Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    invoke-direct {v5}, Lcom/oneplus/houston/common/client/parcel/InitArg$P;-><init>()V

    aput-object v5, v4, v3

    .line 98
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->pkg:Ljava/lang/String;

    .line 99
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->uid:I

    .line 100
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    const/4 v5, 0x0

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->id:I

    .line 101
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->packageFlags:I

    .line 102
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCreateReason:Ljava/lang/String;

    iput-object v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->reason:Ljava/lang/String;

    .line 103
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mName:Ljava/lang/String;

    iput-object v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->name:Ljava/lang/String;

    .line 104
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mPid:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->pid:I

    .line 105
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCurAdj:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->adj:I

    .line 106
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCurOomPid:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->oomPid:I

    .line 107
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mFlags:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->flags:I

    .line 108
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mPss:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->pss:I

    .line 109
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mRss:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->rss:I

    .line 110
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-wide v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCreateTime:J

    iput-wide v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->createTime:J

    .line 111
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-wide v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mLastActiveTime:J

    iput-wide v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->lastActiveTime:J

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 113
    .end local v1    # "size":I
    .end local v2    # "p":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    .line 114
    return-void

    .line 113
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .line 258
    const-string v0, "HoustonProcessManager"

    const-string v1, " initOnlineConfig"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsAiFeatrueOn:Z

    .line 260
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->initDefaultAisConfig()V

    .line 261
    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;

    invoke-direct {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiPicker:Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;

    .line 262
    return-void
.end method

.method public moveForeground(I)V
    .locals 6
    .param p1, "pid"    # I

    .line 213
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    if-eq p1, v1, :cond_2

    .line 215
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    .line 216
    .local v1, "bgProc":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    if-eqz v1, :cond_0

    .line 217
    sget v2, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->clearFlags(I)V

    .line 218
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    const/4 v4, 0x0

    sget v5, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->setFlags(III)V

    .line 224
    :cond_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    .line 225
    .local v2, "fgProc":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    if-eqz v2, :cond_1

    .line 226
    sget v3, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->addFlags(I)V

    .line 227
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    move-result-object v3

    sget v4, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    sget v5, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v3, p1, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->setFlags(III)V

    .line 231
    :cond_1
    iput p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    .line 233
    .end local v1    # "bgProc":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    .end local v2    # "fgProc":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    :cond_2
    monitor-exit v0

    .line 234
    return-void

    .line 233
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public preBindApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V
    .locals 16
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "process"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "bindApplicationDelayMs"    # I

    .line 147
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    return-void

    .line 150
    :cond_0
    const-string v13, "TODO"

    .line 151
    .local v13, "reason":Ljava/lang/String;
    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 152
    .local v0, "packageName":Ljava/lang/String;
    const-string v3, "com.mobile.legends:UnityKillsMe"

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 153
    const-string v0, "com.mobile.legends:UnityKillsMe"

    .line 154
    const-string v3, "HoustonProcessManager"

    const-string v4, "com.mobile.legends:UnityKillsMe is the main process!"

    invoke-static {v3, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    move-object v14, v0

    goto :goto_0

    .line 152
    :cond_1
    move-object v14, v0

    .line 156
    .end local v0    # "packageName":Ljava/lang/String;
    .local v14, "packageName":Ljava/lang/String;
    :goto_0
    iget-object v15, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v15

    .line 157
    :try_start_0
    iget-object v0, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v0, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 158
    .local v0, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-nez v0, :cond_2

    .line 159
    new-instance v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v14, v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    move-object v0, v3

    .line 160
    iget-object v3, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v14, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    :cond_2
    if-eqz v11, :cond_3

    invoke-virtual {v11, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 163
    iput v12, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    .line 164
    invoke-virtual {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->markColdLaunched()V

    .line 166
    :cond_3
    iget-object v3, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_4

    .line 167
    iget-object v3, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    new-instance v4, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    const-string v5, "TODO"

    invoke-direct {v4, v2, v11, v12, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v12, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v6, 0x0

    iget v9, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const-string v10, "TODO"

    move-object/from16 v7, p2

    move/from16 v8, p3

    invoke-virtual/range {v3 .. v10}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->add(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V

    .line 175
    .end local v0    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_4
    monitor-exit v15

    .line 176
    return-void

    .line 175
    :catchall_0
    move-exception v0

    monitor-exit v15
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(ILjava/lang/String;)V
    .locals 6
    .param p1, "pid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 194
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 195
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    .line 196
    .local v1, "process":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    if-eqz v1, :cond_2

    .line 197
    iget-object v2, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 198
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 199
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mName:Ljava/lang/String;

    const-string v5, "com.mobile.legends:UnityKillsMe"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 200
    iget-object v4, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mName:Ljava/lang/String;

    move-object v3, v4

    .line 202
    :cond_0
    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 203
    .local v4, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    iget v5, v4, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    if-ne v5, p1, :cond_1

    .line 204
    invoke-direct {p0, v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->remove(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    .line 206
    :cond_1
    iget-object v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 207
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    move-result-object v5

    invoke-virtual {v5, p1, p2}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->remove(ILjava/lang/String;)V

    .line 209
    .end local v1    # "process":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "packageName":Ljava/lang/String;
    .end local v4    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_2
    monitor-exit v0

    .line 210
    return-void

    .line 209
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportActivityDisplayed(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "processName"    # Ljava/lang/String;
    .param p3, "bindApplicationDelayMs"    # I
    .param p4, "launchTime"    # I
    .param p5, "componentName"    # Ljava/lang/String;

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportActivityDisplayed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " bindApplicationDelayMs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " launchTime:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " componentName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " processName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonProcessManager"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 186
    .local v1, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-eqz v1, :cond_1

    .line 187
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, p5, v2, p3, p4}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->addLaunchInfo(Ljava/lang/String;ZII)V

    .line 190
    .end local v1    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_1
    monitor-exit v0

    .line 191
    return-void

    .line 190
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public reportFpsJank(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 5
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "viewName"    # Ljava/lang/String;
    .param p3, "jankType"    # I
    .param p4, "jankLevel"    # I

    .line 237
    if-nez p1, :cond_0

    .line 238
    return-void

    .line 240
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 241
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 242
    .local v1, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-nez v1, :cond_1

    .line 243
    new-instance v2, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    move-object v1, v2

    .line 245
    :cond_1
    invoke-virtual {v1, p2, p3, p4}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->addJankInfo(Ljava/lang/String;II)V

    .line 246
    .end local v1    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveDataToMDM(Landroid/content/Context;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;

    .line 117
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 118
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 119
    .local v1, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 121
    .local v2, "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "appid"

    const-string v4, "PDJE7FI1KD"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 126
    .local v4, "doSomething":Z
    iget-object v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 127
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 128
    .local v7, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->canPreserveToMDM()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 129
    invoke-virtual {v7}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->formatLaunchInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    const-string v8, "HoustonProcessManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "saveDataToMDM:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->formatLaunchInfo()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-virtual {v7}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->reset()V

    .line 132
    const/4 v4, 0x1

    .line 134
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_0
    goto :goto_0

    .line 135
    :cond_1
    if-eqz v4, :cond_2

    .line 136
    const-string v5, "houston_launch_result"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v5

    const-string v6, "houston_launch_info"

    invoke-virtual {v5, p1, v6, v2, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    .line 140
    :cond_2
    const-string v5, "HoustonProcessManager"

    const-string v6, "No data to save"

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .end local v1    # "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "doSomething":Z
    :goto_1
    monitor-exit v0

    .line 143
    return-void

    .line 142
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFront(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 8
    .param p1, "activityName"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "pid"    # I

    .line 360
    const/4 v0, 0x0

    .line 361
    .local v0, "frontPackageChanged":Z
    const-string v1, "com.mobile.legends"

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 362
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, p4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    .line 363
    .local v1, "hproc":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mName:Ljava/lang/String;

    const-string v3, "com.mobile.legends:UnityKillsMe"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 364
    const-string p2, "com.mobile.legends:UnityKillsMe"

    .line 365
    const-string v2, "HoustonProcessManager"

    const-string v3, "set packageName to com.mobile.legends:UnityKillsMe!"

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    .end local v1    # "hproc":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    :cond_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 370
    if-eqz p2, :cond_1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 371
    const/4 v0, 0x1

    .line 374
    :cond_1
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    .line 375
    .local v2, "lpackageName":Ljava/lang/String;
    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    .line 376
    const-string v3, "HoustonProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "lpackageName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mCurrentPackage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mAiBoostController:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    if-eqz v0, :cond_6

    .line 380
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 381
    .local v3, "hpFront":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 383
    .local v4, "hpBackground":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    sget v5, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-lez v5, :cond_3

    const-string v5, "com.android.permissioncontroller"

    .line 384
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 385
    if-eqz v3, :cond_2

    .line 386
    invoke-virtual {v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->addTotalLaunchCount()V

    .line 388
    :cond_2
    if-eqz v4, :cond_3

    .line 389
    invoke-virtual {v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->stopFreezingLaunchCount()V

    .line 392
    :cond_3
    iget v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    if-ne v5, v6, :cond_4

    .line 393
    const-string v5, "HoustonProcessManager"

    const-string v6, "AI_BOOST_WHITE_LIST"

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    const-string v5, "HoustonProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "frontPackageChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-direct {p0, v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->pause(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    .line 396
    invoke-direct {p0, p2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->isBoostPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 397
    invoke-direct {p0, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    goto :goto_0

    .line 399
    :cond_4
    iget v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 400
    const-string v5, "HoustonProcessManager"

    const-string v6, "AI_BOOST_ALL_EXCEPT_BLACK_LIST"

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v5, "HoustonProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "frontPackageChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " uid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " pid:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    invoke-direct {p0, v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->pause(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    .line 403
    invoke-direct {p0, p2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->isSkipBoostPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_6

    .line 404
    invoke-direct {p0, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    goto :goto_0

    .line 406
    :cond_5
    iget v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    if-nez v5, :cond_6

    .line 407
    const-string v5, "HoustonProcessManager"

    const-string v6, " ai boost is off! donothing!"

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->debug(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    .end local v2    # "lpackageName":Ljava/lang/String;
    .end local v3    # "hpFront":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    .end local v4    # "hpBackground":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_6
    :goto_0
    monitor-exit v1

    .line 411
    return-void

    .line 410
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public updateConfig(Ljava/util/HashMap;[Ljava/lang/String;I)V
    .locals 7
    .param p2, "blackArray"    # [Ljava/lang/String;
    .param p3, "controller"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;",
            ">;[",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 449
    .local p1, "whiteMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;>;"
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 450
    :try_start_0
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    .line 451
    const-string v1, "HoustonProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " wpackage size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 453
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    .line 454
    .local v3, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    if-eqz v3, :cond_0

    .line 455
    const-string v4, "HoustonProcessManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " wpackage = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->toShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/oneplus/houston/common/client/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 457
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    :cond_0
    goto :goto_0

    .line 459
    :cond_1
    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    .line 460
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 461
    const-string v2, "HoustonProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " bpackage["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 464
    .end local v1    # "i":I
    :cond_2
    iput p3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    .line 465
    const-string v1, "HoustonProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ai boost controller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    iget v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateAiBoostLocked(Ljava/util/HashMap;[Ljava/lang/String;I)V

    .line 468
    monitor-exit v0

    .line 469
    return-void

    .line 468
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateScreenState(Z)V
    .locals 2
    .param p1, "isScreenOn"    # Z

    .line 250
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 251
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->updateScreenState(Z)V

    .line 252
    invoke-virtual {p0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->autoAcquireOrRelease(Z)V

    .line 253
    monitor-exit v0

    .line 254
    return-void

    .line 253
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
