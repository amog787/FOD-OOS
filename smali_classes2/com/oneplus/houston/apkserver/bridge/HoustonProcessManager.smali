.class public Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
.super Ljava/lang/Object;
.source "HoustonProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$Instance;
    }
.end annotation


# static fields
.field private static final AI_BOOST_ALL_EXCEPT_BLACK_LIST:I = 0x2

.field private static final AI_BOOST_OFF:I = 0x0

.field private static final AI_BOOST_WHITE_LIST:I = 0x1

.field private static final INVALID_START_TIME:I = -0x1

.field private static final MAX_JANK_COUNT:I = 0x32

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

.field private mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

.field private mCurrentPackage:Ljava/lang/String;

.field private final mHwBrainDeath:Landroid/os/IHwBinder$DeathRecipient;

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
.method private constructor <init>()V
    .locals 9

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    .line 34
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mJankPackcages:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    .line 44
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    .line 50
    const-string v1, "com.tencent.tmgp.sgame"

    const-string v2, "com.tencent.tmgp.pubgmhd"

    const-string v3, "com.tencent.tmgp.speedmobile"

    const-string v4, "com.rekoo.pubgm"

    const-string v5, "com.nianticlabs.pokemongo"

    const-string v6, "com.supercell.clashofclans"

    const-string v7, "com.kiloo.subwaysurf"

    const-string v8, "com.tencent.ig"

    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameArray:[Ljava/lang/String;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsBoostAll:Z

    .line 58
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    .line 59
    const/4 v1, 0x1

    iput v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    .line 60
    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsAiFeatrueOn:Z

    .line 242
    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/-$$Lambda$HoustonProcessManager$bHScbsAdNuA1gY7dSwbsdUMnMIw;

    invoke-direct {v0, p0}, Lcom/oneplus/houston/apkserver/bridge/-$$Lambda$HoustonProcessManager$bHScbsAdNuA1gY7dSwbsdUMnMIw;-><init>(Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;)V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mHwBrainDeath:Landroid/os/IHwBinder$DeathRecipient;

    .line 69
    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$1;

    .line 32
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;-><init>()V

    return-void
.end method

.method private addToAiBoostWhite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;

    .line 615
    if-nez p1, :cond_0

    .line 616
    return-void

    .line 618
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    .line 619
    .local v0, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    if-nez v0, :cond_1

    .line 620
    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    invoke-direct {v1, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 622
    :cond_1
    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/Param;

    invoke-direct {v1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    .local v1, "param":Lcom/oneplus/houston/apkserver/bridge/Param;
    invoke-virtual {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->addParam(Lcom/oneplus/houston/apkserver/bridge/Param;)V

    .line 624
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 625
    return-void
.end method

.method private addToBlackArray(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 628
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 629
    .local v0, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 630
    aget-object v2, v2, v1

    .line 631
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

    invoke-static {v4, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 629
    .end local v2    # "pkgName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 634
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 635
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    .line 636
    return-void
.end method

.method private adjustWhitePackageParamIfNeededLocked(Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;Ljava/lang/String;)V
    .locals 8
    .param p1, "brain"    # Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;
    .param p2, "pkg"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 594
    if-nez p2, :cond_0

    .line 595
    return-void

    .line 597
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    .line 598
    .local v0, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    if-eqz v0, :cond_4

    .line 599
    iget-object v1, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->mParam:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 600
    .local v1, "size":I
    if-lez v1, :cond_4

    .line 601
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_4

    .line 602
    iget-object v3, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->mParam:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/Param;

    .line 603
    .local v3, "p":Lcom/oneplus/houston/apkserver/bridge/Param;
    if-eqz v3, :cond_3

    .line 604
    iget-object v4, v3, Lcom/oneplus/houston/apkserver/bridge/Param;->param1:Ljava/lang/String;

    const-string v5, ""

    if-nez v4, :cond_1

    move-object v4, v5

    goto :goto_1

    :cond_1
    iget-object v4, v3, Lcom/oneplus/houston/apkserver/bridge/Param;->param1:Ljava/lang/String;

    .line 605
    .local v4, "p1":Ljava/lang/String;
    :goto_1
    iget-object v6, v3, Lcom/oneplus/houston/apkserver/bridge/Param;->param2:Ljava/lang/String;

    if-nez v6, :cond_2

    goto :goto_2

    :cond_2
    iget-object v5, v3, Lcom/oneplus/houston/apkserver/bridge/Param;->param2:Ljava/lang/String;

    .line 606
    .local v5, "p2":Ljava/lang/String;
    :goto_2
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "force set pkg:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " p1:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " p2:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "HoustonProcessManager"

    invoke-static {v7, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    const-string v6, "batch_update"

    invoke-interface {p1, v6, v4, v5}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;->dumpsys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    .end local v3    # "p":Lcom/oneplus/houston/apkserver/bridge/Param;
    .end local v4    # "p1":Ljava/lang/String;
    .end local v5    # "p2":Ljava/lang/String;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 612
    .end local v1    # "size":I
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method private brainInit()Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;
    .locals 5

    .line 252
    const-string v0, "HoustonProcessManager"

    const-string v1, " initOnlineConfig brainInit ... "

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;->getService()Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    .line 255
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-eqz v1, :cond_0

    .line 256
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    invoke-interface {v1}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;->asBinder()Landroid/os/IHwBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mHwBrainDeath:Landroid/os/IHwBinder$DeathRecipient;

    const-wide/16 v3, 0x0

    invoke-interface {v1, v2, v3, v4}, Landroid/os/IHwBinder;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 257
    const-string v1, "mBrain. init Done"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    :cond_0
    goto :goto_0

    .line 259
    :catch_0
    move-exception v1

    .line 260
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    .line 261
    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    return-object v0
.end method

.method public static getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
    .locals 1

    .line 72
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager$Instance;->access$100()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    return-object v0
.end method

.method private initDefaultAisConfig()V
    .locals 4

    .line 490
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 491
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameArray:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 492
    aget-object v1, v1, v0

    .line 493
    .local v1, "pkg":Ljava/lang/String;
    new-instance v2, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    invoke-direct {v2, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;-><init>(Ljava/lang/String;)V

    .line 494
    .local v2, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    if-eqz v1, :cond_0

    .line 495
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 498
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private isBoostPackage(Ljava/lang/String;)Z
    .locals 2
    .param p1, "pkg"    # Ljava/lang/String;

    .line 267
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    .line 268
    .local v0, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    if-eqz v0, :cond_0

    .line 269
    const/4 v1, 0x1

    return v1

    .line 271
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private isSkipBoostPackage(Ljava/lang/String;)Z
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;

    .line 275
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 276
    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 277
    const/4 v1, 0x1

    return v1

    .line 275
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 280
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private pause(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V
    .locals 4
    .param p1, "hp"    # Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 314
    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsAiFeatrueOn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-nez v0, :cond_0

    goto :goto_3

    .line 318
    :cond_0
    if-eqz p1, :cond_2

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " pause : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " main_pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAiBoostFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonProcessManager"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 322
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-eqz v1, :cond_1

    iget v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 323
    const/4 v1, 0x1

    iput v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    .line 324
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    iget-object v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-interface {v1, v2, v3}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;->notifyAppPause(Ljava/lang/String;I)V

    .line 325
    const-string v1, "HoustonProcessManager"

    const-string v2, "mBrain.notifyAppPause done"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :cond_1
    goto :goto_0

    .line 330
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 327
    :catch_0
    move-exception v1

    .line 328
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "HoustonProcessManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 332
    :cond_2
    :goto_2
    return-void

    .line 315
    :cond_3
    :goto_3
    return-void
.end method

.method private printAllMap(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 670
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

    .line 671
    .local v1, "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 672
    .local v2, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-eqz v2, :cond_0

    .line 673
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

    .line 675
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_0
    goto :goto_0

    .line 677
    :cond_1
    const-string v0, "---------ai_config_controller---------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 678
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

    .line 679
    .restart local v1    # "pkg":Ljava/lang/String;
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    .line 680
    .local v2, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    if-eqz v2, :cond_2

    .line 681
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

    .line 683
    .end local v1    # "pkg":Ljava/lang/String;
    .end local v2    # "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    :cond_2
    goto :goto_1

    .line 685
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 686
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

    .line 685
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 689
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

    .line 690
    return-void
.end method

.method private remove(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V
    .locals 5
    .param p1, "hp"    # Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 335
    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsAiFeatrueOn:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 338
    :cond_0
    if-eqz p1, :cond_7

    .line 339
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " remove : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " main_pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAiBoostFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonProcessManager"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 340
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 342
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-eqz v2, :cond_1

    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    if-lez v2, :cond_1

    .line 343
    iput v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    .line 344
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    iget-object v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    iget v4, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-interface {v2, v3, v4}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;->notifyAppDied(Ljava/lang/String;I)V

    .line 345
    const-string v2, "HoustonProcessManager"

    const-string v3, "mBrain.notifyAppDied done"

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 350
    :cond_1
    nop

    .local v1, "i":I
    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 351
    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 352
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 353
    :goto_1
    goto :goto_2

    .line 350
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 356
    .end local v1    # "i":I
    :cond_3
    :goto_2
    goto :goto_4

    .line 350
    :catchall_0
    move-exception v2

    goto :goto_5

    .line 347
    :catch_0
    move-exception v2

    .line 348
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2
    const-string v3, "HoustonProcessManager"

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 350
    .end local v2    # "e":Ljava/lang/Exception;
    nop

    .restart local v1    # "i":I
    :goto_3
    :try_start_3
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 351
    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 352
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 350
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 357
    .end local v1    # "i":I
    :goto_4
    monitor-exit v0

    goto :goto_6

    .line 350
    .restart local v1    # "i":I
    :goto_5
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_6

    .line 351
    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v3, v4, :cond_5

    .line 350
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 352
    :cond_5
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 350
    .end local v1    # "i":I
    :cond_6
    nop

    .end local p0    # "this":Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
    .end local p1    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    throw v2

    .line 357
    .restart local p0    # "this":Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
    .restart local p1    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1

    .line 359
    :cond_7
    :goto_6
    return-void

    .line 336
    :cond_8
    :goto_7
    return-void
.end method

.method private removeFromAiBoostWhite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "param1"    # Ljava/lang/String;
    .param p3, "param2"    # Ljava/lang/String;

    .line 656
    if-nez p1, :cond_0

    .line 657
    return-void

    .line 659
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    .line 660
    .local v0, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    if-nez v0, :cond_1

    .line 661
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can\'t remove from null white list pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "HoustonProcessManager"

    invoke-static {v2, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    return-void

    .line 664
    :cond_1
    new-instance v1, Lcom/oneplus/houston/apkserver/bridge/Param;

    invoke-direct {v1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/Param;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 665
    .local v1, "param":Lcom/oneplus/houston/apkserver/bridge/Param;
    invoke-virtual {v0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;->removeParam(Lcom/oneplus/houston/apkserver/bridge/Param;)V

    .line 666
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 667
    return-void
.end method

.method private removeFromBlackArray(Ljava/lang/String;)V
    .locals 5
    .param p1, "pkg"    # Ljava/lang/String;

    .line 639
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 640
    .local v0, "blackList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 641
    aget-object v2, v2, v1

    .line 642
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

    invoke-static {v4, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 644
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 640
    .end local v2    # "pkgName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 647
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 648
    .local v1, "size":I
    if-lez v1, :cond_2

    .line 649
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    iput-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    goto :goto_1

    .line 651
    :cond_2
    sget-object v2, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;->EMPTY:[Ljava/lang/String;

    iput-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    .line 653
    :goto_1
    return-void
.end method

.method private start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V
    .locals 4
    .param p1, "hp"    # Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 284
    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsAiFeatrueOn:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-nez v0, :cond_0

    goto/16 :goto_4

    .line 288
    :cond_0
    if-eqz p1, :cond_4

    .line 289
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " start : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " main_pid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAiBoostFlag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonProcessManager"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-nez v1, :cond_1

    .line 292
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->brainInit()Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    .line 294
    :cond_1
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-eqz v1, :cond_3

    iget v1, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_3

    .line 296
    :try_start_1
    iput v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    .line 297
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    iget-object v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-interface {v1, v2, v3}, Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;->notifyAppResume(Ljava/lang/String;I)V

    .line 298
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    iget-object v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mPackageName:Ljava/lang/String;

    invoke-direct {p0, v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->adjustWhitePackageParamIfNeededLocked(Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;Ljava/lang/String;)V

    .line 300
    const-string v1, "HoustonProcessManager"

    const-string v2, "mBrain.notifyAppResume done"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 304
    :try_start_2
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 305
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    .line 304
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 301
    :catch_0
    move-exception v1

    .line 302
    .local v1, "e":Ljava/lang/Exception;
    :try_start_3
    const-string v2, "HoustonProcessManager"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    .end local v1    # "e":Ljava/lang/Exception;
    :try_start_4
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 305
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    iget v2, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 304
    :goto_1
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 305
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBoostedPids:Ljava/util/ArrayList;

    iget v3, p1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    nop

    .end local p0    # "this":Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
    .end local p1    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    throw v1

    .line 309
    .restart local p0    # "this":Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;
    .restart local p1    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_3
    :goto_2
    monitor-exit v0

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 311
    :cond_4
    :goto_3
    return-void

    .line 285
    :cond_5
    :goto_4
    return-void
.end method

.method private updateAiBoostLocked(Ljava/util/HashMap;[Ljava/lang/String;I)V
    .locals 5
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

    .line 435
    .local p1, "whiteMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;>;"
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 436
    .local v0, "hpFront":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    const-string v1, "HoustonProcessManager"

    if-eqz v0, :cond_5

    .line 437
    invoke-direct {p0, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->pause(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    .line 443
    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    if-nez v2, :cond_2

    .line 444
    const-string v2, " turn off ai boost!"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

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

    .line 446
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 447
    .local v3, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-eqz v3, :cond_0

    .line 448
    iget v4, v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    if-lez v4, :cond_0

    .line 449
    invoke-direct {p0, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->remove(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    .line 452
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_1

    .line 453
    :cond_2
    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 454
    const-string v2, " AI_BOOST_WHITE_LIST ai boost!"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 455
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->isBoostPackage(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 456
    invoke-direct {p0, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    goto :goto_1

    .line 458
    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 459
    const-string v2, " AI_BOOST_ALL_EXCEPT_BLACK_LIST ai boost!"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->isSkipBoostPackage(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 461
    invoke-direct {p0, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    .line 464
    :cond_4
    :goto_1
    return-void

    .line 439
    :cond_5
    const-string v2, "ai boost current top never be null!"

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    return-void
.end method


# virtual methods
.method public autoAcquireOrRelease(Z)V
    .locals 5
    .param p1, "isAwake"    # Z

    .line 362
    iget-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsAiFeatrueOn:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-nez v0, :cond_0

    goto :goto_1

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 366
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 367
    .local v1, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-eqz v1, :cond_2

    .line 368
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

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 369
    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    if-lez v2, :cond_2

    .line 370
    if-eqz p1, :cond_1

    .line 371
    iget v2, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mAiBoostFlag:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 372
    invoke-direct {p0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    goto :goto_0

    .line 375
    :cond_1
    invoke-direct {p0, v1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->pause(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    .line 379
    .end local v1    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_2
    :goto_0
    monitor-exit v0

    .line 380
    return-void

    .line 379
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 363
    :cond_3
    :goto_1
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 503
    monitor-enter p0

    .line 505
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->dumpLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 508
    goto :goto_0

    .line 509
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 509
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    monitor-exit p0

    .line 510
    return-void

    .line 509
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

    .line 513
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    array-length v0, v3

    const/4 v4, 0x1

    if-ne v0, v4, :cond_0

    .line 514
    const-string v0, "------------------Dump fps-------------------------------------"

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 515
    invoke-direct {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->printAllMap(Ljava/io/PrintWriter;)V

    goto/16 :goto_2

    .line 516
    :cond_0
    array-length v0, v3

    const/4 v5, 0x0

    const-string v6, "--ai_config_controller"

    const/4 v7, 0x2

    if-ne v0, v7, :cond_1

    aget-object v0, v3, v5

    .line 517
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 518
    iget v5, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    .line 520
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

    .line 523
    goto :goto_0

    .line 521
    :catch_0
    move-exception v0

    .line 522
    .local v0, "e":Ljava/lang/Exception;
    iput v5, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    .line 524
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

    .line 525
    .local v0, "aiController":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 526
    iget-object v4, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    iget-object v6, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    iget v7, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-direct {v1, v4, v6, v7}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateAiBoostLocked(Ljava/util/HashMap;[Ljava/lang/String;I)V

    .line 527
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

    .line 528
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, v3, v4

    .line 529
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object v0, v3, v7

    .line 530
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 531
    aget-object v0, v3, v11

    .line 532
    .local v0, "pkg":Ljava/lang/String;
    invoke-direct {v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->addToBlackArray(Ljava/lang/String;)V

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add black:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 534
    invoke-direct {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->printAllMap(Ljava/io/PrintWriter;)V

    .line 535
    iget-object v4, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    iget v6, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-direct {v1, v4, v5, v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateAiBoostLocked(Ljava/util/HashMap;[Ljava/lang/String;I)V

    .line 536
    .end local v0    # "pkg":Ljava/lang/String;
    goto/16 :goto_2

    :cond_2
    array-length v0, v3

    const-string v12, "remove"

    if-ne v0, v10, :cond_3

    aget-object v0, v3, v5

    .line 537
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, v3, v4

    .line 538
    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object v0, v3, v7

    .line 539
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 540
    aget-object v0, v3, v11

    .line 541
    .restart local v0    # "pkg":Ljava/lang/String;
    invoke-direct {v1, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->removeFromBlackArray(Ljava/lang/String;)V

    .line 542
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "remove black:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 543
    invoke-direct {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->printAllMap(Ljava/io/PrintWriter;)V

    .line 544
    iget-object v4, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    iget-object v5, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    iget v6, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-direct {v1, v4, v5, v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateAiBoostLocked(Ljava/util/HashMap;[Ljava/lang/String;I)V

    .line 545
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

    .line 546
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    aget-object v0, v3, v4

    .line 547
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    aget-object v0, v3, v7

    .line 548
    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 549
    aget-object v0, v3, v11

    .line 550
    .restart local v0    # "pkg":Ljava/lang/String;
    const/4 v4, 0x4

    aget-object v4, v3, v4

    .line 551
    .local v4, "param1":Ljava/lang/String;
    const/4 v5, 0x5

    aget-object v5, v3, v5

    .line 552
    .local v5, "param2":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 553
    const-string v4, ""

    .line 555
    :cond_4
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 556
    const-string v5, ""

    .line 558
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

    .line 559
    invoke-direct {v1, v0, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->addToAiBoostWhite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    invoke-direct {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->printAllMap(Ljava/io/PrintWriter;)V

    .line 561
    iget-object v6, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    iget-object v7, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    iget v8, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-direct {v1, v6, v7, v8}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateAiBoostLocked(Ljava/util/HashMap;[Ljava/lang/String;I)V

    .line 562
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v4    # "param1":Ljava/lang/String;
    .end local v5    # "param2":Ljava/lang/String;
    goto/16 :goto_2

    :cond_6
    array-length v0, v3

    if-ne v0, v14, :cond_9

    aget-object v0, v3, v5

    .line 563
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    aget-object v0, v3, v4

    .line 564
    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    aget-object v0, v3, v7

    .line 565
    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 566
    aget-object v0, v3, v11

    .line 567
    .restart local v0    # "pkg":Ljava/lang/String;
    const/4 v4, 0x4

    aget-object v4, v3, v4

    .line 568
    .restart local v4    # "param1":Ljava/lang/String;
    const/4 v5, 0x5

    aget-object v5, v3, v5

    .line 569
    .restart local v5    # "param2":Ljava/lang/String;
    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 570
    const-string v4, ""

    .line 572
    :cond_7
    invoke-virtual {v10, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 573
    const-string v5, ""

    .line 575
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

    .line 576
    invoke-direct {v1, v0, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->removeFromAiBoostWhite(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    invoke-direct {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->printAllMap(Ljava/io/PrintWriter;)V

    .line 578
    iget-object v6, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    iget-object v7, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    iget v8, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-direct {v1, v6, v7, v8}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateAiBoostLocked(Ljava/util/HashMap;[Ljava/lang/String;I)V

    .line 579
    .end local v0    # "pkg":Ljava/lang/String;
    .end local v4    # "param1":Ljava/lang/String;
    .end local v5    # "param2":Ljava/lang/String;
    goto :goto_2

    :cond_9
    array-length v0, v3

    if-ne v0, v11, :cond_a

    aget-object v0, v3, v5

    .line 580
    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    aget-object v0, v3, v4

    .line 581
    const-string v4, "log"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 582
    sget v4, Lcom/oneplus/houston/common/client/utils/Logger;->mLogLevel:I

    .line 584
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

    .line 587
    goto :goto_1

    .line 585
    :catch_1
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/Exception;
    sput v4, Lcom/oneplus/houston/common/client/utils/Logger;->mLogLevel:I

    .line 588
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

    .line 589
    .local v0, "loggerLevel":Ljava/lang/String;
    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 591
    .end local v0    # "loggerLevel":Ljava/lang/String;
    .end local v4    # "tmp":I
    :cond_a
    :goto_2
    return-void
.end method

.method public fillProcesses(Lcom/oneplus/houston/common/client/parcel/InitArg;)V
    .locals 7
    .param p1, "args"    # Lcom/oneplus/houston/common/client/parcel/InitArg;

    .line 76
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 77
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 78
    .local v1, "size":I
    new-array v2, v1, [Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    iput-object v2, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    .line 79
    const/4 v2, 0x0

    .line 80
    .local v2, "p":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 81
    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    move-object v2, v4

    .line 82
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    new-instance v5, Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    invoke-direct {v5}, Lcom/oneplus/houston/common/client/parcel/InitArg$P;-><init>()V

    aput-object v5, v4, v3

    .line 83
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->pkg:Ljava/lang/String;

    .line 84
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->uid:I

    .line 85
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    const/4 v5, 0x0

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->id:I

    .line 86
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->packageFlags:I

    .line 87
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCreateReason:Ljava/lang/String;

    iput-object v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->reason:Ljava/lang/String;

    .line 88
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-object v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mName:Ljava/lang/String;

    iput-object v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->name:Ljava/lang/String;

    .line 89
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mPid:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->pid:I

    .line 90
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCurAdj:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->adj:I

    .line 91
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCurOomPid:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->oomPid:I

    .line 92
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mFlags:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->flags:I

    .line 93
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mPss:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->pss:I

    .line 94
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mRss:I

    iput v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->rss:I

    .line 95
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-wide v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mCreateTime:J

    iput-wide v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->createTime:J

    .line 96
    iget-object v4, p1, Lcom/oneplus/houston/common/client/parcel/InitArg;->mProcesses:[Lcom/oneplus/houston/common/client/parcel/InitArg$P;

    aget-object v4, v4, v3

    iget-wide v5, v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mLastActiveTime:J

    iput-wide v5, v4, Lcom/oneplus/houston/common/client/parcel/InitArg$P;->lastActiveTime:J

    .line 80
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 98
    .end local v1    # "size":I
    .end local v2    # "p":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    .end local v3    # "i":I
    :cond_0
    monitor-exit v0

    .line 99
    return-void

    .line 98
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

    .line 233
    const-string v0, "HoustonProcessManager"

    const-string v1, " initOnlineConfig"

    invoke-static {v0, v1}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsAiFeatrueOn:Z

    .line 235
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-nez v0, :cond_0

    .line 236
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->brainInit()Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->initDefaultAisConfig()V

    .line 239
    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;

    invoke-direct {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiPicker:Lcom/oneplus/houston/apkserver/bridge/HoustonAiBoostPicker;

    .line 240
    return-void
.end method

.method public synthetic lambda$new$0$HoustonProcessManager(J)V
    .locals 2
    .param p1, "cookie"    # J

    .line 244
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 245
    :try_start_0
    iget-boolean v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsAiFeatrueOn:Z

    if-eqz v1, :cond_0

    .line 246
    invoke-direct {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->brainInit()Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    .line 248
    :cond_0
    monitor-exit v0

    .line 249
    return-void

    .line 248
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public moveForeground(I)V
    .locals 6
    .param p1, "pid"    # I

    .line 188
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    iget v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    if-eq p1, v1, :cond_2

    .line 190
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    iget v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    .line 191
    .local v1, "bgProc":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    if-eqz v1, :cond_0

    .line 192
    sget v2, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v1, v2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->clearFlags(I)V

    .line 193
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    move-result-object v2

    iget v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    const/4 v4, 0x0

    sget v5, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v2, v3, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->setFlags(III)V

    .line 199
    :cond_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    .line 200
    .local v2, "fgProc":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    if-eqz v2, :cond_1

    .line 201
    sget v3, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->addFlags(I)V

    .line 202
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    move-result-object v3

    sget v4, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    sget v5, Lcom/oneplus/houston/common/client/config/Consts$ProcessFlags;->FOREGROUND:I

    invoke-virtual {v3, p1, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->setFlags(III)V

    .line 206
    :cond_1
    iput p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mTopProcess:I

    .line 208
    .end local v1    # "bgProc":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    .end local v2    # "fgProc":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    :cond_2
    monitor-exit v0

    .line 209
    return-void

    .line 208
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public preBindApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V
    .locals 15
    .param p1, "info"    # Landroid/content/pm/ApplicationInfo;
    .param p2, "process"    # Ljava/lang/String;
    .param p3, "pid"    # I
    .param p4, "bindApplicationDelayMs"    # I

    .line 132
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    iget-object v0, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "android"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 133
    return-void

    .line 135
    :cond_0
    const-string v13, "TODO"

    .line 136
    .local v13, "reason":Ljava/lang/String;
    iget-object v14, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v14

    .line 137
    :try_start_0
    iget-object v0, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 138
    .local v0, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-nez v0, :cond_1

    .line 139
    new-instance v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct {v3, v2, v4, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    move-object v0, v3

    .line 140
    iget-object v3, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    :cond_1
    if-eqz v11, :cond_2

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v11, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 143
    iput v12, v0, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    .line 144
    invoke-virtual {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->markColdLaunched()V

    .line 146
    :cond_2
    iget-object v3, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v12}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    .line 147
    iget-object v3, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    new-instance v4, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    const-string v5, "TODO"

    invoke-direct {v4, v2, v11, v12, v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v3, v12, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 148
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

    .line 155
    .end local v0    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_3
    monitor-exit v14

    .line 156
    return-void

    .line 155
    :catchall_0
    move-exception v0

    monitor-exit v14
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(ILjava/lang/String;)V
    .locals 5
    .param p1, "pid"    # I
    .param p2, "reason"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;

    .line 175
    .local v1, "process":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    if-eqz v1, :cond_1

    .line 176
    iget-object v2, v1, Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;->mAppInfo:Landroid/content/pm/ApplicationInfo;

    .line 177
    .local v2, "info":Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 178
    .local v3, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    iget v4, v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->mMainProcess:I

    if-ne v4, p1, :cond_0

    .line 179
    invoke-direct {p0, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->remove(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    .line 181
    :cond_0
    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 182
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->remove(ILjava/lang/String;)V

    .line 184
    .end local v1    # "process":Lcom/oneplus/houston/apkserver/bridge/HoustonProcess;
    .end local v2    # "info":Landroid/content/pm/ApplicationInfo;
    .end local v3    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_1
    monitor-exit v0

    .line 185
    return-void

    .line 184
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

    .line 161
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

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonProcessManager"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 165
    .local v1, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-eqz v1, :cond_1

    .line 166
    const/4 v2, -0x1

    if-eq p3, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, p5, v2, p3, p4}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->addLaunchInfo(Ljava/lang/String;ZII)V

    .line 169
    .end local v1    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_1
    monitor-exit v0

    .line 170
    return-void

    .line 169
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

    .line 212
    if-nez p1, :cond_0

    .line 213
    return-void

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 217
    .local v1, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-nez v1, :cond_1

    .line 218
    new-instance v2, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, v3, p1, v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;-><init>(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V

    move-object v1, v2

    .line 220
    :cond_1
    invoke-virtual {v1, p2, p3, p4}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->addJankInfo(Ljava/lang/String;II)V

    .line 221
    .end local v1    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    monitor-exit v0

    .line 222
    return-void

    .line 221
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

    .line 102
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 103
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 104
    .local v1, "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 106
    .local v2, "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "appid"

    const-string v4, "PDJE7FI1KD"

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    .local v3, "builder":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 111
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

    .line 112
    .local v6, "packageName":Ljava/lang/String;
    iget-object v7, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 113
    .local v7, "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->canPreserveToMDM()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 114
    invoke-virtual {v7}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->formatLaunchInfo()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
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

    invoke-static {v8, v9}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {v7}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->reset()V

    .line 117
    const/4 v4, 0x1

    .line 119
    .end local v6    # "packageName":Ljava/lang/String;
    .end local v7    # "hp":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_0
    goto :goto_0

    .line 120
    :cond_1
    if-eqz v4, :cond_2

    .line 121
    const-string v5, "houston_launch_result"

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v5

    const-string v6, "houston_launch_info"

    invoke-virtual {v5, p1, v6, v2, v1}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveAppData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_1

    .line 125
    :cond_2
    const-string v5, "HoustonProcessManager"

    const-string v6, "No data to save"

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .end local v1    # "extraData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "eventData":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v3    # "builder":Ljava/lang/StringBuilder;
    .end local v4    # "doSomething":Z
    :goto_1
    monitor-exit v0

    .line 128
    return-void

    .line 127
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

    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "frontPackageChanged":Z
    if-eqz p2, :cond_0

    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 385
    const/4 v0, 0x1

    .line 388
    :cond_0
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 389
    :try_start_0
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    .line 390
    .local v2, "lpackageName":Ljava/lang/String;
    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mCurrentPackage:Ljava/lang/String;

    .line 391
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

    invoke-static {v3, v4}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    if-eqz v0, :cond_7

    .line 395
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 396
    .local v3, "hpFront":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    iget-object v4, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mPackages:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;

    .line 398
    .local v4, "hpBackground":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    sget v5, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->mGlobalConfig:I

    const/4 v6, 0x1

    and-int/2addr v5, v6

    if-lez v5, :cond_2

    const-string v5, "com.android.permissioncontroller"

    .line 399
    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 400
    if-eqz v3, :cond_1

    .line 401
    invoke-virtual {v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->addTotalLaunchCount()V

    .line 403
    :cond_1
    if-eqz v4, :cond_2

    .line 404
    invoke-virtual {v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;->stopFreezingLaunchCount()V

    .line 408
    :cond_2
    iget-boolean v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsAiFeatrueOn:Z

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    if-nez v5, :cond_3

    goto/16 :goto_0

    .line 412
    :cond_3
    iget v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    if-ne v5, v6, :cond_4

    .line 413
    const-string v5, "HoustonProcessManager"

    const-string v6, "AI_BOOST_WHITE_LIST"

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
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

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 415
    invoke-direct {p0, v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->pause(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    .line 416
    invoke-direct {p0, p2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->isBoostPackage(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 417
    invoke-direct {p0, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    goto :goto_1

    .line 419
    :cond_4
    iget v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 420
    const-string v5, "HoustonProcessManager"

    const-string v6, "AI_BOOST_ALL_EXCEPT_BLACK_LIST"

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
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

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, v4}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->pause(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    .line 423
    invoke-direct {p0, p2}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->isSkipBoostPackage(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 424
    invoke-direct {p0, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->start(Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;)V

    goto :goto_1

    .line 426
    :cond_5
    iget v5, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    if-nez v5, :cond_7

    .line 427
    const-string v5, "HoustonProcessManager"

    const-string v6, " ai boost is off! donothing!"

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :cond_6
    :goto_0
    const-string v5, "HoustonProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " initOnlineConfig mIsAiFeatrueOn:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mIsAiFeatrueOn:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " mBrain:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBrain:Lvendor/oneplus/hardware/brain/V1_0/IOneplusBrain;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    monitor-exit v1

    return-void

    .line 430
    .end local v2    # "lpackageName":Ljava/lang/String;
    .end local v3    # "hpFront":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    .end local v4    # "hpBackground":Lcom/oneplus/houston/apkserver/bridge/HoustonPackage;
    :cond_7
    :goto_1
    monitor-exit v1

    .line 431
    return-void

    .line 430
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

    .line 467
    .local p1, "whiteMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;>;"
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 468
    :try_start_0
    iput-object p1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    .line 469
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

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 470
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

    .line 471
    .local v2, "pkg":Ljava/lang/String;
    iget-object v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;

    .line 472
    .local v3, "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    if-eqz v3, :cond_0

    .line 473
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

    invoke-static {v4, v5}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "adjust":Lcom/oneplus/houston/apkserver/bridge/HoustonAiAdjust;
    :cond_0
    goto :goto_0

    .line 477
    :cond_1
    iput-object p2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    .line 478
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 479
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

    invoke-static {v2, v3}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 482
    .end local v1    # "i":I
    :cond_2
    iput p3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    .line 483
    const-string v1, "HoustonProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " ai boost controller = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    iget-object v1, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mWhiteGameAdjustMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mBlackGameArray:[Ljava/lang/String;

    iget v3, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mAiBoostController:I

    invoke-direct {p0, v1, v2, v3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateAiBoostLocked(Ljava/util/HashMap;[Ljava/lang/String;I)V

    .line 486
    monitor-exit v0

    .line 487
    return-void

    .line 486
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

    .line 225
    iget-object v0, p0, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 226
    :try_start_0
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->updateScreenState(Z)V

    .line 227
    invoke-virtual {p0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->autoAcquireOrRelease(Z)V

    .line 228
    monitor-exit v0

    .line 229
    return-void

    .line 228
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
