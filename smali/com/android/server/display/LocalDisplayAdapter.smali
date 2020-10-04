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

    .line 87
    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 70
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mContext:Landroid/content/Context;

    .line 81
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mFpsState:I

    .line 82
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayId:J

    .line 90
    iput-object p2, p0, Lcom/android/server/display/LocalDisplayAdapter;->mContext:Landroid/content/Context;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;

    .line 62
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/display/LocalDisplayAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1, "x1"    # I

    .line 62
    iput p1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mFpsState:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1, "x1"    # J

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/LocalDisplayAdapter;J)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;
    .param p1, "x1"    # J

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(J)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/display/LocalDisplayAdapter;)Landroid/util/LongSparseArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/display/LocalDisplayAdapter;

    .line 62
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    return-object v0
.end method

.method static getPowerModeForState(I)I
    .locals 3
    .param p0, "state"    # I

    .line 206
    const/4 v0, 0x1

    if-eq p0, v0, :cond_3

    const/4 v1, 0x6

    const/4 v2, 0x4

    if-eq p0, v1, :cond_2

    const/4 v1, 0x3

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_0

    .line 216
    const/4 v0, 0x2

    return v0

    .line 212
    :cond_0
    return v1

    .line 210
    :cond_1
    return v0

    .line 214
    :cond_2
    return v2

    .line 208
    :cond_3
    const/4 v0, 0x0

    return v0
.end method

.method private tryConnectDisplayLocked(J)V
    .locals 26
    .param p1, "physicalDisplayId"    # J

    .line 106
    move-object/from16 v11, p0

    move-wide/from16 v12, p1

    invoke-static/range {p1 .. p2}, Landroid/view/SurfaceControl;->getPhysicalDisplayToken(J)Landroid/os/IBinder;

    move-result-object v14

    .line 107
    .local v14, "displayToken":Landroid/os/IBinder;
    if-eqz v14, :cond_8

    .line 108
    nop

    .line 109
    invoke-static {v14}, Landroid/view/SurfaceControl;->getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    move-result-object v15

    .line 110
    .local v15, "configs":[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    const-string v10, "LocalDisplayAdapter"

    if-nez v15, :cond_0

    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No valid configs found for display device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    return-void

    .line 115
    :cond_0
    invoke-static {v14}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    move-result v16

    .line 116
    .local v16, "activeConfig":I
    if-gez v16, :cond_1

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No active config found for display device "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-void

    .line 122
    :cond_1
    invoke-static {v14}, Landroid/view/SurfaceControl;->getActiveColorMode(Landroid/os/IBinder;)I

    move-result v0

    .line 123
    .local v0, "activeColorMode":I
    if-gez v0, :cond_2

    .line 127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to get active color mode for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v10, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    const/4 v0, -0x1

    move/from16 v17, v0

    goto :goto_0

    .line 123
    :cond_2
    move/from16 v17, v0

    .line 131
    .end local v0    # "activeColorMode":I
    .local v17, "activeColorMode":I
    :goto_0
    invoke-static {v14}, Landroid/view/SurfaceControl;->getDisplayColorModes(Landroid/os/IBinder;)[I

    move-result-object v18

    .line 132
    .local v18, "colorModes":[I
    invoke-static {v14}, Landroid/view/SurfaceControl;->getAllowedDisplayConfigs(Landroid/os/IBinder;)[I

    move-result-object v19

    .line 133
    .local v19, "allowedConfigs":[I
    iget-object v0, v11, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v12, v13}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 136
    .local v9, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v0, v11, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0}, Landroid/util/LongSparseArray;->size()I

    move-result v0

    const/16 v20, 0x0

    const/4 v8, 0x1

    if-nez v0, :cond_3

    move v0, v8

    goto :goto_1

    :cond_3
    move/from16 v0, v20

    :goto_1
    move/from16 v21, v0

    .line 138
    .local v21, "isInternal":Z
    const/4 v7, 0x2

    if-nez v9, :cond_4

    .line 140
    new-instance v22, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object v2, v14

    move-wide/from16 v3, p1

    move-object v5, v15

    move/from16 v6, v16

    move-object/from16 v23, v14

    move v14, v7

    .end local v14    # "displayToken":Landroid/os/IBinder;
    .local v23, "displayToken":Landroid/os/IBinder;
    move-object/from16 v7, v19

    move v14, v8

    move-object/from16 v8, v18

    move-object/from16 v24, v9

    .end local v9    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .local v24, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    move/from16 v9, v17

    move-object/from16 v25, v10

    move/from16 v10, v21

    invoke-direct/range {v0 .. v10}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;J[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[IIZ)V

    move-object/from16 v9, v22

    .line 143
    .end local v24    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v9    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    iget-object v0, v11, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v12, v13, v9}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 144
    invoke-virtual {v11, v9, v14}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    move-object v0, v9

    goto :goto_2

    .line 145
    .end local v23    # "displayToken":Landroid/os/IBinder;
    .restart local v14    # "displayToken":Landroid/os/IBinder;
    :cond_4
    move-object/from16 v24, v9

    move-object/from16 v25, v10

    move-object/from16 v23, v14

    move v14, v8

    .end local v9    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v14    # "displayToken":Landroid/os/IBinder;
    .restart local v23    # "displayToken":Landroid/os/IBinder;
    .restart local v24    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    move-object/from16 v0, v24

    move-object v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v19

    move-object/from16 v4, v18

    move/from16 v5, v17

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[I[II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 148
    move-object/from16 v0, v24

    const/4 v1, 0x2

    .end local v24    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    invoke-virtual {v11, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_2

    .line 145
    .end local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v24    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    :cond_5
    move-object/from16 v0, v24

    .line 152
    .end local v24    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .restart local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    :goto_2
    const/4 v1, 0x0

    .line 154
    .local v1, "isAutoMode":Z
    if-nez v21, :cond_7

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 155
    iget-object v2, v11, Lcom/android/server/display/LocalDisplayAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oneplus_screen_refresh_rate"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_6

    goto :goto_3

    :cond_6
    move/from16 v14, v20

    :goto_3
    move v1, v14

    .line 159
    :cond_7
    if-eqz v1, :cond_9

    .line 160
    iput-wide v12, v11, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayId:J

    .line 161
    const/4 v2, 0x2

    iput v2, v11, Lcom/android/server/display/LocalDisplayAdapter;->mFpsState:I

    .line 162
    const-string/jumbo v2, "setfps 1.0."

    move-object/from16 v3, v25

    invoke-static {v3, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v3, Lcom/android/server/display/LocalDisplayAdapter$1;

    invoke-direct {v3, v11}, Lcom/android/server/display/LocalDisplayAdapter$1;-><init>(Lcom/android/server/display/LocalDisplayAdapter;)V

    const-wide/16 v4, 0x7d0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_4

    .line 107
    .end local v0    # "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    .end local v1    # "isAutoMode":Z
    .end local v15    # "configs":[Landroid/view/SurfaceControl$PhysicalDisplayInfo;
    .end local v16    # "activeConfig":I
    .end local v17    # "activeColorMode":I
    .end local v18    # "colorModes":[I
    .end local v19    # "allowedConfigs":[I
    .end local v21    # "isInternal":Z
    .end local v23    # "displayToken":Landroid/os/IBinder;
    .restart local v14    # "displayToken":Landroid/os/IBinder;
    :cond_8
    move-object/from16 v23, v14

    .line 177
    .end local v14    # "displayToken":Landroid/os/IBinder;
    .restart local v23    # "displayToken":Landroid/os/IBinder;
    :cond_9
    :goto_4
    return-void
.end method

.method private tryDisconnectDisplayLocked(J)V
    .locals 5
    .param p1, "physicalDisplayId"    # J

    .line 180
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    .line 181
    .local v0, "device":Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;
    if-eqz v0, :cond_0

    .line 183
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->remove(J)V

    .line 184
    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    .line 187
    iget-wide v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayId:J

    cmp-long v1, v1, p1

    if-nez v1, :cond_0

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mFpsState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 190
    const-string v1, "LocalDisplayAdapter"

    const-string/jumbo v2, "setfps 2.0"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lcom/android/server/display/LocalDisplayAdapter$2;

    invoke-direct {v2, p0}, Lcom/android/server/display/LocalDisplayAdapter$2;-><init>(Lcom/android/server/display/LocalDisplayAdapter;)V

    const-wide/16 v3, 0x898

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 203
    :cond_0
    return-void
.end method


# virtual methods
.method getOverlayContext()Landroid/content/Context;
    .locals 1

    .line 911
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public registerLocked()V
    .locals 5

    .line 96
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    .line 98
    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mPhysicalDisplayEventReceiver:Lcom/android/server/display/LocalDisplayAdapter$PhysicalDisplayEventReceiver;

    .line 100
    invoke-static {}, Landroid/view/SurfaceControl;->getPhysicalDisplayIds()[J

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-wide v3, v0, v2

    .line 101
    .local v3, "physicalDisplayId":J
    invoke-direct {p0, v3, v4}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(J)V

    .line 100
    .end local v3    # "physicalDisplayId":J
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method
