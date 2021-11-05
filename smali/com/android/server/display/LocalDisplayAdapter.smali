.class final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;,
        Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final NO_DISPLAY_MODE_ID:I = 0x0

.field private static final ONEPLUS_SCREEN_REFRESH_RATE:Ljava/lang/String; = "oneplus_screen_refresh_rate"

.field private static final OP_60HZ_MODE_VALUE:I = 0x1

.field private static final OP_AUTO_MODE_VALUE:I = 0x2

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "local:"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mDevices:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mFpsState:I

.field private mPhysicalDisplayEventReceiver:Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;

.field private mPhysicalDisplayId:J


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    .line 98
    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 77
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 91
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mContext:Landroid/content/Context;

    .line 92
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mFpsState:I

    .line 93
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayId:J

    .line 101
    iput-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mContext:Landroid/content/Context;

    .line 104
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;

    .line 67
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/display/LocalDisplayAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1, "x1"    # I

    .line 67
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mFpsState:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1, "x1"    # J

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1, "x1"    # J

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(J)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;

    .line 67
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static getPowerModeForState(I)I
    .locals 3
    .param p0, "state"    # I

    .line 224
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_0

    .line 234
    const/4 v0, 0x2

    return v0

    .line 230
    :cond_0
    return v1

    .line 228
    :cond_1
    return v0

    .line 232
    :cond_2
    return v2

    .line 226
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private tryConnectDisplayLocked(J)V
    .locals 29
    .param p1, "physicalDisplayId"    # J

    .line 118
    move-object/from16 v13, p0

    move-wide/from16 v14, p1

    invoke-static/range {p1 .. p2}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v16

    .line 119
    .local v16, "displayToken":Landroid/os/IBinder;
    if-eqz v16, :cond_a

    .line 120
    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceControl;->getDisplayInfo(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DisplayInfo;

    move-result-object v17

    .line 121
    .local v17, "info":Landroid/view/SurfaceControl$DisplayInfo;
    const-string v11, "LocalDisplayAdapter"

    if-nez v17, :cond_0

    .line 122
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid info found for display device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return-void

    .line 125
    :cond_0
    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceControl;->getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$DisplayConfig;

    move-result-object v18

    .line 126
    .local v18, "configs":[Landroid/view/SurfaceControl$DisplayConfig;
    if-nez v18, :cond_1

    .line 128
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid configs found for display device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    return-void

    .line 131
    :cond_1
    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    move-result v19

    .line 132
    .local v19, "activeConfig":I
    if-gez v19, :cond_2

    .line 135
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No active config found for display device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    return-void

    .line 138
    :cond_2
    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceControl;->getActiveColorMode(Landroid/os/IBinder;)I

    move-result v0

    .line 139
    .local v0, "activeColorMode":I
    if-gez v0, :cond_3

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get active color mode for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v0, -0x1

    move/from16 v20, v0

    goto :goto_0

    .line 139
    :cond_3
    move/from16 v20, v0

    .line 147
    .end local v0    # "activeColorMode":I
    .local v20, "activeColorMode":I
    :goto_0
    nop

    .line 148
    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceControl;->getDesiredDisplayConfigSpecs(Landroid/os/IBinder;)Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;

    move-result-object v21

    .line 149
    .local v21, "configSpecs":Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;
    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceControl;->getDisplayColorModes(Landroid/os/IBinder;)[I

    move-result-object v22

    .line 150
    .local v22, "colorModes":[I
    nop

    .line 151
    invoke-static/range {v16 .. v16}, Landroid/view/SurfaceControl;->getHdrCapabilities(Landroid/os/IBinder;)Landroid/view/Display$HdrCapabilities;

    move-result-object v23

    .line 152
    .local v23, "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    iget-object v0, v13, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v14, v15}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 155
    .local v10, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v0, v13, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/16 v24, 0x0

    const/4 v9, 0x1

    if-nez v0, :cond_4

    move v0, v9

    goto :goto_1

    :cond_4
    move/from16 v0, v24

    :goto_1
    move/from16 v25, v0

    .line 157
    .local v25, "isInternal":Z
    const/4 v8, 0x2

    if-nez v10, :cond_6

    .line 159
    iget-object v0, v13, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    if-nez v0, :cond_5

    move v12, v9

    goto :goto_2

    :cond_5
    move/from16 v12, v24

    .line 160
    .local v12, "isDefaultDisplay":Z
    :goto_2
    new-instance v26, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    move-object/from16 v2, v16

    move-wide/from16 v3, p1

    move-object/from16 v5, v17

    move-object/from16 v6, v18

    move/from16 v7, v19

    move-object/from16 v8, v21

    move-object/from16 v9, v22

    move-object/from16 v27, v10

    .end local v10    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .local v27, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    move/from16 v10, v20

    move-object/from16 v28, v11

    move-object/from16 v11, v23

    invoke-direct/range {v0 .. v12}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;JLandroid/view/SurfaceControl$DisplayInfo;[Landroid/view/SurfaceControl$DisplayConfig;ILandroid/view/SurfaceControl$DesiredDisplayConfigSpecs;[IILandroid/view/Display$HdrCapabilities;Z)V

    move-object/from16 v10, v26

    .line 163
    .end local v27    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v10    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v0, v13, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v14, v15, v10}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 164
    const/4 v0, 0x1

    invoke-virtual {v13, v10, v0}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 165
    .end local v12    # "isDefaultDisplay":Z
    const/4 v2, 0x2

    goto :goto_4

    :cond_6
    move v0, v9

    move-object/from16 v27, v10

    move-object/from16 v28, v11

    .end local v10    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v27    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    move-object/from16 v1, v27

    move-object/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v21

    move-object/from16 v5, v22

    move/from16 v6, v20

    move-object/from16 v7, v23

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updateDisplayProperties([Landroid/view/SurfaceControl$DisplayConfig;ILandroid/view/SurfaceControl$DesiredDisplayConfigSpecs;[IILandroid/view/Display$HdrCapabilities;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 167
    move-object/from16 v1, v27

    const/4 v2, 0x2

    .end local v27    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .local v1, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    invoke-virtual {v13, v1, v2}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_3

    .line 165
    .end local v1    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v27    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    :cond_7
    move-object/from16 v1, v27

    const/4 v2, 0x2

    .line 171
    .end local v27    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v1    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    :goto_3
    move-object v10, v1

    .end local v1    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v10    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    :goto_4
    const/4 v1, 0x0

    .line 173
    .local v1, "isAutoMode":Z
    if-nez v25, :cond_9

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    if-eqz v3, :cond_9

    .line 174
    iget-object v3, v13, Lcom/android/server/display/LocalDisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oneplus_screen_refresh_rate"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v2, :cond_8

    move/from16 v24, v0

    :cond_8
    move/from16 v1, v24

    .line 178
    :cond_9
    if-eqz v1, :cond_a

    .line 179
    iput-wide v14, v13, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayId:J

    .line 180
    iput v2, v13, Lcom/android/server/display/LocalDisplayAdapter;->mFpsState:I

    .line 181
    const-string/jumbo v0, "setfps 1.0."

    move-object/from16 v2, v28

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$1;

    invoke-direct {v2, v13}, Lcom/android/server/display/LocalDisplayAdapter$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 196
    .end local v1    # "isAutoMode":Z
    .end local v10    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v17    # "info":Landroid/view/SurfaceControl$DisplayInfo;
    .end local v18    # "configs":[Landroid/view/SurfaceControl$DisplayConfig;
    .end local v19    # "activeConfig":I
    .end local v20    # "activeColorMode":I
    .end local v21    # "configSpecs":Landroid/view/SurfaceControl$DesiredDisplayConfigSpecs;
    .end local v22    # "colorModes":[I
    .end local v23    # "hdrCapabilities":Landroid/view/Display$HdrCapabilities;
    .end local v25    # "isInternal":Z
    :cond_a
    return-void
.end method

.method private tryDisconnectDisplayLocked(J)V
    .locals 5
    .param p1, "physicalDisplayId"    # J

    .line 199
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 200
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-eqz v0, :cond_0

    .line 202
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 203
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 206
    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mFpsState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 209
    const-string v1, "LocalDisplayAdapter"

    const-string/jumbo v2, "setfps 2.0"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/LocalDisplayAdapter$2;-><init>(Lcom/android/server/display/LocalDisplayAdapter;)V

    const-wide/16 v3, 0x898

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 221
    :cond_0
    return-void
.end method


# virtual methods
.method getOverlayContext()Landroid/content/Context;
    .locals 1

    .line 1121
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public registerLocked()V
    .locals 5

    .line 108
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 110
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayEventReceiver:Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;

    .line 112
    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 113
    .local v3, "physicalDisplayId":J
    invoke-direct {p0, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    .line 112
    .end local v3    # "physicalDisplayId":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 115
    :cond_0
    return-void
.end method
