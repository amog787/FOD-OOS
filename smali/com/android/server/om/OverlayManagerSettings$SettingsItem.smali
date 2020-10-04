.class final Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
.super Ljava/lang/Object;
.source "OverlayManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/om/OverlayManagerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SettingsItem"
.end annotation


# instance fields
.field private mBaseCodePath:Ljava/lang/String;

.field private mCache:Landroid/content/om/OverlayInfo;

.field private mCategory:Ljava/lang/String;

.field private mIsEnabled:Z

.field private mIsStatic:Z

.field private final mPackageName:Ljava/lang/String;

.field private mPriority:I

.field private mState:I

.field private final mTargetOverlayableName:Ljava/lang/String;

.field private final mTargetPackageName:Ljava/lang/String;

.field private final mUserId:I


# direct methods
.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;)V
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "targetOverlayableName"    # Ljava/lang/String;
    .param p5, "baseCodePath"    # Ljava/lang/String;
    .param p6, "state"    # I
    .param p7, "isEnabled"    # Z
    .param p8, "isStatic"    # Z
    .param p9, "priority"    # I
    .param p10, "category"    # Ljava/lang/String;

    .line 505
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 506
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;

    .line 507
    iput p2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    .line 508
    iput-object p3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    .line 509
    iput-object p4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    .line 510
    iput-object p5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 511
    iput p6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 512
    if-nez p7, :cond_1

    if-eqz p8, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 513
    iput-object p10, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 515
    iput-boolean p8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    .line 516
    iput p9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    .line 517
    return-void
.end method

.method constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;)V
    .locals 11
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .param p3, "targetPackageName"    # Ljava/lang/String;
    .param p4, "targetOverlayableName"    # Ljava/lang/String;
    .param p5, "baseCodePath"    # Ljava/lang/String;
    .param p6, "isStatic"    # Z
    .param p7, "priority"    # I
    .param p8, "category"    # Ljava/lang/String;

    .line 523
    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v10, p8

    invoke-direct/range {v0 .. v10}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZILjava/lang/String;)V

    .line 525
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .param p1, "x1"    # Z

    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setEnabled(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getTargetOverlayableName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getBaseCodePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isStatic()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Landroid/content/om/OverlayInfo;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getOverlayInfo()Landroid/content/om/OverlayInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .param p1, "x1"    # Ljava/lang/String;

    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setBaseCodePath(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .param p1, "x1"    # Ljava/lang/String;

    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setCategory(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->isEnabled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getState()I

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;
    .param p1, "x1"    # I

    .line 488
    invoke-direct {p0, p1}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->setState(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/om/OverlayManagerSettings$SettingsItem;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/om/OverlayManagerSettings$SettingsItem;

    .line 488
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->getUserId()I

    move-result v0

    return v0
.end method

.method private getBaseCodePath()Ljava/lang/String;
    .locals 1

    .line 540
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    return-object v0
.end method

.method private getOverlayInfo()Landroid/content/om/OverlayInfo;
    .locals 11

    .line 592
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    if-nez v0, :cond_0

    .line 593
    new-instance v0, Landroid/content/om/OverlayInfo;

    iget-object v2, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    iget v7, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    iget v8, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    iget v9, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    iget-boolean v10, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    move-object v1, v0

    invoke-direct/range {v1 .. v10}, Landroid/content/om/OverlayInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIZ)V

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 596
    :cond_0
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    return-object v0
.end method

.method private getPriority()I
    .locals 1

    .line 608
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mPriority:I

    return v0
.end method

.method private getState()I
    .locals 1

    .line 553
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    return v0
.end method

.method private getTargetOverlayableName()Ljava/lang/String;
    .locals 1

    .line 532
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetOverlayableName:Ljava/lang/String;

    return-object v0
.end method

.method private getTargetPackageName()Ljava/lang/String;
    .locals 1

    .line 528
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mTargetPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private getUserId()I
    .locals 1

    .line 536
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mUserId:I

    return v0
.end method

.method private invalidateCache()V
    .locals 1

    .line 600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCache:Landroid/content/om/OverlayInfo;

    .line 601
    return-void
.end method

.method private isEnabled()Z
    .locals 1

    .line 566
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    return v0
.end method

.method private isStatic()Z
    .locals 1

    .line 604
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    return v0
.end method

.method private setBaseCodePath(Ljava/lang/String;)Z
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .line 544
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    iput-object p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mBaseCodePath:Ljava/lang/String;

    .line 546
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 547
    const/4 v0, 0x1

    return v0

    .line 549
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private setCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 583
    iget-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 584
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mCategory:Ljava/lang/String;

    .line 585
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 586
    const/4 v0, 0x1

    return v0

    .line 588
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private setEnabled(Z)Z
    .locals 2
    .param p1, "enable"    # Z

    .line 570
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsStatic:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 571
    return v1

    .line 574
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    if-eq v0, p1, :cond_1

    .line 575
    iput-boolean p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mIsEnabled:Z

    .line 576
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 577
    const/4 v0, 0x1

    return v0

    .line 579
    :cond_1
    return v1
.end method

.method private setState(I)Z
    .locals 1
    .param p1, "state"    # I

    .line 557
    iget v0, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    if-eq v0, p1, :cond_0

    .line 558
    iput p1, p0, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->mState:I

    .line 559
    invoke-direct {p0}, Lcom/android/server/om/OverlayManagerSettings$SettingsItem;->invalidateCache()V

    .line 560
    const/4 v0, 0x1

    return v0

    .line 562
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
