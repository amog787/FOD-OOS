.class public Lcom/android/server/display/DisplayModeDirector;
.super Ljava/lang/Object;
.source "DisplayModeDirector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;,
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
.field private static final DEBUG:Z = true

.field private static final FLOAT_TOLERANCE:F = 0.01f

.field private static final GLOBAL_ID:I = -0x1

.field private static final MSG_BRIGHTNESS_THRESHOLDS_CHANGED:I = 0x2

.field private static final MSG_DEFAULT_PEAK_REFRESH_RATE_CHANGED:I = 0x3

.field private static final MSG_REFRESH_RATE_IN_ZONE_CHANGED:I = 0x4

.field private static final MSG_REFRESH_RATE_RANGE_CHANGED:I = 0x1

.field private static final OPLUS_AUTO_MODE:I = 0x2

.field private static final OPLUS_MAX_120_HZ:I = 0x0

.field private static final OPLUS_MAX_60_HZ:I = 0x1

.field private static final OPLUS_SCREEN_REFRESH_RATE:Ljava/lang/String; = "oneplus_screen_refresh_rate"

.field private static final REFRESH_RATE_120_HZ:F = 120.0f

.field private static final REFRESH_RATE_60_HZ:F = 60.0f

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

.field private mRefreshRequestObserver:Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

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

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    .line 120
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    .line 121
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 122
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 123
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 125
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    .line 126
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    .line 127
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    .line 128
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 129
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    .line 132
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    invoke-direct {v0, p0}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;-><init>(Lcom/android/server/display/DisplayModeDirector;)V

    iput-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRequestObserver:Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    .line 134
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 68
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 68
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$SettingsObserver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 68
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/display/DisplayModeDirector;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 68
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/DisplayModeDirector;)Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 68
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDeviceConfigDisplaySettings:Lcom/android/server/display/DisplayModeDirector$DeviceConfigDisplaySettings;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/display/DisplayModeDirector;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 68
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/DisplayModeDirector;ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/DisplayModeDirector;IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 68
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/display/DisplayModeDirector;)Landroid/util/SparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 68
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/display/DisplayModeDirector;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/DisplayModeDirector;

    .line 68
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    return-void
.end method

.method private filterModes([Landroid/view/Display$Mode;Lcom/android/server/display/DisplayModeDirector$VoteSummary;)[I
    .locals 9
    .param p1, "supportedModes"    # [Landroid/view/Display$Mode;
    .param p2, "summary"    # Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 326
    .local v0, "availableModes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/Display$Mode;>;"
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, p1, v2

    .line 327
    .local v3, "mode":Landroid/view/Display$Mode;
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    const-string v6, "Discarding mode "

    const-string v7, "DisplayModeDirector"

    if-ne v4, v5, :cond_3

    .line 328
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v4

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    if-eq v4, v5, :cond_0

    goto :goto_2

    .line 338
    :cond_0
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v4

    .line 342
    .local v4, "refreshRate":F
    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    const v8, 0x3c23d70a    # 0.01f

    sub-float/2addr v5, v8

    cmpg-float v5, v4, v5

    if-ltz v5, :cond_2

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    add-float/2addr v5, v8

    cmpl-float v5, v4, v5

    if-lez v5, :cond_1

    goto :goto_1

    .line 353
    :cond_1
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 345
    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", outside refresh rate bounds: minRefreshRate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", maxRefreshRate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", modeRefreshRate="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    goto :goto_3

    .line 330
    .end local v4    # "refreshRate":F
    :cond_3
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", wrong size: desiredWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": desiredHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p2, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": actualWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ": actualHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 330
    invoke-static {v7, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 336
    nop

    .line 326
    .end local v3    # "mode":Landroid/view/Display$Mode;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 355
    :cond_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 356
    .local v1, "size":I
    new-array v2, v1, [I

    .line 357
    .local v2, "availableModeIds":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    if-ge v3, v1, :cond_5

    .line 358
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/Display$Mode;

    invoke-virtual {v4}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    aput v4, v2, v3

    .line 357
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 360
    .end local v3    # "i":I
    :cond_5
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

    .line 494
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    .line 495
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v1

    if-ltz v1, :cond_0

    .line 496
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    return-object v1

    .line 498
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 499
    .local v1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 500
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

    .line 158
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 160
    .local v0, "displayVotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    if-eqz v0, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    move-result-object v1

    .local v1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    goto :goto_0

    .line 163
    .end local v1    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :cond_0
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 166
    .restart local v1    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 167
    .local v2, "globalVotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    if-eqz v2, :cond_2

    .line 168
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_2

    .line 169
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 170
    .local v4, "priority":I
    invoke-virtual {v1, v4}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_1

    .line 171
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayModeDirector$Vote;

    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 168
    .end local v4    # "priority":I
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 175
    .end local v3    # "i":I
    :cond_2
    return-object v1
.end method

.method private notifyDesiredDisplayModeSpecsChangedLocked()V
    .locals 3

    .line 481
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    .line 482
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 487
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mHandler:Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;

    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayModeDirector$DisplayModeDirectorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 489
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 491
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

    .line 200
    .local p1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    invoke-virtual {p3}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->reset()V

    .line 201
    const/16 v0, 0xc

    .local v0, "priority":I
    :goto_0
    if-lt v0, p2, :cond_2

    .line 202
    invoke-virtual {p1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 203
    .local v1, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-nez v1, :cond_0

    .line 204
    goto :goto_1

    .line 207
    :cond_0
    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget-object v3, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v3, v3, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 208
    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget-object v3, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->refreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v3, v3, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 211
    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    iget v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v2, v3, :cond_1

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    if-lez v2, :cond_1

    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    if-lez v2, :cond_1

    .line 213
    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->width:I

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 214
    iget v2, v1, Lcom/android/server/display/DisplayModeDirector$Vote;->height:I

    iput v2, p3, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    .line 201
    .end local v1    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 217
    .end local v0    # "priority":I
    :cond_2
    return-void
.end method

.method private updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 5
    .param p1, "displayId"    # I
    .param p2, "priority"    # I
    .param p3, "vote"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 451
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateVoteLocked(displayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", priority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 452
    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", vote="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 451
    const-string v2, "DisplayModeDirector"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    if-ltz p2, :cond_3

    const/16 v0, 0xc

    if-le p2, v0, :cond_0

    goto :goto_1

    .line 461
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getOrCreateVotesByDisplay(I)Landroid/util/SparseArray;

    move-result-object v0

    .line 463
    .local v0, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 464
    .local v1, "currentVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-eqz p3, :cond_1

    .line 465
    invoke-virtual {v0, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 467
    :cond_1
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 470
    :goto_0
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-nez v3, :cond_2

    .line 472
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No votes left for display "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", removing."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 477
    :cond_2
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 478
    return-void

    .line 456
    .end local v0    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v1    # "currentVote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :cond_3
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received a vote with an invalid priority, ignoring: priority="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    invoke-static {p2}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    .line 456
    invoke-static {v2, v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 459
    return-void
.end method

.method private updateVoteLocked(ILcom/android/server/display/DisplayModeDirector$Vote;)V
    .locals 1
    .param p1, "priority"    # I
    .param p2, "vote"    # Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 446
    const/4 v0, -0x1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/display/DisplayModeDirector;->updateVoteLocked(IILcom/android/server/display/DisplayModeDirector$Vote;)V

    .line 447
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 409
    const-string v0, "DisplayModeDirector"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 411
    :try_start_0
    const-string v1, "  mSupportedModesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 412
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 413
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 414
    .local v2, "id":I
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Landroid/view/Display$Mode;

    .line 415
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

    .line 412
    .end local v2    # "id":I
    .end local v3    # "modes":[Landroid/view/Display$Mode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 417
    .end local v1    # "i":I
    :cond_0
    const-string v1, "  mDefaultModeByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 418
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 419
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    .line 420
    .restart local v2    # "id":I
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    .line 421
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

    .line 418
    .end local v2    # "id":I
    .end local v3    # "mode":Landroid/view/Display$Mode;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 423
    .end local v1    # "i":I
    :cond_1
    const-string v1, "  mVotesByDisplay:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 425
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

    .line 426
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 427
    .local v2, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    const/16 v3, 0xc

    .local v3, "p":I
    :goto_3
    if-ltz v3, :cond_3

    .line 428
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/DisplayModeDirector$Vote;

    .line 429
    .local v4, "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    if-nez v4, :cond_2

    .line 430
    goto :goto_4

    .line 432
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

    .line 427
    .end local v4    # "vote":Lcom/android/server/display/DisplayModeDirector$Vote;
    :goto_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 424
    .end local v2    # "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    .end local v3    # "p":I
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 435
    .end local v1    # "i":I
    :cond_4
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 436
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 437
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 440
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRequestObserver:Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;->dumpLocked(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 442
    monitor-exit v0

    .line 443
    return-void

    .line 442
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getAppRequestObserver()Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;
    .locals 1

    .line 370
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mAppRequestObserver:Lcom/android/server/display/DisplayModeDirector$AppRequestObserver;

    return-object v0
.end method

.method public getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;
    .locals 14
    .param p1, "displayId"    # I

    .line 229
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/display/DisplayModeDirector;->getVotesLocked(I)Landroid/util/SparseArray;

    move-result-object v1

    .line 231
    .local v1, "votes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;"
    iget-object v2, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/view/Display$Mode;

    .line 232
    .local v2, "modes":[Landroid/view/Display$Mode;
    iget-object v3, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/Display$Mode;

    .line 233
    .local v3, "defaultMode":Landroid/view/Display$Mode;
    if-eqz v2, :cond_6

    if-nez v3, :cond_0

    goto/16 :goto_2

    .line 240
    :cond_0
    const/4 v4, 0x1

    new-array v5, v4, [I

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v6

    const/4 v7, 0x0

    aput v6, v5, v7

    .line 241
    .local v5, "availableModes":[I
    new-instance v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    invoke-direct {v6}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;-><init>()V

    .line 242
    .local v6, "primarySummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    const/4 v8, 0x0

    .line 243
    .local v8, "lowestConsideredPriority":I
    :goto_0
    const/16 v9, 0xc

    if-gt v8, v9, :cond_4

    .line 244
    invoke-direct {p0, v1, v8, v6}, Lcom/android/server/display/DisplayModeDirector;->summarizeVotes(Landroid/util/SparseArray;ILcom/android/server/display/DisplayModeDirector$VoteSummary;)V

    .line 249
    iget v9, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    const/4 v10, -0x1

    if-eq v9, v10, :cond_1

    iget v9, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    if-ne v9, v10, :cond_2

    .line 251
    :cond_1
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v9

    iput v9, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    .line 252
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    move-result v9

    iput v9, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    .line 255
    :cond_2
    invoke-direct {p0, v2, v6}, Lcom/android/server/display/DisplayModeDirector;->filterModes([Landroid/view/Display$Mode;Lcom/android/server/display/DisplayModeDirector$VoteSummary;)[I

    move-result-object v9

    move-object v5, v9

    .line 262
    array-length v9, v5

    if-lez v9, :cond_3

    .line 264
    const-string v9, "DisplayModeDirector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Found available modes="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " with lowest priority considered "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " and constraints: width="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", height="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", minRefreshRate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", maxRefreshRate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 264
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    goto :goto_1

    .line 277
    :cond_3
    const-string v9, "DisplayModeDirector"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Couldn\'t find available modes with lowest priority set to "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    invoke-static {v8}, Lcom/android/server/display/DisplayModeDirector$Vote;->priorityToString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " and with the following constraints: width="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->width:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", height="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->height:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", minRefreshRate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v11, ", maxRefreshRate="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 277
    invoke-static {v9, v10}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 291
    :cond_4
    :goto_1
    new-instance v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;

    invoke-direct {v9}, Lcom/android/server/display/DisplayModeDirector$VoteSummary;-><init>()V

    .line 292
    .local v9, "appRequestSummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    const/4 v10, 0x3

    invoke-direct {p0, v1, v10, v9}, Lcom/android/server/display/DisplayModeDirector;->summarizeVotes(Landroid/util/SparseArray;ILcom/android/server/display/DisplayModeDirector$VoteSummary;)V

    .line 294
    iget v10, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 295
    invoke-static {v10, v11}, Ljava/lang/Math;->min(FF)F

    move-result v10

    iput v10, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 296
    iget v10, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 297
    invoke-static {v10, v11}, Ljava/lang/Math;->max(FF)F

    move-result v10

    iput v10, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 299
    const-string v10, "DisplayModeDirector"

    const-string v11, "App request range: [%.0f %.0f]"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    iget v13, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    .line 301
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v12, v7

    iget v13, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    .line 302
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v13

    aput-object v13, v12, v4

    .line 300
    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 299
    invoke-static {v10, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    .line 306
    .local v4, "baseModeId":I
    array-length v10, v5

    if-lez v10, :cond_5

    .line 307
    aget v7, v5, v7

    move v4, v7

    .line 311
    :cond_5
    invoke-static {v4}, Lcom/android/server/display/OPlusDisplayModeDirectorInjector;->setBaseModeId(I)V

    .line 316
    new-instance v7, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    new-instance v10, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v11, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v12, v6, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v10, v11, v12}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;-><init>(FF)V

    new-instance v11, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v12, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->minRefreshRate:F

    iget v13, v9, Lcom/android/server/display/DisplayModeDirector$VoteSummary;->maxRefreshRate:F

    invoke-direct {v11, v12, v13}, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;-><init>(FF)V

    invoke-direct {v7, v4, v10, v11}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>(ILcom/android/server/display/DisplayModeDirector$RefreshRateRange;Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;)V

    monitor-exit v0

    return-object v7

    .line 234
    .end local v4    # "baseModeId":I
    .end local v5    # "availableModes":[I
    .end local v6    # "primarySummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
    .end local v8    # "lowestConsideredPriority":I
    .end local v9    # "appRequestSummary":Lcom/android/server/display/DisplayModeDirector$VoteSummary;
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

    .line 237
    new-instance v4, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v4}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    monitor-exit v0

    return-object v4

    .line 321
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

    .line 527
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 528
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->access$000(Lcom/android/server/display/DisplayModeDirector$SettingsObserver;FFF)V

    .line 530
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/display/DisplayModeDirector;->getDesiredDisplayModeSpecs(I)Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 531
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getRefreshRequestObserver()Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;
    .locals 1

    .line 382
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mRefreshRequestObserver:Lcom/android/server/display/DisplayModeDirector$RefreshRequestObserver;

    return-object v0
.end method

.method injectBrightnessObserver(Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;)V
    .locals 0
    .param p1, "brightnessObserver"    # Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 521
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    .line 522
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

    .line 511
    .local p1, "defaultModeByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/view/Display$Mode;>;"
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDefaultModeByDisplay:Landroid/util/SparseArray;

    .line 512
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

    .line 506
    .local p1, "supportedModesByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[Landroid/view/Display$Mode;>;"
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mSupportedModesByDisplay:Landroid/util/SparseArray;

    .line 507
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

    .line 516
    .local p1, "votesByDisplay":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/SparseArray<Lcom/android/server/display/DisplayModeDirector$Vote;>;>;"
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 517
    return-void
.end method

.method public notifyRefreshRatePolicyChange()V
    .locals 0

    .line 1713
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 1714
    return-void
.end method

.method public setDesiredDisplayModeSpecsListener(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;)V
    .locals 2
    .param p1, "desiredDisplayModeSpecsListener"    # Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 392
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 393
    :try_start_0
    iput-object p1, p0, Lcom/android/server/display/DisplayModeDirector;->mDesiredDisplayModeSpecsListener:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecsListener;

    .line 394
    monitor-exit v0

    .line 395
    return-void

    .line 394
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

    .line 144
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    .line 145
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mDisplayObserver:Lcom/android/server/display/DisplayModeDirector$DisplayObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$DisplayObserver;->observe()V

    .line 146
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mSettingsObserver:Lcom/android/server/display/DisplayModeDirector$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayModeDirector$SettingsObserver;->observe()V

    .line 147
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mBrightnessObserver:Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;

    invoke-virtual {v0, p1}, Lcom/android/server/display/DisplayModeDirector$BrightnessObserver;->observe(Landroid/hardware/SensorManager;)V

    .line 148
    iget-object v0, p0, Lcom/android/server/display/DisplayModeDirector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 151
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 152
    monitor-exit v0

    .line 154
    return-void

    .line 152
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
