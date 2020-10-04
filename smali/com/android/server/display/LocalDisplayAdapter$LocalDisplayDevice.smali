.class final Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalDisplayDevice"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mActiveColorMode:I

.field private mActiveColorModeInvalid:Z

.field private mActiveModeId:I

.field private mActiveModeInvalid:Z

.field private mActivePhysIndex:I

.field private mAllowedModeIds:[I

.field private mAllowedModeIdsInvalid:Z

.field private mAllowedPhysIndexes:[I

.field private final mBacklight:Lcom/android/server/lights/Light;

.field private mBrightness:I

.field private mDefaultModeId:I

.field private mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

.field private mHavePendingChanges:Z

.field private mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mIsInternal:Z

.field private final mPhysicalDisplayId:J

.field private mSidekickActive:Z

.field private mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

.field private mState:I

.field private final mSupportedColorModes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSupportedModes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 220
    const-class v0, Lcom/android/server/display/LocalDisplayAdapter;

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;J[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[IIZ)V
    .locals 12
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "physicalDisplayId"    # J
    .param p5, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p6, "activeDisplayInfo"    # I
    .param p7, "allowedDisplayInfos"    # [I
    .param p8, "colorModes"    # [I
    .param p9, "activeColorMode"    # I
    .param p10, "isInternal"    # Z

    .line 249
    move-object v6, p0

    move-object v0, p1

    move-wide v7, p3

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "local:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, p2

    invoke-direct {p0, p1, p2, v1}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 223
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 229
    const/4 v10, 0x0

    iput v10, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 230
    const/4 v0, -0x1

    iput v0, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    .line 251
    iput-wide v7, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 252
    move/from16 v11, p10

    iput-boolean v11, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsInternal:Z

    .line 253
    move-object v0, p0

    move-object/from16 v1, p5

    move/from16 v2, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move/from16 v5, p9

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[II)Z

    .line 255
    move-object/from16 v0, p8

    move/from16 v1, p9

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateColorModesLocked([II)Z

    .line 256
    const-class v2, Landroid/hardware/sidekick/SidekickInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/sidekick/SidekickInternal;

    iput-object v2, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    .line 257
    iget-boolean v2, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsInternal:Z

    if-eqz v2, :cond_0

    .line 258
    const-class v2, Lcom/android/server/lights/LightsManager;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/lights/LightsManager;

    .line 259
    .local v2, "lights":Lcom/android/server/lights/LightsManager;
    invoke-virtual {v2, v10}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v3

    iput-object v3, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    .line 260
    .end local v2    # "lights":Lcom/android/server/lights/LightsManager;
    goto :goto_0

    .line 261
    :cond_0
    const/4 v2, 0x0

    iput-object v2, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    .line 263
    :goto_0
    invoke-static {p2}, Landroid/view/SurfaceControl;->getHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;

    move-result-object v2

    iput-object v2, v6, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 264
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/Light;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 220
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 220
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .param p1, "x1"    # Z

    .line 220
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 220
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    return-object v0
.end method

.method private findDisplayInfoIndexLocked(I)I
    .locals 4
    .param p1, "modeId"    # I

    .line 852
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 853
    .local v0, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    if-eqz v0, :cond_1

    .line 854
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 855
    aget-object v2, v2, v1

    .line 856
    .local v2, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    invoke-virtual {v0, v2}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 857
    return v1

    .line 854
    .end local v2    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 861
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method private findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .locals 3
    .param p1, "info"    # Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 429
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 430
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 431
    .local v1, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-virtual {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 432
    return-object v1

    .line 429
    .end local v1    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private findMatchingModeIdLocked(I)I
    .locals 4
    .param p1, "physIndex"    # I

    .line 865
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    aget-object v0, v0, p1

    .line 866
    .local v0, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 867
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 868
    .local v2, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-virtual {v2, v0}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 869
    iget-object v3, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    return v3

    .line 866
    .end local v2    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 872
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method private getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;",
            ">;)[",
            "Landroid/view/Display$Mode;"
        }
    .end annotation

    .line 881
    .local p1, "records":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 882
    .local v0, "size":I
    new-array v1, v0, [Landroid/view/Display$Mode;

    .line 883
    .local v1, "modes":[Landroid/view/Display$Mode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 884
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 885
    .local v3, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v4, v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    aput-object v4, v1, v2

    .line 883
    .end local v3    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 887
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z
    .locals 7
    .param p1, "physicalAddress"    # Landroid/view/DisplayAddress$Physical;

    .line 891
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 892
    return v0

    .line 894
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 895
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x107005a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 897
    .local v2, "ports":[I
    if-eqz v2, :cond_2

    .line 898
    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v3

    .line 899
    .local v3, "port":I
    array-length v4, v2

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v2, v5

    .line 900
    .local v6, "p":I
    if-ne v6, v3, :cond_1

    .line 901
    const/4 v0, 0x1

    return v0

    .line 899
    .end local v6    # "p":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 905
    .end local v3    # "port":I
    :cond_2
    return v0
.end method

.method private updateColorModesLocked([II)Z
    .locals 8
    .param p1, "colorModes"    # [I
    .param p2, "activeColorMode"    # I

    .line 378
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 380
    .local v0, "pendingColorModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 382
    :cond_0
    const/4 v2, 0x0

    .line 383
    .local v2, "colorModesAdded":Z
    array-length v3, p1

    move v4, v2

    move v2, v1

    .end local v2    # "colorModesAdded":Z
    .local v4, "colorModesAdded":Z
    :goto_0
    if-ge v2, v3, :cond_2

    aget v5, p1, v2

    .line 384
    .local v5, "colorMode":I
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 385
    const/4 v4, 0x1

    .line 387
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 383
    .end local v5    # "colorMode":I
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 390
    :cond_2
    nop

    .line 391
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v5, 0x1

    if-ne v2, v3, :cond_4

    if-eqz v4, :cond_3

    goto :goto_1

    :cond_3
    move v2, v1

    goto :goto_2

    :cond_4
    :goto_1
    move v2, v5

    .line 395
    .local v2, "colorModesChanged":Z
    :goto_2
    if-nez v2, :cond_5

    .line 396
    return v1

    .line 399
    :cond_5
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 401
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 402
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 403
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 406
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    .line 407
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    const-string v6, "LocalDisplayAdapter"

    if-eqz v3, :cond_6

    .line 408
    const-string v3, "Active color mode no longer available, reverting to default mode."

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 411
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    goto :goto_3

    .line 413
    :cond_6
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    .line 415
    const-string v3, "Default and active color mode is no longer available! Reverting to first available mode."

    invoke-static {v6, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 418
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    goto :goto_3

    .line 421
    :cond_7
    const-string v1, "No color modes available!"

    invoke-static {v6, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 425
    :cond_8
    :goto_3
    return v5
.end method

.method private updateDeviceInfoLocked()V
    .locals 2

    .line 876
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 877
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 878
    return-void
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 1

    .line 440
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_0

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 444
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 821
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 822
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPhysicalDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 823
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllowedPhysIndexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllowedModeIds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllowedModeIdsInvalid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIdsInvalid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 826
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActivePhysIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDefaultModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 830
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    invoke-static {v1}, Landroid/view/Display;->stateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 831
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBrightness="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 833
    const-string/jumbo v0, "mDisplayInfos="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    array-length v1, v1

    const-string v2, "  "

    if-ge v0, v1, :cond_0

    .line 835
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 837
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v0, "mSupportedModes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 839
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 838
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 841
    .end local v0    # "i":I
    :cond_1
    const-string/jumbo v0, "mSupportedColorModes=["

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 842
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 843
    if-eqz v0, :cond_2

    .line 844
    const-string v1, ", "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 846
    :cond_2
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 842
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 848
    .end local v0    # "i":I
    :cond_3
    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 849
    return-void
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 10

    .line 448
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_d

    .line 449
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    aget-object v0, v0, v1

    .line 450
    .local v0, "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    new-instance v1, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v1}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 451
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 452
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 453
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 454
    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 455
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 456
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 457
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 458
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 459
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 460
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 459
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 462
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 463
    iget-wide v2, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->appVsyncOffsetNanos:J

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 464
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v2, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->presentationDeadlineNanos:J

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 465
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 466
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 467
    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 468
    invoke-static {v1, v2}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v1

    .line 469
    .local v1, "physicalAddress":Landroid/view/DisplayAddress$Physical;
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput-object v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 473
    iget-boolean v2, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->secure:Z

    if-eqz v2, :cond_1

    .line 474
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v3, 0xc

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 478
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 479
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 480
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    check-cast v3, Landroid/view/DisplayAddress$Physical;

    invoke-virtual {v3}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v3

    if-gez v3, :cond_2

    move v3, v5

    goto :goto_1

    :cond_2
    move v3, v4

    .line 481
    .local v3, "isBuiltIn":Z
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsInternal:Z

    const/4 v7, 0x3

    const v8, 0x104020a

    if-eqz v6, :cond_6

    .line 482
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 484
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v8, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v7, v8

    iput v7, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 486
    const v6, 0x1110098

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_3

    sget-boolean v6, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v6, :cond_4

    .line 488
    const-string/jumbo v6, "ro.emulator.circular"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 489
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 491
    :cond_4
    const v4, 0x1110099

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 493
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v6, v6, 0x800

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 495
    :cond_5
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v7, v7, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-static {v2, v6, v7}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;II)Landroid/view/DisplayCutout;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 497
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 498
    iget v6, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->density:F

    const/high16 v7, 0x43200000    # 160.0f

    mul-float/2addr v6, v7

    const/high16 v7, 0x3f000000    # 0.5f

    add-float/2addr v6, v7

    float-to-int v6, v6

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 499
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->xDpi:F

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 500
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->yDpi:F

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 501
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    goto/16 :goto_3

    .line 502
    :cond_6
    const/4 v6, 0x2

    if-eqz v3, :cond_9

    .line 503
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v7, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 504
    iput v5, v7, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 505
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v7, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 507
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v7, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v6, v7

    iput v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 509
    const-string/jumbo v5, "vendor.display.builtin_presentation"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 511
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v6, v6, 0x40

    iput v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_2

    .line 513
    :cond_7
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 516
    :goto_2
    const-string/jumbo v5, "vendor.display.builtin_mirroring"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    .line 518
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 521
    :cond_8
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v6, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    goto :goto_3

    .line 523
    :cond_9
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/4 v8, 0x0

    iput-object v8, v5, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    .line 524
    iput v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 525
    iget v8, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v8, v8, 0x40

    iput v8, v5, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 526
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v8, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v8}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x104020b

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v5, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 528
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v6, v5, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 529
    iget v8, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->width:I

    iget v9, v0, Landroid/view/SurfaceControl$PhysicalDisplayInfo;->height:I

    invoke-virtual {v5, v8, v9}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    .line 533
    const-string/jumbo v5, "persist.demo.hdmirotation"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v8, "portrait"

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 534
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v7, v5, Lcom/android/server/display/DisplayDeviceInfo;->rotation:I

    .line 539
    :cond_a
    const-string/jumbo v5, "persist.demo.hdmirotates"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 540
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v5, v6

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 543
    :cond_b
    const v4, 0x1110094

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_c

    .line 545
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x80

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 548
    :cond_c
    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 549
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 553
    .end local v0    # "phys":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v1    # "physicalAddress":Landroid/view/DisplayAddress$Physical;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "isBuiltIn":Z
    :cond_d
    :goto_3
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public hasStableUniqueId()Z
    .locals 1

    .line 268
    const/4 v0, 0x1

    return v0
.end method

.method public onActivePhysicalDisplayModeChangedLocked(I)V
    .locals 1
    .param p1, "physIndex"    # I

    .line 723
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateActiveModeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 724
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 726
    :cond_0
    return-void
.end method

.method public onOverlayChangedLocked()V
    .locals 0

    .line 719
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 720
    return-void
.end method

.method public requestColorModeLocked(I)Z
    .locals 3
    .param p1, "colorMode"    # I

    .line 805
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 806
    return v1

    .line 808
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find color mode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ignoring request."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "LocalDisplayAdapter"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 811
    return v1

    .line 813
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->setActiveColorMode(Landroid/os/IBinder;I)Z

    .line 814
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 815
    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    .line 816
    const/4 v0, 0x1

    return v0
.end method

.method public requestDisplayStateLocked(II)Ljava/lang/Runnable;
    .locals 19
    .param p1, "state"    # I
    .param p2, "brightness"    # I

    .line 559
    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    .line 561
    iget v0, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v10, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    move v12, v0

    .line 562
    .local v12, "stateChanged":Z
    iget v0, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    if-eq v0, v11, :cond_1

    iget-object v0, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/Light;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v13, v1

    .line 563
    .local v13, "brightnessChanged":Z
    if-nez v12, :cond_3

    if-eqz v13, :cond_2

    goto :goto_2

    .line 702
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 564
    :cond_3
    :goto_2
    iget-wide v14, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 565
    .local v14, "physicalDisplayId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v16

    .line 566
    .local v16, "token":Landroid/os/IBinder;
    iget v8, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 568
    .local v8, "oldState":I
    if-eqz v12, :cond_4

    .line 569
    iput v10, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 570
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 573
    :cond_4
    if-eqz v13, :cond_5

    .line 574
    iput v11, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightness:I

    .line 580
    :cond_5
    new-instance v17, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    move v2, v8

    move/from16 v3, p1

    move v4, v13

    move/from16 v5, p2

    move-wide v6, v14

    move/from16 v18, v8

    .end local v8    # "oldState":I
    .local v18, "oldState":I
    move-object/from16 v8, v16

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZIJLandroid/os/IBinder;)V

    return-object v17
.end method

.method public setAllowedDisplayModesLocked([I)V
    .locals 0
    .param p1, "modes"    # [I

    .line 714
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateAllowedModesLocked([I)V

    .line 715
    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .locals 1
    .param p1, "colorMode"    # I

    .line 707
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestColorModeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 710
    :cond_0
    return-void
.end method

.method public updateActiveModeLocked(I)Z
    .locals 3
    .param p1, "activePhysIndex"    # I

    .line 729
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 730
    return v1

    .line 732
    :cond_0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    .line 733
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 734
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 735
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    if-eqz v0, :cond_2

    .line 736
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In unknown mode after setting allowed configs: allowedPhysIndexes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", activePhysIndex="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    :cond_2
    return v2
.end method

.method public updateAllowedModesInternalLocked([I)Z
    .locals 9
    .param p1, "allowedModes"    # [I

    .line 757
    array-length v0, p1

    new-array v0, v0, [I

    .line 758
    .local v0, "allowedPhysIndexes":[I
    const/4 v1, 0x0

    .line 759
    .local v1, "size":I
    array-length v2, p1

    const/4 v3, 0x0

    move v4, v1

    move v1, v3

    .end local v1    # "size":I
    .local v4, "size":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget v5, p1, v1

    .line 760
    .local v5, "modeId":I
    invoke-direct {p0, v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(I)I

    move-result v6

    .line 761
    .local v6, "physIndex":I
    if-gez v6, :cond_0

    .line 762
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Requested mode ID "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " not available, dropping from allowed set."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "LocalDisplayAdapter"

    invoke-static {v8, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 765
    :cond_0
    add-int/lit8 v7, v4, 0x1

    .end local v4    # "size":I
    .local v7, "size":I
    aput v6, v0, v4

    move v4, v7

    .line 759
    .end local v5    # "modeId":I
    .end local v6    # "physIndex":I
    .end local v7    # "size":I
    .restart local v4    # "size":I
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 771
    :cond_1
    array-length v1, p1

    if-eq v4, v1, :cond_2

    .line 772
    invoke-static {v0, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

    .line 777
    :cond_2
    if-nez v4, :cond_3

    .line 782
    const/4 v1, 0x1

    new-array v2, v1, [I

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    aput v5, v2, v3

    move-object p1, v2

    .line 783
    new-array v1, v1, [I

    invoke-direct {p0, v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(I)I

    move-result v2

    aput v2, v1, v3

    move-object v0, v1

    .line 786
    :cond_3
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    .line 787
    iput-boolean v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIdsInvalid:Z

    .line 789
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 790
    return v3

    .line 792
    :cond_4
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    .line 799
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/view/SurfaceControl;->setAllowedDisplayConfigs(Landroid/os/IBinder;[I)Z

    .line 800
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    move-result v1

    .line 801
    .local v1, "activePhysIndex":I
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateActiveModeLocked(I)Z

    move-result v2

    return v2
.end method

.method public updateAllowedModesLocked([I)V
    .locals 1
    .param p1, "allowedModes"    # [I

    .line 744
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    invoke-static {p1, v0}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIdsInvalid:Z

    if-nez v0, :cond_0

    .line 745
    return-void

    .line 747
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateAllowedModesInternalLocked([I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 750
    :cond_1
    return-void
.end method

.method public updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[II)Z
    .locals 17
    .param p1, "physicalDisplayInfos"    # [Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .param p2, "activeDisplayInfo"    # I
    .param p3, "allowedDisplayInfos"    # [I
    .param p4, "colorModes"    # [I
    .param p5, "activeColorMode"    # I

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    array-length v4, v1

    invoke-static {v1, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    iput-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfos:[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    .line 275
    iput v2, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActivePhysIndex:I

    .line 276
    array-length v4, v3

    invoke-static {v3, v4}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v4

    iput-object v4, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    .line 278
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 279
    .local v4, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;>;"
    const/4 v5, 0x0

    .line 280
    .local v5, "modesAdded":Z
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    array-length v7, v1

    if-ge v6, v7, :cond_4

    .line 281
    aget-object v7, v1, v6

    .line 285
    .local v7, "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    const/4 v8, 0x0

    .line 286
    .local v8, "existingMode":Z
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v9, v10, :cond_1

    .line 287
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-virtual {v10, v7}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 288
    const/4 v8, 0x1

    .line 289
    goto :goto_2

    .line 286
    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 292
    .end local v9    # "j":I
    :cond_1
    :goto_2
    if-eqz v8, :cond_2

    .line 293
    goto :goto_3

    .line 298
    :cond_2
    invoke-direct {v0, v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayModeRecord(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    move-result-object v9

    .line 299
    .local v9, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    if-nez v9, :cond_3

    .line 300
    new-instance v10, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-direct {v10, v7}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)V

    move-object v9, v10

    .line 301
    const/4 v5, 0x1

    .line 303
    :cond_3
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    .end local v7    # "info":Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v8    # "existingMode":Z
    .end local v9    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :goto_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 307
    .end local v6    # "i":I
    :cond_4
    const/4 v6, 0x0

    .line 308
    .local v6, "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    const/4 v7, 0x0

    .local v7, "i":I
    :goto_4
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_6

    .line 309
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 310
    .local v8, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    aget-object v9, v1, v2

    invoke-virtual {v8, v9}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$PhysicalDisplayInfo;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 311
    move-object v6, v8

    .line 312
    goto :goto_5

    .line 308
    .end local v8    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_4

    .line 318
    .end local v7    # "i":I
    :cond_6
    :goto_5
    iget v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const/4 v8, 0x1

    if-eqz v7, :cond_7

    iget-object v9, v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 319
    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    move-result v9

    if-eq v7, v9, :cond_7

    .line 320
    iput-boolean v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 321
    iget-object v7, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v7}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 324
    :cond_7
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v7

    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v9

    const/4 v10, 0x0

    if-ne v7, v9, :cond_9

    if-eqz v5, :cond_8

    goto :goto_6

    :cond_8
    move v7, v10

    goto :goto_7

    :cond_9
    :goto_6
    move v7, v8

    .line 326
    .local v7, "recordsChanged":Z
    :goto_7
    if-nez v7, :cond_a

    .line 327
    return v10

    .line 330
    :cond_a
    iput-boolean v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 332
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 333
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 334
    .local v11, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object v13, v11, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v13}, Landroid/view/Display$Mode;->getModeId()I

    move-result v13

    invoke-virtual {v12, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 335
    .end local v11    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    goto :goto_8

    .line 338
    :cond_b
    iget v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    invoke-direct {v0, v9}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayInfoIndexLocked(I)I

    move-result v9

    const-string v11, "LocalDisplayAdapter"

    if-gez v9, :cond_d

    .line 339
    iget v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    if-eqz v9, :cond_c

    .line 340
    const-string v9, "Default display mode no longer available, using currently active mode as default."

    invoke-static {v11, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_c
    iget-object v9, v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v9}, Landroid/view/Display$Mode;->getModeId()I

    move-result v9

    iput v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 347
    :cond_d
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget v12, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v9, v12}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v9

    if-gez v9, :cond_f

    .line 348
    iget v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    if-eqz v9, :cond_e

    .line 349
    const-string v9, "Active display mode no longer available, reverting to default mode."

    invoke-static {v11, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    :cond_e
    iget v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iput v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 353
    iput-boolean v8, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 357
    :cond_f
    new-array v9, v8, [I

    iget v11, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    aput v11, v9, v10

    iput-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    .line 358
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedPhysIndexes:[I

    array-length v11, v9

    new-array v11, v11, [I

    .line 359
    .local v11, "allowedModeIds":[I
    const/4 v12, 0x0

    .line 360
    .local v12, "size":I
    array-length v13, v9

    :goto_9
    if-ge v10, v13, :cond_11

    aget v14, v9, v10

    .line 361
    .local v14, "physIndex":I
    invoke-direct {v0, v14}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v15

    .line 362
    .local v15, "modeId":I
    if-lez v15, :cond_10

    .line 363
    add-int/lit8 v16, v12, 0x1

    .end local v12    # "size":I
    .local v16, "size":I
    aput v15, v11, v12

    move/from16 v12, v16

    .line 360
    .end local v14    # "physIndex":I
    .end local v15    # "modeId":I
    .end local v16    # "size":I
    .restart local v12    # "size":I
    :cond_10
    add-int/lit8 v10, v10, 0x1

    goto :goto_9

    .line 369
    :cond_11
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIds:[I

    invoke-static {v11, v9}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v9

    xor-int/2addr v9, v8

    iput-boolean v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllowedModeIdsInvalid:Z

    .line 372
    iget-object v9, v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v9}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 373
    return v8
.end method
