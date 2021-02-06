.class public Lcom/android/server/display/DisplayModeDirector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;,
        Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;,
        Lcom/android/server/display/DisplayModeDirector$DisplayObserver;,
        Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;,
        Lcom/android/server/display/DisplayModeDirector$SettingsObserver;,
        Lcom/android/server/display/DisplayModeDirector$Vote;,
        Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;,
        Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;,
        Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;,
        Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;,
        Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final FLOAT_TOLERANCE:F = 0.01f

.field private static final GLOBAL_ID:I = -0x1

.field private static final MSG_BRIGHTNESS_THRESHOLDS_CHANGED:I = 0x2

.field private static final MSG_DEFAULT_PEAK_REFRESH_RATE_CHANGED:I = 0x3

.field private static final MSG_REFRESH_RATE_IN_ZONE_CHANGED:I = 0x4

.field private static final MSG_REFRESH_RATE_RANGE_CHANGED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "DisplayModeDirector"


# instance fields
.field private final mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

.field private mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

.field private final mContext:Landroid/content/Context;

.field private mDefaultModeByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

.field private final mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

.field private final mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

.field private final mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

.field private final mLock:Ljava/lang/Object;

.field private final mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

.field private mSupportedModesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;"
        }
    .end annotation
.end field

.field private mVotesByDisplay:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 100
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 101
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 102
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 103
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 104
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 105
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 106
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    .line 107
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    .line 108
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    .line 109
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 110
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 111
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 62
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 62
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 62
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 62
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 62
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 62
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 62
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 62
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayModeDirector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 62
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void
.end method

.method private filterModes([Landroid/view/Display$Mode;Lcom/android/server/display/DisplayModeDirector$VoteSummary;)[I
    .locals 7
    .param p1, "supportedModes"    # [Landroid/view/Display$Mode;
    .param p2, "summary"    # Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 293
    .local v0, "availableModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display$Mode;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, p1, v2

    .line 294
    .local v3, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v4, v5, :cond_2

    .line 295
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    if-eq v4, v5, :cond_0

    .line 303
    goto :goto_1

    .line 305
    :cond_0
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    .line 309
    .local v4, "refreshRate":F
    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    const v6, 0x3c23d70a    # 0.01f

    sub-float/2addr v5, v6

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_2

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    add-float/2addr v5, v6

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    .line 318
    goto :goto_1

    .line 320
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    .end local v3    # "mode":Landroid/view/Display$Mode;
    .end local v4    # "refreshRate":F
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 322
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 323
    .local v1, "size":I
    new-array v2, v1, [I

    .line 324
    .local v2, "availableModeIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_2
    if-ge v3, v1, :cond_4

    .line 325
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    aput v4, v2, v3

    .line 324
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 327
    .end local v3    # "i":I
    :cond_4
    return-object v2
.end method

.method private getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;
    .locals 3
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    .line 438
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 439
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 440
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    return-object v1

    .line 442
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 443
    .local v1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 444
    return-object v1
.end method

.method private getVotesLocked(I)Landroid/util/SparseArray;
    .locals 6
    .param p1, "displayId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;"
        }
    .end annotation

    .line 135
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 137
    .local v0, "displayVotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .local v1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    goto :goto_0

    .line 140
    .end local v1    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 143
    .restart local v1    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 144
    .local v2, "globalVotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    if-eqz v2, :cond_2

    .line 145
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 146
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 147
    .local v4, "priority":I
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_1

    .line 148
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayModeDirector$Vote;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 145
    .end local v4    # "priority":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 152
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private notifyDesiredDisplayModeSpecsChangedLocked()V
    .locals 3

    .line 425
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 426
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 433
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 435
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    return-void
.end method

.method private summarizeVotes(Landroid/util/SparseArray;ILcom/android/server/display/DisplayModeDirector$VoteSummary;)V
    .locals 4
    .param p2, "lowestConsideredPriority"    # I
    .param p3, "summary"    # Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;I",
            "Lcom/android/server/display/DisplayModeDirector$VoteSummary;",
            ")V"
        }
    .end annotation

    .line 177
    .local p1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    invoke-virtual {p3}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->reset()V

    .line 178
    const/4 v0, 0x7

    .local v0, "priority":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 179
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 180
    .local v1, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-nez v1, :cond_0

    .line 181
    goto :goto_1

    .line 184
    :cond_0
    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget-object v3, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v3, v3, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 185
    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget-object v3, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v3, v3, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 188
    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    if-lez v2, :cond_1

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    if-lez v2, :cond_1

    .line 190
    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 191
    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    .line 178
    .end local v1    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 194
    .end local v0    # "priority":I
    :cond_2
    return-void
.end method

.method private updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 3
    .param p1, "displayId"    # I
    .param p2, "priority"    # I
    .param p3, "vote"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 399
    if-ltz p2, :cond_3

    const/4 v0, 0x7

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 405
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 407
    .local v0, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 408
    .local v1, "currentVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-eqz p3, :cond_1

    .line 409
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 411
    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 414
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-nez v2, :cond_2

    .line 418
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 421
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 422
    return-void

    .line 400
    .end local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v1    # "currentVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received a vote with an invalid priority, ignoring: priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 400
    const-string v2, "DisplayModeDirector"

    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 403
    return-void
.end method

.method private updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "vote"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 390
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 391
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 357
    const-string v0, "DisplayModeDirector"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 358
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 359
    :try_start_0
    const-string v1, "  mSupportedModesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 361
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 362
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/Display$Mode;

    .line 363
    .local v3, "modes":[Landroid/view/Display$Mode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 360
    .end local v2    # "id":I
    .end local v3    # "modes":[Landroid/view/Display$Mode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 365
    .end local v1    # "i":I
    :cond_0
    const-string v1, "  mDefaultModeByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 367
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 368
    .restart local v2    # "id":I
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    .line 369
    .local v3, "mode":Landroid/view/Display$Mode;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 366
    .end local v2    # "id":I
    .end local v3    # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 371
    .end local v1    # "i":I
    :cond_1
    const-string v1, "  mVotesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 372
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 373
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 374
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 375
    .local v2, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    const/4 v3, 0x7

    .local v3, "p":I
    :goto_3
    if-ltz v3, :cond_3

    .line 376
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 377
    .local v4, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-nez v4, :cond_2

    .line 378
    goto :goto_4

    .line 380
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "      "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " -> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 375
    .end local v4    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 372
    .end local v2    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v3    # "p":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 383
    .end local v1    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 384
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 385
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 386
    monitor-exit v0

    .line 387
    return-void

    .line 386
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppRequestObserver()Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
    .locals 1

    .line 337
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    return-object v0
.end method

.method public getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 14
    .param p1, "displayId"    # I

    .line 206
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 207
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getVotesLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    .line 208
    .local v1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    .line 209
    .local v2, "modes":[Landroid/view/Display$Mode;
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    .line 210
    .local v3, "defaultMode":Landroid/view/Display$Mode;
    if-eqz v2, :cond_6

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 217
    :cond_0
    const/4 v4, 0x1

    new-array v4, v4, [I

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    const/4 v6, 0x0

    aput v5, v4, v6

    .line 218
    .local v4, "availableModes":[I
    new-instance v5, Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    invoke-direct {v5}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;-><init>()V

    .line 219
    .local v5, "primarySummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    const/4 v7, 0x0

    .line 220
    .local v7, "lowestConsideredPriority":I
    :goto_0
    const/4 v8, 0x7

    if-gt v7, v8, :cond_4

    .line 221
    invoke-direct {p0, v1, v7, v5}, Lcom/android/server/display/DisplayModeDirector;->summarizeVotes(Landroid/util/SparseArray;ILcom/android/server/display/DisplayModeDirector$VoteSummary;)V

    .line 226
    iget v8, v5, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_1

    iget v8, v5, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v8, v9, :cond_2

    .line 228
    :cond_1
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v8

    iput v8, v5, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 229
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v8

    iput v8, v5, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    .line 232
    :cond_2
    invoke-direct {p0, v2, v5}, Lcom/android/server/display/DisplayModeDirector;->filterModes([Landroid/view/Display$Mode;Lcom/android/server/display/DisplayModeDirector$VoteSummary;)[I

    move-result-object v8

    move-object v4, v8

    .line 233
    array-length v8, v4

    if-lez v8, :cond_3

    .line 244
    goto :goto_1

    .line 259
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 262
    :cond_4
    :goto_1
    new-instance v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    invoke-direct {v8}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;-><init>()V

    .line 263
    .local v8, "appRequestSummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    const/4 v9, 0x3

    invoke-direct {p0, v1, v9, v8}, Lcom/android/server/display/DisplayModeDirector;->summarizeVotes(Landroid/util/SparseArray;ILcom/android/server/display/DisplayModeDirector$VoteSummary;)V

    .line 265
    iget v9, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v10, v5, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 266
    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 267
    iget v9, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget v10, v5, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 268
    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 276
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v9

    .line 277
    .local v9, "baseModeId":I
    array-length v10, v4

    if-lez v10, :cond_5

    .line 278
    aget v6, v4, v6

    move v9, v6

    .line 283
    :cond_5
    new-instance v6, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    new-instance v10, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v11, v5, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v12, v5, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v10, v11, v12}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;-><init>(FF)V

    new-instance v11, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v12, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v13, v8, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v11, v12, v13}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;-><init>(FF)V

    invoke-direct {v6, v9, v10, v11}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(ILcom/android/server/display/DisplayModeDirector$RefreshRateRange;Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;)V

    monitor-exit v0

    return-object v6

    .line 211
    .end local v4    # "availableModes":[I
    .end local v5    # "primarySummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    .end local v7    # "lowestConsideredPriority":I
    .end local v8    # "appRequestSummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    .end local v9    # "baseModeId":I
    :cond_6
    :goto_2
    const-string v4, "DisplayModeDirector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Asked about unknown display, returning empty display mode specs!(id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    new-instance v4, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v4}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    monitor-exit v0

    return-object v4

    .line 288
    .end local v1    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v2    # "modes":[Landroid/view/Display$Mode;
    .end local v3    # "defaultMode":Landroid/view/Display$Mode;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getDesiredDisplayModeSpecsWithInjectedFpsSettings(FFF)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 2
    .param p1, "minRefreshRate"    # F
    .param p2, "peakRefreshRate"    # F
    .param p3, "defaultRefreshRate"    # F

    .line 471
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->access$000(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;FFF)V

    .line 474
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 475
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method injectBrightnessObserver(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .locals 0
    .param p1, "brightnessObserver"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 465
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 466
    return-void
.end method

.method injectDefaultModeByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 455
    .local p1, "defaultModeByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Display$Mode;>;"
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 456
    return-void
.end method

.method injectSupportedModesByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "[",
            "Landroid/view/Display$Mode;",
            ">;)V"
        }
    .end annotation

    .line 450
    .local p1, "supportedModesByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Landroid/view/Display$Mode;>;"
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 451
    return-void
.end method

.method injectVotesByDisplay(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/DisplayModeDirector$Vote;",
            ">;>;)V"
        }
    .end annotation

    .line 460
    .local p1, "votesByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;>;"
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 461
    return-void
.end method

.method public setDesiredDisplayModeSpecsListener(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;)V
    .locals 2
    .param p1, "desiredDisplayModeSpecsListener"    # Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 346
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 347
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 348
    monitor-exit v0

    .line 349
    return-void

    .line 348
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Landroid/hardware/SensorManager;)V
    .locals 2
    .param p1, "sensorManager"    # Landroid/hardware/SensorManager;

    .line 121
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    .line 122
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->observe()V

    .line 123
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    .line 124
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->observe(Landroid/hardware/SensorManager;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 128
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 129
    monitor-exit v0

    .line 131
    return-void

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
