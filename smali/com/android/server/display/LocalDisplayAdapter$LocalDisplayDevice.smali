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

.field private mActiveConfigId:I

.field private mActiveModeId:I

.field private mActiveModeInvalid:Z

.field private mAllmRequested:Z

.field private mAllmSupported:Z

.field private final mBacklight:Lcom/android/server/lights/LogicalLight;

.field private mBrightnessState:F

.field private mDefaultConfigGroup:I

.field private mDefaultModeId:I

.field private mDisplayConfigs:[Landroid/view/SurfaceControl$DisplayConfig;

.field private mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

.field private mDisplayInfo:Landroid/view/SurfaceControl$DisplayInfo;

.field private mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

.field private mDisplayModeSpecsInvalid:Z

.field private mGameContentTypeRequested:Z

.field private mGameContentTypeSupported:Z

.field private mHavePendingChanges:Z

.field private mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private final mIsDefaultDisplay:Z

.field private mNitsToHalBrightness:Landroid/util/Spline;

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

.field private mSystemBrightnessToNits:Landroid/util/Spline;

.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 236
    const-class v0, Lcom/android/server/display/LocalDisplayAdapter;

    return-void
.end method

.method constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$DisplayInfo;[Landroid/view/SurfaceControl$DisplayConfig;ILandroid/view/SurfaceControl$DesiredDisplayConfigSpecs;[IILandroid/view/Display$HdrCapabilities;Z)V
    .locals 14
    .param p2, "displayToken"    # Landroid/os/IBinder;
    .param p3, "physicalDisplayId"    # J
    .param p5, "info"    # Landroid/view/SurfaceControl$DisplayInfo;
    .param p6, "configs"    # [Landroid/view/SurfaceControl$DisplayConfig;
    .param p7, "activeConfigId"    # I
    .param p8, "configSpecs"    # Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;
    .param p9, "colorModes"    # [I
    .param p10, "activeColorMode"    # I
    .param p11, "hdrCapabilities"    # Landroid/view/Display$HdrCapabilities;
    .param p12, "isDefaultDisplay"    # Z

    .line 275
    move-object v7, p0

    move-object v0, p1

    move-wide/from16 v8, p3

    iput-object v0, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    .line 276
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "local:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v10, p2

    invoke-direct {p0, p1, v10, v1}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 239
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    .line 240
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 245
    const/4 v11, 0x0

    iput v11, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 246
    const/high16 v0, 0x7fc00000    # Float.NaN

    iput v0, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    .line 251
    new-instance v0, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-direct {v0}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;-><init>()V

    iput-object v0, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 277
    iput-wide v8, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 278
    move/from16 v12, p12

    iput-boolean v12, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsDefaultDisplay:Z

    .line 279
    move-object/from16 v13, p5

    iput-object v13, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfo:Landroid/view/SurfaceControl$DisplayInfo;

    .line 280
    move-object v0, p0

    move-object/from16 v1, p6

    move/from16 v2, p7

    move-object/from16 v3, p8

    move-object/from16 v4, p9

    move/from16 v5, p10

    move-object/from16 v6, p11

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayProperties([Landroid/view/SurfaceControl$DisplayConfig;ILandroid/view/SurfaceControl$DesiredDisplayConfigSpecs;[IILandroid/view/Display$HdrCapabilities;)Z

    .line 282
    const-class v0, Landroid/hardware/sidekick/SidekickInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/sidekick/SidekickInternal;

    iput-object v0, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    .line 283
    iget-boolean v0, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsDefaultDisplay:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 284
    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    .line 285
    .local v0, "lights":Lcom/android/server/lights/LightsManager;
    invoke-virtual {v0, v11}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/LogicalLight;

    move-result-object v2

    iput-object v2, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/LogicalLight;

    .line 286
    .end local v0    # "lights":Lcom/android/server/lights/LightsManager;
    goto :goto_0

    .line 287
    :cond_0
    iput-object v1, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/LogicalLight;

    .line 289
    :goto_0
    invoke-static/range {p2 .. p2}, Landroid/view/SurfaceControl;->getAutoLowLatencyModeSupport(Landroid/os/IBinder;)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    .line 290
    invoke-static/range {p2 .. p2}, Landroid/view/SurfaceControl;->getGameContentTypeSupport(Landroid/os/IBinder;)Z

    move-result v0

    iput-boolean v0, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    .line 291
    iput-object v1, v7, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 293
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$S4bSIp6drytTEiae37oiY_7m6ng;->INSTANCE:Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$S4bSIp6drytTEiae37oiY_7m6ng;

    invoke-static {v1, p0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/Consumer;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 295
    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Lcom/android/server/lights/LogicalLight;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 236
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/LogicalLight;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 236
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .param p1, "x1"    # Z

    .line 236
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickActive:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/hardware/sidekick/SidekickInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 236
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSidekickInternal:Landroid/hardware/sidekick/SidekickInternal;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/util/Spline;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 236
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemBrightnessToNits:Landroid/util/Spline;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)Landroid/util/Spline;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 236
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mNitsToHalBrightness:Landroid/util/Spline;

    return-object v0
.end method

.method private findDisplayConfigIdLocked(II)I
    .locals 5
    .param p1, "modeId"    # I
    .param p2, "configGroup"    # I

    .line 1045
    const/4 v0, -0x1

    .line 1046
    .local v0, "matchingConfigId":I
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 1047
    .local v1, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    if-eqz v1, :cond_2

    .line 1048
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayConfigs:[Landroid/view/SurfaceControl$DisplayConfig;

    array-length v4, v3

    if-ge v2, v4, :cond_2

    .line 1049
    aget-object v3, v3, v2

    .line 1050
    .local v3, "config":Landroid/view/SurfaceControl$DisplayConfig;
    invoke-virtual {v1, v3}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayConfig;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1051
    const/4 v4, -0x1

    if-ne v0, v4, :cond_0

    .line 1053
    move v0, v2

    .line 1057
    :cond_0
    iget v4, v3, Landroid/view/SurfaceControl$DisplayConfig;->configGroup:I

    if-ne v4, p2, :cond_1

    .line 1058
    return v2

    .line 1048
    .end local v3    # "config":Landroid/view/SurfaceControl$DisplayConfig;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1063
    .end local v2    # "i":I
    :cond_2
    return v0
.end method

.method private findDisplayModeRecord(Landroid/view/SurfaceControl$DisplayConfig;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    .locals 3
    .param p1, "config"    # Landroid/view/SurfaceControl$DisplayConfig;

    .line 549
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 550
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 551
    .local v1, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-virtual {v1, p1}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayConfig;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 552
    return-object v1

    .line 549
    .end local v1    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 555
    .end local v0    # "i":I
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private findMatchingModeIdLocked(I)I
    .locals 4
    .param p1, "configId"    # I

    .line 1067
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayConfigs:[Landroid/view/SurfaceControl$DisplayConfig;

    aget-object v0, v0, p1

    .line 1068
    .local v0, "config":Landroid/view/SurfaceControl$DisplayConfig;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1069
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 1070
    .local v2, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    invoke-virtual {v2, v0}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayConfig;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1071
    iget-object v3, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v3}, Landroid/view/Display$Mode;->getModeId()I

    move-result v3

    return v3

    .line 1068
    .end local v2    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1074
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

    .line 1083
    .local p1, "records":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;>;"
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1084
    .local v0, "size":I
    new-array v1, v0, [Landroid/view/Display$Mode;

    .line 1085
    .local v1, "modes":[Landroid/view/Display$Mode;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1086
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 1087
    .local v3, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v4, v3, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    aput-object v4, v1, v2

    .line 1085
    .end local v3    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1089
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method private isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z
    .locals 7
    .param p1, "physicalAddress"    # Landroid/view/DisplayAddress$Physical;

    .line 1093
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 1094
    return v0

    .line 1096
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 1097
    .local v1, "res":Landroid/content/res/Resources;
    const v2, 0x1070052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v2

    .line 1099
    .local v2, "ports":[I
    if-eqz v2, :cond_2

    .line 1100
    invoke-virtual {p1}, Landroid/view/DisplayAddress$Physical;->getPort()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->toUnsignedInt(B)I

    move-result v3

    .line 1101
    .local v3, "port":I
    array-length v4, v2

    move v5, v0

    :goto_0
    if-ge v5, v4, :cond_2

    aget v6, v2, v5

    .line 1102
    .local v6, "p":I
    if-ne v6, v3, :cond_1

    .line 1103
    const/4 v0, 0x1

    return v0

    .line 1101
    .end local v6    # "p":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1107
    .end local v3    # "port":I
    :cond_2
    return v0
.end method

.method public static synthetic lambda$6tpawjjBXhlj4GSsJjStLZrwDUQ(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/os/IBinder;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestColorModeAsync(Landroid/os/IBinder;I)V

    return-void
.end method

.method public static synthetic lambda$S4bSIp6drytTEiae37oiY_7m6ng(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->loadDisplayConfigurationBrightnessMapping()V

    return-void
.end method

.method public static synthetic lambda$iXCIox7NAT3NknToX9AEwGueQjs(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->setDesiredDisplayModeSpecsAsync(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)V

    return-void
.end method

.method private loadDisplayConfigurationBrightnessMapping()V
    .locals 11

    .line 451
    const/4 v0, 0x0

    .line 452
    .local v0, "nitsToHal":Landroid/util/Spline;
    const/4 v1, 0x0

    .line 455
    .local v1, "sysToNits":Landroid/util/Spline;
    iget-wide v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-static {v2, v3}, Lcom/android/server/display/DisplayDeviceConfig;->create(J)Lcom/android/server/display/DisplayDeviceConfig;

    move-result-object v2

    .line 456
    .local v2, "config":Lcom/android/server/display/DisplayDeviceConfig;
    iput-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    .line 457
    if-nez v2, :cond_0

    .line 458
    return-void

    .line 460
    :cond_0
    invoke-virtual {v2}, Lcom/android/server/display/DisplayDeviceConfig;->getNits()[F

    move-result-object v3

    .line 461
    .local v3, "halNits":[F
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayDeviceConfig;->getBrightness()[F

    move-result-object v4

    .line 462
    .local v4, "halBrightness":[F
    if-eqz v3, :cond_5

    if-nez v4, :cond_1

    goto :goto_2

    .line 465
    :cond_1
    invoke-static {v3, v4}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v0

    .line 468
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 469
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x107006c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/display/BrightnessMappingStrategy;->getFloatArray(Landroid/content/res/TypedArray;)[F

    move-result-object v6

    .line 471
    .local v6, "sysNits":[F
    const v7, 0x107006b

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v7

    .line 473
    .local v7, "sysBrightness":[I
    array-length v8, v6

    if-eqz v8, :cond_4

    array-length v8, v7

    array-length v9, v6

    if-eq v8, v9, :cond_2

    goto :goto_1

    .line 476
    :cond_2
    array-length v8, v7

    new-array v8, v8, [F

    .line 477
    .local v8, "sysBrightnessFloat":[F
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    array-length v10, v7

    if-ge v9, v10, :cond_3

    .line 478
    aget v10, v7, v9

    int-to-float v10, v10

    aput v10, v8, v9

    .line 477
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 480
    .end local v9    # "i":I
    :cond_3
    invoke-static {v8, v6}, Landroid/util/Spline;->createSpline([F[F)Landroid/util/Spline;

    move-result-object v1

    .line 482
    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mNitsToHalBrightness:Landroid/util/Spline;

    .line 483
    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSystemBrightnessToNits:Landroid/util/Spline;

    .line 484
    return-void

    .line 474
    .end local v8    # "sysBrightnessFloat":[F
    :cond_4
    :goto_1
    return-void

    .line 463
    .end local v5    # "res":Landroid/content/res/Resources;
    .end local v6    # "sysNits":[F
    .end local v7    # "sysBrightness":[I
    :cond_5
    :goto_2
    return-void
.end method

.method private requestColorModeAsync(Landroid/os/IBinder;I)V
    .locals 2
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "colorMode"    # I

    .line 975
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setActiveColorMode(Landroid/os/IBinder;I)Z

    .line 976
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v0

    monitor-enter v0

    .line 977
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 978
    monitor-exit v0

    .line 979
    return-void

    .line 978
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setDesiredDisplayModeSpecsAsync(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)V
    .locals 3
    .param p1, "displayToken"    # Landroid/os/IBinder;
    .param p2, "configSpecs"    # Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;

    .line 914
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setDesiredDisplayModeSpecsAsync displayToken "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " defaultConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->defaultConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " primaryRefreshRateMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " primaryRefreshRateMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " appRequestRefreshRateMin="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMin:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " appRequestRefreshRateMax="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMax:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-static {p1, p2}, Landroid/view/SurfaceControl;->setDesiredDisplayConfigSpecs(Landroid/os/IBinder;Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)Z

    .line 922
    invoke-static {p1}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    move-result v0

    .line 923
    .local v0, "activePhysIndex":I
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/LocalDisplayAdapter;->getSyncRoot()Lcom/android/server/display/DisplayManagerService$SyncRoot;

    move-result-object v1

    monitor-enter v1

    .line 924
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateActiveModeLocked(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 925
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 927
    :cond_0
    monitor-exit v1

    .line 928
    return-void

    .line 927
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private updateColorModesLocked([II)Z
    .locals 8
    .param p1, "colorModes"    # [I
    .param p2, "activeColorMode"    # I

    .line 487
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 488
    return v0

    .line 491
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 493
    .local v1, "pendingColorModes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v2, 0x0

    .line 494
    .local v2, "colorModesAdded":Z
    array-length v3, p1

    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    aget v5, p1, v4

    .line 495
    .local v5, "colorMode":I
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 496
    const/4 v2, 0x1

    .line 498
    :cond_1
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 494
    .end local v5    # "colorMode":I
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 501
    :cond_2
    nop

    .line 502
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v3, v4, :cond_4

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move v3, v0

    goto :goto_2

    :cond_4
    :goto_1
    move v3, v5

    .line 506
    .local v3, "colorModesChanged":Z
    :goto_2
    if-nez v3, :cond_5

    .line 507
    return v0

    .line 510
    :cond_5
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 512
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 513
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 514
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 517
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 518
    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    const-string v6, "LocalDisplayAdapter"

    if-eqz v4, :cond_6

    .line 519
    const-string v4, "Active color mode no longer available, reverting to default mode."

    invoke-static {v6, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 522
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    goto :goto_3

    .line 524
    :cond_6
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7

    .line 526
    const-string v4, "Default and active color mode is no longer available! Reverting to first available mode."

    invoke-static {v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 529
    iput-boolean v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    goto :goto_3

    .line 532
    :cond_7
    const-string v0, "No color modes available!"

    invoke-static {v6, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    :cond_8
    :goto_3
    return v5
.end method

.method private updateDeviceInfoLocked()V
    .locals 2

    .line 1078
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 1079
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 1080
    return-void
.end method

.method private updateHdrCapabilitiesLocked(Landroid/view/Display$HdrCapabilities;)Z
    .locals 1
    .param p1, "newHdrCapabilities"    # Landroid/view/Display$HdrCapabilities;

    .line 541
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 542
    const/4 v0, 0x0

    return v0

    .line 544
    :cond_0
    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 545
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public applyPendingDisplayDeviceInfoChangesLocked()V
    .locals 1

    .line 560
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    if-eqz v0, :cond_0

    .line 561
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 562
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 564
    :cond_0
    return-void
.end method

.method public dumpLocked(Ljava/io/PrintWriter;)V
    .locals 4
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 1017
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayDevice;->dumpLocked(Ljava/io/PrintWriter;)V

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mPhysicalDisplayId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1019
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayModeSpecs={"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1020
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayModeSpecsInvalid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1021
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveConfigId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveConfigId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1022
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1023
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mActiveColorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDefaultModeId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1025
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

    .line 1026
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBrightnessState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1027
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mBacklight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/LogicalLight;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1028
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllmSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mAllmRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1030
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGameContentTypeSupported="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1031
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mGameContentTypeRequested="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1032
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mDisplayInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfo:Landroid/view/SurfaceControl$DisplayInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1033
    const-string/jumbo v0, "mDisplayConfigs="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayConfigs:[Landroid/view/SurfaceControl$DisplayConfig;

    array-length v1, v1

    const-string v2, "  "

    if-ge v0, v1, :cond_0

    .line 1035
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayConfigs:[Landroid/view/SurfaceControl$DisplayConfig;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1034
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1037
    .end local v0    # "i":I
    :cond_0
    const-string/jumbo v0, "mSupportedModes="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1038
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 1039
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

    .line 1038
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1041
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mSupportedColorModes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1042
    return-void
.end method

.method public getDisplayDeviceConfig()Lcom/android/server/display/DisplayDeviceConfig;
    .locals 1

    .line 447
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayDeviceConfig:Lcom/android/server/display/DisplayDeviceConfig;

    return-object v0
.end method

.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 10

    .line 568
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_d

    .line 569
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayConfigs:[Landroid/view/SurfaceControl$DisplayConfig;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveConfigId:I

    aget-object v0, v0, v1

    .line 570
    .local v0, "config":Landroid/view/SurfaceControl$DisplayConfig;
    new-instance v1, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v1}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 571
    iget v2, v0, Landroid/view/SurfaceControl$DisplayConfig;->width:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 572
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, v0, Landroid/view/SurfaceControl$DisplayConfig;->height:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 573
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    .line 574
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->defaultModeId:I

    .line 575
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-direct {p0, v2}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayModes(Landroid/util/SparseArray;)[Landroid/view/Display$Mode;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 576
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->colorMode:I

    .line 577
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    iput-boolean v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->allmSupported:Z

    .line 578
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-boolean v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    iput-boolean v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->gameContentTypeSupported:Z

    .line 579
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    .line 580
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    .line 581
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 582
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedColorModes:[I

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    aput v3, v2, v1

    .line 581
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 584
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHdrCapabilities:Landroid/view/Display$HdrCapabilities;

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->hdrCapabilities:Landroid/view/Display$HdrCapabilities;

    .line 585
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v2, v0, Landroid/view/SurfaceControl$DisplayConfig;->appVsyncOffsetNanos:J

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->appVsyncOffsetNanos:J

    .line 586
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-wide v2, v0, Landroid/view/SurfaceControl$DisplayConfig;->presentationDeadlineNanos:J

    iput-wide v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->presentationDeadlineNanos:J

    .line 587
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    iput v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->state:I

    .line 588
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/server/display/DisplayDeviceInfo;->uniqueId:Ljava/lang/String;

    .line 589
    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 590
    invoke-static {v1, v2}, Landroid/view/DisplayAddress;->fromPhysicalDisplayId(J)Landroid/view/DisplayAddress$Physical;

    move-result-object v1

    .line 591
    .local v1, "physicalAddress":Landroid/view/DisplayAddress$Physical;
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput-object v1, v2, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    .line 592
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfo:Landroid/view/SurfaceControl$DisplayInfo;

    iget v3, v3, Landroid/view/SurfaceControl$DisplayInfo;->density:F

    const/high16 v4, 0x43200000    # 160.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 593
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v0, Landroid/view/SurfaceControl$DisplayConfig;->xDpi:F

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 594
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v3, v0, Landroid/view/SurfaceControl$DisplayConfig;->yDpi:F

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 595
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfo:Landroid/view/SurfaceControl$DisplayInfo;

    iget-object v3, v3, Landroid/view/SurfaceControl$DisplayInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    iput-object v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->deviceProductInfo:Landroid/hardware/display/DeviceProductInfo;

    .line 599
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfo:Landroid/view/SurfaceControl$DisplayInfo;

    iget-boolean v2, v2, Landroid/view/SurfaceControl$DisplayInfo;->secure:Z

    if-eqz v2, :cond_1

    .line 600
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    const/16 v3, 0xc

    iput v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 604
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v2}, Lcom/android/server/display/LocalDisplayAdapter;->getOverlayContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 605
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v3, v3, Lcom/android/server/display/DisplayDeviceInfo;->address:Landroid/view/DisplayAddress;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    .line 606
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

    .line 608
    .local v3, "isBuiltIn":Z
    :goto_1
    iget-boolean v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mIsDefaultDisplay:Z

    const v7, 0x10402c5

    const/4 v8, 0x2

    if-eqz v6, :cond_6

    .line 609
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v9, v5

    iput v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 611
    const v6, 0x111009f

    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v6

    if-nez v6, :cond_3

    sget-boolean v6, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v6, :cond_4

    .line 613
    const-string/jumbo v6, "ro.emulator.circular"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 614
    :cond_3
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v6, v6, 0x100

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 616
    :cond_4
    const v4, 0x11100a0

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 618
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v6, v6, 0x800

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 620
    :cond_5
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    iget-object v9, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v9, v9, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    invoke-static {v2, v6, v9}, Landroid/view/DisplayCutout;->fromResourcesRectApproximation(Landroid/content/res/Resources;II)Landroid/view/DisplayCutout;

    move-result-object v6

    iput-object v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->displayCutout:Landroid/view/DisplayCutout;

    goto/16 :goto_3

    .line 622
    :cond_6
    if-eqz v3, :cond_9

    .line 623
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v6, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 624
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v6, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 625
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v9, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v9}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 627
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v9, v8

    iput v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 629
    const-string/jumbo v6, "vendor.display.builtin_presentation"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 631
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v9, v9, 0x40

    iput v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    goto :goto_2

    .line 633
    :cond_7
    iget-object v6, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v9, v9, 0x10

    iput v9, v6, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 636
    :goto_2
    const-string/jumbo v6, "vendor.display.builtin_mirroring"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_8

    .line 638
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 641
    :cond_8
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v0, Landroid/view/SurfaceControl$DisplayConfig;->width:I

    iget v9, v0, Landroid/view/SurfaceControl$DisplayConfig;->height:I

    invoke-virtual {v4, v6, v9}, Lcom/android/server/display/DisplayDeviceInfo;->setAssumedDensityForExternalDisplay(II)V

    goto :goto_3

    .line 643
    :cond_9
    const v4, 0x111009c

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-nez v4, :cond_a

    .line 645
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v6, v6, 0x80

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 648
    :cond_a
    invoke-direct {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->isDisplayPrivate(Landroid/view/DisplayAddress$Physical;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 649
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v6, v6, 0x10

    iput v6, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 653
    :cond_b
    :goto_3
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayInfo:Landroid/view/SurfaceControl$DisplayInfo;

    iget-boolean v4, v4, Landroid/view/SurfaceControl$DisplayInfo;->isInternal:Z

    if-eqz v4, :cond_c

    .line 654
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 655
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 656
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/2addr v5, v8

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 657
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    goto :goto_4

    .line 660
    :cond_c
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v8, v4, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 661
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iput v8, v4, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 662
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit8 v5, v5, 0x40

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 663
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10402c6

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 667
    :goto_4
    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    or-int/lit16 v5, v5, 0x2000

    iput v5, v4, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 669
    .end local v0    # "config":Landroid/view/SurfaceControl$DisplayConfig;
    .end local v1    # "physicalAddress":Landroid/view/DisplayAddress$Physical;
    .end local v2    # "res":Landroid/content/res/Resources;
    .end local v3    # "isBuiltIn":Z
    :cond_d
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public hasStableUniqueId()Z
    .locals 1

    .line 299
    const/4 v0, 0x1

    return v0
.end method

.method public onActiveDisplayConfigChangedLocked(I)V
    .locals 1
    .param p1, "configId"    # I

    .line 936
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateActiveModeLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 937
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 939
    :cond_0
    return-void
.end method

.method public onOverlayChangedLocked()V
    .locals 0

    .line 932
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 933
    return-void
.end method

.method public requestColorModeLocked(I)V
    .locals 4
    .param p1, "colorMode"    # I

    .line 956
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    if-ne v0, p1, :cond_0

    .line 957
    return-void

    .line 959
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedColorModes:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 960
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to find color mode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", ignoring request."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    return-void

    .line 965
    :cond_1
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorMode:I

    .line 966
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveColorModeInvalid:Z

    .line 967
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v0

    sget-object v1, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$6tpawjjBXhlj4GSsJjStLZrwDUQ;->INSTANCE:Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$6tpawjjBXhlj4GSsJjStLZrwDUQ;

    .line 969
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 967
    invoke-static {v1, p0, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 970
    return-void
.end method

.method public requestDisplayStateLocked(IF)Ljava/lang/Runnable;
    .locals 19
    .param p1, "state"    # I
    .param p2, "brightnessState"    # F

    .line 675
    move-object/from16 v9, p0

    move/from16 v10, p1

    move/from16 v11, p2

    .line 677
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

    .line 682
    .local v12, "stateChanged":Z
    iget v0, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    invoke-static {v0, v11}, Lcom/android/server/display/OpBrightnessReasonAndRate;->EqualsWithMargin(FF)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBacklight:Lcom/android/server/lights/LogicalLight;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    move v13, v1

    .line 688
    .local v13, "brightnessChanged":Z
    if-nez v12, :cond_3

    if-eqz v13, :cond_2

    goto :goto_2

    .line 856
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 689
    :cond_3
    :goto_2
    iget-wide v14, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mPhysicalDisplayId:J

    .line 690
    .local v14, "physicalDisplayId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v16

    .line 691
    .local v16, "token":Landroid/os/IBinder;
    iget v8, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 693
    .local v8, "oldState":I
    if-eqz v12, :cond_4

    .line 694
    iput v10, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mState:I

    .line 695
    invoke-direct/range {p0 .. p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 698
    :cond_4
    if-eqz v13, :cond_5

    .line 699
    iput v11, v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mBrightnessState:F

    .line 705
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

    invoke-direct/range {v0 .. v8}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;IIZFJLandroid/os/IBinder;)V

    return-object v17
.end method

.method public setAutoLowLatencyModeLocked(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 983
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    if-ne v0, p1, :cond_0

    .line 984
    return-void

    .line 987
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmRequested:Z

    .line 989
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mAllmSupported:Z

    if-nez v0, :cond_1

    .line 990
    const-string v0, "LocalDisplayAdapter"

    const-string v1, "Unable to set ALLM because the connected display does not support ALLM."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 992
    return-void

    .line 995
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->setAutoLowLatencyMode(Landroid/os/IBinder;Z)V

    .line 996
    return-void
.end method

.method public setDesiredDisplayModeSpecsLocked(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V
    .locals 11
    .param p1, "displayModeSpecs"    # Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    .line 867
    iget v0, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-nez v0, :cond_0

    .line 870
    return-void

    .line 880
    :cond_0
    iget v0, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultConfigGroup:I

    invoke-direct {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayConfigIdLocked(II)I

    move-result v0

    .line 882
    .local v0, "baseConfigId":I
    if-gez v0, :cond_1

    .line 889
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring request for invalid base mode id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LocalDisplayAdapter"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 891
    invoke-direct {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDeviceInfoLocked()V

    .line 892
    return-void

    .line 894
    :cond_1
    iget-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {p1, v1}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 895
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 896
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    invoke-virtual {v1, p1}, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->copyFrom(Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;)V

    .line 897
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v1}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    sget-object v8, Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$iXCIox7NAT3NknToX9AEwGueQjs;->INSTANCE:Lcom/android/server/display/-$$Lambda$LocalDisplayAdapter$LocalDisplayDevice$iXCIox7NAT3NknToX9AEwGueQjs;

    .line 899
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v9

    new-instance v10, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v2, v2, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v4, v2, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v2, v2, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v5, v2, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v2, v2, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v6, v2, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    iget-object v2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v2, v2, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v7, v2, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    move-object v2, v10

    move v3, v0

    invoke-direct/range {v2 .. v7}, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;-><init>(IFFFF)V

    .line 897
    invoke-static {v8, p0, v9, v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 906
    :cond_3
    return-void
.end method

.method public setGameContentTypeLocked(Z)V
    .locals 2
    .param p1, "on"    # Z

    .line 1000
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    if-ne v0, p1, :cond_0

    .line 1001
    return-void

    .line 1004
    :cond_0
    iput-boolean p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeRequested:Z

    .line 1006
    iget-boolean v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mGameContentTypeSupported:Z

    if-nez v0, :cond_1

    .line 1007
    const-string v0, "LocalDisplayAdapter"

    const-string v1, "Unable to set game content type because the connected display does not support game content type."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    return-void

    .line 1012
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayTokenLocked()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/view/SurfaceControl;->setGameContentType(Landroid/os/IBinder;Z)V

    .line 1013
    return-void
.end method

.method public setRequestedColorModeLocked(I)V
    .locals 0
    .param p1, "colorMode"    # I

    .line 861
    invoke-virtual {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestColorModeLocked(I)V

    .line 862
    return-void
.end method

.method public updateActiveModeLocked(I)Z
    .locals 3
    .param p1, "activeConfigId"    # I

    .line 942
    iget v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveConfigId:I

    const/4 v1, 0x0

    if-ne v0, p1, :cond_0

    .line 943
    return v1

    .line 945
    :cond_0
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveConfigId:I

    .line 946
    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 947
    const/4 v2, 0x1

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 948
    if-eqz v1, :cond_2

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In unknown mode after setting allowed configs, activeConfigId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveConfigId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LocalDisplayAdapter"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    :cond_2
    return v2
.end method

.method public updateDisplayConfigsLocked([Landroid/view/SurfaceControl$DisplayConfig;ILandroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)Z
    .locals 9
    .param p1, "configs"    # [Landroid/view/SurfaceControl$DisplayConfig;
    .param p2, "activeConfigId"    # I
    .param p3, "configSpecs"    # Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;

    .line 317
    array-length v0, p1

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/view/SurfaceControl$DisplayConfig;

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayConfigs:[Landroid/view/SurfaceControl$DisplayConfig;

    .line 318
    iput p2, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveConfigId:I

    .line 320
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 321
    .local v0, "records":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;>;"
    const/4 v1, 0x0

    .line 322
    .local v1, "modesAdded":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 323
    aget-object v3, p1, v2

    .line 327
    .local v3, "config":Landroid/view/SurfaceControl$DisplayConfig;
    const/4 v4, 0x0

    .line 328
    .local v4, "existingMode":Z
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 329
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-virtual {v6, v3}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayConfig;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 330
    const/4 v4, 0x1

    .line 331
    goto :goto_2

    .line 328
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 334
    .end local v5    # "j":I
    :cond_1
    :goto_2
    if-eqz v4, :cond_2

    .line 335
    goto :goto_3

    .line 340
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayModeRecord(Landroid/view/SurfaceControl$DisplayConfig;)Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    move-result-object v5

    .line 341
    .local v5, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    if-nez v5, :cond_3

    .line 342
    new-instance v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    invoke-direct {v6, v3}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;-><init>(Landroid/view/SurfaceControl$DisplayConfig;)V

    move-object v5, v6

    .line 343
    const/4 v1, 0x1

    .line 345
    :cond_3
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    .end local v3    # "config":Landroid/view/SurfaceControl$DisplayConfig;
    .end local v4    # "existingMode":Z
    .end local v5    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 349
    .end local v2    # "i":I
    :cond_4
    const/4 v2, 0x0

    .line 350
    .local v2, "activeRecord":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 351
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 352
    .local v4, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    aget-object v5, p1, p2

    invoke-virtual {v4, v5}, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->hasMatchingMode(Landroid/view/SurfaceControl$DisplayConfig;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 353
    move-object v2, v4

    .line 354
    goto :goto_5

    .line 350
    .end local v4    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 360
    .end local v3    # "i":I
    :cond_6
    :goto_5
    iget v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    const/4 v4, 0x1

    if-eqz v3, :cond_7

    iget-object v5, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    .line 361
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    if-eq v3, v5, :cond_7

    .line 362
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 363
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v3}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 368
    :cond_7
    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v3, v3, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-eqz v3, :cond_9

    .line 369
    iget v3, p3, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->defaultConfig:I

    invoke-direct {p0, v3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findMatchingModeIdLocked(I)I

    move-result v3

    .line 373
    .local v3, "activeBaseMode":I
    if-eqz v3, :cond_9

    .line 374
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v5, v5, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-ne v5, v3, :cond_8

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v5, v5, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v5, v5, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    iget v6, p3, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMin:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v5, v5, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->primaryRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v5, v5, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    iget v6, p3, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->primaryRefreshRateMax:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v5, v5, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v5, v5, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->min:F

    iget v6, p3, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMin:F

    cmpl-float v5, v5, v6

    if-nez v5, :cond_8

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v5, v5, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->appRequestRefreshRateRange:Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;

    iget v5, v5, Lcom/android/server/display/DisplayModeDirector$RefreshRateRange;->max:F

    iget v6, p3, Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;->appRequestRefreshRateMax:F

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_9

    .line 383
    :cond_8
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 384
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 389
    .end local v3    # "activeBaseMode":I
    :cond_9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ne v3, v5, :cond_b

    if-eqz v1, :cond_a

    goto :goto_6

    :cond_a
    move v3, v6

    goto :goto_7

    :cond_b
    :goto_6
    move v3, v4

    .line 391
    .local v3, "recordsChanged":Z
    :goto_7
    if-nez v3, :cond_c

    .line 392
    return v6

    .line 395
    :cond_c
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mHavePendingChanges:Z

    .line 397
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    invoke-virtual {v5}, Landroid/util/SparseArray;->clear()V

    .line 398
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_d

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;

    .line 399
    .local v6, "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object v8, v6, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    move-result v8

    invoke-virtual {v7, v8, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 400
    .end local v6    # "record":Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;
    goto :goto_8

    .line 403
    :cond_d
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    const-string v6, "LocalDisplayAdapter"

    if-nez v5, :cond_e

    .line 404
    iget-object v5, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    iput v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 405
    aget-object v5, p1, p2

    iget v5, v5, Landroid/view/SurfaceControl$DisplayConfig;->configGroup:I

    iput v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultConfigGroup:I

    goto :goto_9

    .line 406
    :cond_e
    if-eqz v1, :cond_f

    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    iget-object v7, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I

    move-result v7

    if-eq v5, v7, :cond_f

    .line 407
    const-string v5, "New display modes are added and the active mode has changed, use active mode as default mode."

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    iget-object v5, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    iput v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 410
    iget-object v5, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    iput v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 411
    aget-object v5, p1, p2

    iget v5, v5, Landroid/view/SurfaceControl$DisplayConfig;->configGroup:I

    iput v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultConfigGroup:I

    goto :goto_9

    .line 412
    :cond_f
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iget v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultConfigGroup:I

    invoke-direct {p0, v5, v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->findDisplayConfigIdLocked(II)I

    move-result v5

    if-gez v5, :cond_10

    .line 413
    const-string v5, "Default display mode no longer available, using currently active mode as default."

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    iget-object v5, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v5}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    iput v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    .line 416
    aget-object v5, p1, p2

    iget v5, v5, Landroid/view/SurfaceControl$DisplayConfig;->configGroup:I

    iput v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultConfigGroup:I

    .line 420
    :cond_10
    :goto_9
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget-object v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v7, v7, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_12

    .line 421
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget v5, v5, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    if-eqz v5, :cond_11

    .line 422
    const-string v5, "DisplayModeSpecs base mode no longer available, using currently active mode."

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    :cond_11
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecs:Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;

    iget-object v7, v2, Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;->mMode:Landroid/view/Display$Mode;

    invoke-virtual {v7}, Landroid/view/Display$Mode;->getModeId()I

    move-result v7

    iput v7, v5, Lcom/android/server/display/DisplayModeDirector$DesiredDisplayModeSpecs;->baseModeId:I

    .line 427
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDisplayModeSpecsInvalid:Z

    .line 431
    :cond_12
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mSupportedModes:Landroid/util/SparseArray;

    iget v7, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    invoke-virtual {v5, v7}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v5

    if-gez v5, :cond_14

    .line 432
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    if-eqz v5, :cond_13

    .line 433
    const-string v5, "Active display mode no longer available, reverting to default mode."

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    :cond_13
    iget v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mDefaultModeId:I

    iput v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeId:I

    .line 437
    iput-boolean v4, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->mActiveModeInvalid:Z

    .line 441
    :cond_14
    iget-object v5, p0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v5}, Lcom/android/server/display/LocalDisplayAdapter;->sendTraversalRequestLocked()V

    .line 442
    return v4
.end method

.method public updateDisplayProperties([Landroid/view/SurfaceControl$DisplayConfig;ILandroid/view/SurfaceControl$DesiredDisplayConfigSpecs;[IILandroid/view/Display$HdrCapabilities;)Z
    .locals 2
    .param p1, "configs"    # [Landroid/view/SurfaceControl$DisplayConfig;
    .param p2, "activeConfigId"    # I
    .param p3, "configSpecs"    # Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;
    .param p4, "colorModes"    # [I
    .param p5, "activeColorMode"    # I
    .param p6, "hdrCapabilities"    # Landroid/view/Display$HdrCapabilities;

    .line 308
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayConfigsLocked([Landroid/view/SurfaceControl$DisplayConfig;ILandroid/view/SurfaceControl$DesiredDisplayConfigSpecs;)Z

    move-result v0

    .line 309
    .local v0, "changed":Z
    invoke-direct {p0, p4, p5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateColorModesLocked([II)Z

    move-result v1

    or-int/2addr v0, v1

    .line 310
    invoke-direct {p0, p6}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateHdrCapabilitiesLocked(Landroid/view/Display$HdrCapabilities;)Z

    move-result v1

    or-int/2addr v0, v1

    .line 311
    return v0
.end method
