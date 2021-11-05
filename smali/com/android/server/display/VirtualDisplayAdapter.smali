.class public Lcom/android/server/display/VirtualDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "VirtualDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;,
        Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;,
        Lcom/android/server/display/VirtualDisplayAdapter$Callback;,
        Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final TAG:Ljava/lang/String; = "VirtualDisplayAdapter"

.field static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "virtual:"


# instance fields
.field private final mHandler:Landroid/os/Handler;

.field private final mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

.field private final mVirtualDisplayDevices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;

    .line 77
    sget-object v5, Lcom/android/server/display/-$$Lambda$VirtualDisplayAdapter$PFyqe-aYIEBicSVtuy5lL_bT8B0;->INSTANCE:Lcom/android/server/display/-$$Lambda$VirtualDisplayAdapter$PFyqe-aYIEBicSVtuy5lL_bT8B0;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/VirtualDisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;)V

    .line 79
    return-void
.end method

.method constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;)V
    .locals 6
    .param p1, "syncRoot"    # Lcom/android/server/display/DisplayManagerService$SyncRoot;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "listener"    # Lcom/android/server/display/DisplayAdapter$Listener;
    .param p5, "surfaceControlDisplayFactory"    # Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

    .line 85
    const-string v5, "VirtualDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    .line 69
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    .line 86
    iput-object p3, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    .line 87
    iput-object p5, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

    .line 88
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/VirtualDisplayAdapter;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->handleBinderDiedLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/display/VirtualDisplayAdapter;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 61
    invoke-direct {p0, p1}, Lcom/android/server/display/VirtualDisplayAdapter;->handleMediaProjectionStoppedLocked(Landroid/os/IBinder;)V

    return-void
.end method

.method private getNextUniqueIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "uniqueIdPrefix"    # Ljava/lang/String;

    .line 175
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    const/4 v0, 0x0

    return v0

    .line 179
    :cond_0
    const/4 v0, 0x0

    .line 180
    .local v0, "nextUniqueIndex":I
    iget-object v1, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 181
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 182
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 183
    .local v2, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    invoke-virtual {v2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getUniqueId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 184
    invoke-static {v2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->access$000(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I

    move-result v3

    if-lt v3, v0, :cond_1

    .line 187
    invoke-static {v2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->access$000(Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    move v0, v3

    .line 189
    .end local v2    # "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    :cond_1
    goto :goto_0

    .line 191
    :cond_2
    return v0
.end method

.method private handleBinderDiedLocked(Landroid/os/IBinder;)V
    .locals 1
    .param p1, "appToken"    # Landroid/os/IBinder;

    .line 195
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 196
    return-void
.end method

.method private handleMediaProjectionStoppedLocked(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "appToken"    # Landroid/os/IBinder;

    .line 199
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 200
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Virtual display device released because media projection stopped: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "VirtualDisplayAdapter"

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->stopLocked()V

    .line 205
    :cond_0
    return-void
.end method

.method static synthetic lambda$new$0(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "secure"    # Z

    .line 78
    invoke-static {p0, p1}, Landroid/view/SurfaceControl;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public createVirtualDisplayLocked(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/media/projection/IMediaProjection;ILjava/lang/String;Landroid/view/Surface;ILandroid/hardware/display/VirtualDisplayConfig;)Lcom/android/server/display/DisplayDevice;
    .locals 22
    .param p1, "callback"    # Landroid/hardware/display/IVirtualDisplayCallback;
    .param p2, "projection"    # Landroid/media/projection/IMediaProjection;
    .param p3, "ownerUid"    # I
    .param p4, "ownerPackageName"    # Ljava/lang/String;
    .param p5, "surface"    # Landroid/view/Surface;
    .param p6, "flags"    # I
    .param p7, "virtualDisplayConfig"    # Landroid/hardware/display/VirtualDisplayConfig;

    .line 93
    move-object/from16 v13, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p4

    invoke-virtual/range {p7 .. p7}, Landroid/hardware/display/VirtualDisplayConfig;->getName()Ljava/lang/String;

    move-result-object v12

    .line 94
    .local v12, "name":Ljava/lang/String;
    and-int/lit8 v0, p6, 0x4

    const/4 v11, 0x0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v11

    :goto_0
    move v10, v0

    .line 95
    .local v10, "secure":Z
    invoke-interface/range {p1 .. p1}, Landroid/hardware/display/IVirtualDisplayCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v9

    .line 96
    .local v9, "appToken":Landroid/os/IBinder;
    iget-object v0, v13, Lcom/android/server/display/VirtualDisplayAdapter;->mSurfaceControlDisplayFactory:Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;

    invoke-interface {v0, v12, v10}, Lcom/android/server/display/VirtualDisplayAdapter$SurfaceControlDisplayFactory;->createDisplay(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v16

    .line 97
    .local v16, "displayToken":Landroid/os/IBinder;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "virtual:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p3

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 99
    .local v7, "baseUniqueId":Ljava/lang/String;
    invoke-direct {v13, v7}, Lcom/android/server/display/VirtualDisplayAdapter;->getNextUniqueIndex(Ljava/lang/String;)I

    move-result v6

    .line 100
    .local v6, "uniqueIndex":I
    invoke-virtual/range {p7 .. p7}, Landroid/hardware/display/VirtualDisplayConfig;->getUniqueId()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "uniqueId":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 102
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    goto :goto_1

    .line 104
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object/from16 v17, v0

    .line 106
    .end local v0    # "uniqueId":Ljava/lang/String;
    .local v17, "uniqueId":Ljava/lang/String;
    :goto_1
    new-instance v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    new-instance v5, Lcom/android/server/display/VirtualDisplayAdapter$Callback;

    iget-object v1, v13, Lcom/android/server/display/VirtualDisplayAdapter;->mHandler:Landroid/os/Handler;

    move-object/from16 v4, p1

    invoke-direct {v5, v4, v1}, Lcom/android/server/display/VirtualDisplayAdapter$Callback;-><init>(Landroid/hardware/display/IVirtualDisplayCallback;Landroid/os/Handler;)V

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v3, v16

    move-object v4, v9

    move-object/from16 v18, v5

    move/from16 v5, p3

    move/from16 v19, v6

    .end local v6    # "uniqueIndex":I
    .local v19, "uniqueIndex":I
    move-object/from16 v6, p4

    move-object/from16 v20, v7

    .end local v7    # "baseUniqueId":Ljava/lang/String;
    .local v20, "baseUniqueId":Ljava/lang/String;
    move-object/from16 v7, p5

    move/from16 v8, p6

    move-object v15, v9

    .end local v9    # "appToken":Landroid/os/IBinder;
    .local v15, "appToken":Landroid/os/IBinder;
    move-object/from16 v9, v18

    move/from16 v18, v10

    .end local v10    # "secure":Z
    .local v18, "secure":Z
    move-object/from16 v10, v17

    move/from16 v11, v19

    move-object/from16 v21, v12

    .end local v12    # "name":Ljava/lang/String;
    .local v21, "name":Ljava/lang/String;
    move-object/from16 v12, p7

    invoke-direct/range {v1 .. v12}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;Landroid/os/IBinder;ILjava/lang/String;Landroid/view/Surface;ILcom/android/server/display/VirtualDisplayAdapter$Callback;Ljava/lang/String;ILandroid/hardware/display/VirtualDisplayConfig;)V

    .line 110
    .local v1, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    iget-object v0, v13, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, v15, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    if-eqz v14, :cond_2

    .line 114
    :try_start_0
    new-instance v0, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;

    invoke-direct {v0, v13, v15}, Lcom/android/server/display/VirtualDisplayAdapter$MediaProjectionCallback;-><init>(Lcom/android/server/display/VirtualDisplayAdapter;Landroid/os/IBinder;)V

    invoke-interface {v14, v0}, Landroid/media/projection/IMediaProjection;->registerCallback(Landroid/media/projection/IMediaProjectionCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 117
    :catch_0
    move-exception v0

    const/4 v2, 0x0

    goto :goto_3

    .line 116
    :cond_2
    :goto_2
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {v15, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    nop

    .line 125
    return-object v1

    .line 117
    :catch_1
    move-exception v0

    .line 118
    .local v0, "ex":Landroid/os/RemoteException;
    :goto_3
    iget-object v3, v13, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v15}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    invoke-virtual {v1, v2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    .line 120
    const/4 v2, 0x0

    return-object v2
.end method

.method public bridge synthetic dumpLocked(Ljava/io/PrintWriter;)V
    .locals 0

    .line 60
    invoke-super {p0, p1}, Lcom/android/server/display/DisplayAdapter;->dumpLocked(Ljava/io/PrintWriter;)V

    return-void
.end method

.method getVirtualDisplaySurfaceLocked(Landroid/os/IBinder;)Landroid/view/Surface;
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;

    .line 138
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 139
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    .line 140
    invoke-virtual {v0}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->getSurfaceLocked()Landroid/view/Surface;

    move-result-object v1

    return-object v1

    .line 142
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic registerLocked()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    return-void
.end method

.method public releaseVirtualDisplayLocked(Landroid/os/IBinder;)Lcom/android/server/display/DisplayDevice;
    .locals 2
    .param p1, "appToken"    # Landroid/os/IBinder;

    .line 153
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 154
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    .line 155
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->destroyLocked(Z)V

    .line 156
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 161
    :cond_0
    return-object v0
.end method

.method public resizeVirtualDisplayLocked(Landroid/os/IBinder;III)V
    .locals 1
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "densityDpi"    # I

    .line 130
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 131
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->resizeLocked(III)V

    .line 134
    :cond_0
    return-void
.end method

.method setVirtualDisplayStateLocked(Landroid/os/IBinder;Z)V
    .locals 1
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "isOn"    # Z

    .line 165
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 166
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    .line 167
    invoke-virtual {v0, p2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setDisplayState(Z)V

    .line 169
    :cond_0
    return-void
.end method

.method public setVirtualDisplaySurfaceLocked(Landroid/os/IBinder;Landroid/view/Surface;)V
    .locals 1
    .param p1, "appToken"    # Landroid/os/IBinder;
    .param p2, "surface"    # Landroid/view/Surface;

    .line 146
    iget-object v0, p0, Lcom/android/server/display/VirtualDisplayAdapter;->mVirtualDisplayDevices:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;

    .line 147
    .local v0, "device":Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;
    if-eqz v0, :cond_0

    .line 148
    invoke-virtual {v0, p2}, Lcom/android/server/display/VirtualDisplayAdapter$VirtualDisplayDevice;->setSurfaceLocked(Landroid/view/Surface;)V

    .line 150
    :cond_0
    return-void
.end method
