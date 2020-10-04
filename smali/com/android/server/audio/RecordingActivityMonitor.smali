.class public final Lcom/android/server/audio/RecordingActivityMonitor;
.super Ljava/lang/Object;
.source "RecordingActivityMonitor.java"

# interfaces
.implements Landroid/media/AudioSystem$AudioRecordingCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;,
        Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;,
        Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;,
        Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "AudioService.RecordingActivityMonitor"

.field private static final sEventLogger:Lcom/android/server/audio/AudioEventLogger;


# instance fields
.field private mClients:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;",
            ">;"
        }
    .end annotation
.end field

.field private mHasPublicClients:Z

.field private final mPackMan:Landroid/content/pm/PackageManager;

.field private mRecordStates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 588
    new-instance v0, Lcom/android/server/audio/AudioEventLogger;

    const/16 v1, 0x32

    const-string/jumbo v2, "recording activity received by AudioService"

    invoke-direct {v0, v1, v2}, Lcom/android/server/audio/AudioEventLogger;-><init>(ILjava/lang/String;)V

    sput-object v0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "ctxt"    # Landroid/content/Context;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 123
    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 124
    sput-object p0, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->sMonitor:Lcom/android/server/audio/RecordingActivityMonitor;

    .line 125
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    .line 126
    return-void
.end method

.method private static anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 232
    .local p0, "sysConfigs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    .local v0, "publicConfigs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/media/AudioRecordingConfiguration;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingConfiguration;

    .line 236
    .local v2, "config":Landroid/media/AudioRecordingConfiguration;
    invoke-static {v2}, Landroid/media/AudioRecordingConfiguration;->anonymizedCopy(Landroid/media/AudioRecordingConfiguration;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 237
    .end local v2    # "config":Landroid/media/AudioRecordingConfiguration;
    goto :goto_0

    .line 238
    :cond_0
    return-object v0
.end method

.method private createRecordingConfiguration(III[IIZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)Landroid/media/AudioRecordingConfiguration;
    .locals 19
    .param p1, "uid"    # I
    .param p2, "session"    # I
    .param p3, "source"    # I
    .param p4, "recordingInfo"    # [I
    .param p5, "portId"    # I
    .param p6, "silenced"    # Z
    .param p7, "activeSource"    # I
    .param p8, "clientEffects"    # [Landroid/media/audiofx/AudioEffect$Descriptor;
    .param p9, "effects"    # [Landroid/media/audiofx/AudioEffect$Descriptor;

    .line 345
    new-instance v0, Landroid/media/AudioFormat$Builder;

    invoke-direct {v0}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v1, 0x0

    aget v2, p4, v1

    .line 346
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v2, 0x1

    aget v2, p4, v2

    .line 348
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    const/4 v2, 0x2

    aget v2, p4, v2

    .line 349
    invoke-virtual {v0, v2}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v0

    .line 350
    invoke-virtual {v0}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v0

    .line 351
    .local v0, "clientFormat":Landroid/media/AudioFormat;
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    const/4 v3, 0x3

    aget v3, p4, v3

    .line 352
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/4 v3, 0x4

    aget v3, p4, v3

    .line 354
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    const/4 v3, 0x5

    aget v3, p4, v3

    .line 355
    invoke-virtual {v2, v3}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 356
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v15

    .line 357
    .local v15, "deviceFormat":Landroid/media/AudioFormat;
    const/4 v2, 0x6

    aget v16, p4, v2

    .line 358
    .local v16, "patchHandle":I
    move-object/from16 v14, p0

    iget-object v2, v14, Lcom/android/server/audio/RecordingActivityMonitor;->mPackMan:Landroid/content/pm/PackageManager;

    move/from16 v13, p1

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v12

    .line 360
    .local v12, "packages":[Ljava/lang/String;
    if-eqz v12, :cond_0

    array-length v2, v12

    if-lez v2, :cond_0

    .line 361
    aget-object v1, v12, v1

    .local v1, "packageName":Ljava/lang/String;
    goto :goto_0

    .line 363
    .end local v1    # "packageName":Ljava/lang/String;
    :cond_0
    const-string v1, ""

    .line 365
    .restart local v1    # "packageName":Ljava/lang/String;
    :goto_0
    new-instance v17, Landroid/media/AudioRecordingConfiguration;

    move-object/from16 v2, v17

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move-object v6, v0

    move-object v7, v15

    move/from16 v8, v16

    move-object v9, v1

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v18, v12

    .end local v12    # "packages":[Ljava/lang/String;
    .local v18, "packages":[Ljava/lang/String;
    move/from16 v12, p7

    move-object/from16 v13, p8

    move-object/from16 v14, p9

    invoke-direct/range {v2 .. v14}, Landroid/media/AudioRecordingConfiguration;-><init>(IIILandroid/media/AudioFormat;Landroid/media/AudioFormat;ILjava/lang/String;IZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)V

    return-object v17
.end method

.method private dispatchCallbacks(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    .line 193
    .local p1, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    if-nez p1, :cond_0

    .line 194
    return-void

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    if-eqz v1, :cond_1

    .line 200
    invoke-static {p1}, Lcom/android/server/audio/RecordingActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 201
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    nop

    .line 202
    .local v1, "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 204
    .local v3, "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :try_start_1
    iget-boolean v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-eqz v4, :cond_2

    .line 205
    iget-object v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v4, p1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V

    goto :goto_2

    .line 207
    :cond_2
    iget-object v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-interface {v4, v1}, Landroid/media/IRecordingConfigDispatcher;->dispatchRecordingConfigChange(Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :goto_2
    goto :goto_3

    .line 209
    :catch_0
    move-exception v4

    .line 210
    .local v4, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v5, "AudioService.RecordingActivityMonitor"

    const-string v6, "Could not call dispatchRecordingConfigChange() on client"

    invoke-static {v5, v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 212
    .end local v3    # "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    .end local v4    # "e":Landroid/os/RemoteException;
    :goto_3
    goto :goto_1

    .line 213
    .end local v1    # "configsPublic":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    :cond_3
    monitor-exit v0

    .line 214
    return-void

    .line 213
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private findStateByPortId(I)I
    .locals 3
    .param p1, "portId"    # I

    .line 456
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 457
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 458
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    .line 459
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getPortId()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 460
    monitor-exit v0

    return v1

    .line 457
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 464
    const/4 v0, -0x1

    return v0

    .line 463
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private findStateByRiid(I)I
    .locals 3
    .param p1, "riid"    # I

    .line 444
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 445
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 446
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getRiid()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 447
    monitor-exit v0

    return v1

    .line 445
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v1    # "i":I
    :cond_1
    monitor-exit v0

    .line 451
    const/4 v0, -0x1

    return v0

    .line 450
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;
    .locals 11
    .param p1, "event"    # I
    .param p2, "riid"    # I
    .param p3, "config"    # Landroid/media/AudioRecordingConfiguration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/media/AudioRecordingConfiguration;",
            ")",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 380
    const/4 v0, 0x0

    .line 381
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v1

    .line 382
    const/4 v2, -0x1

    .line 383
    .local v2, "stateIndex":I
    const/4 v3, -0x1

    if-eq p2, v3, :cond_0

    .line 384
    :try_start_0
    invoke-direct {p0, p2}, Lcom/android/server/audio/RecordingActivityMonitor;->findStateByRiid(I)I

    move-result v4

    move v2, v4

    goto :goto_0

    .line 438
    .end local v2    # "stateIndex":I
    :catchall_0
    move-exception v2

    goto/16 :goto_3

    .line 385
    .restart local v2    # "stateIndex":I
    :cond_0
    if-eqz p3, :cond_1

    .line 386
    invoke-virtual {p3}, Landroid/media/AudioRecordingConfiguration;->getClientPortId()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/android/server/audio/RecordingActivityMonitor;->findStateByPortId(I)I

    move-result v4

    move v2, v4

    .line 388
    :cond_1
    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v2, v3, :cond_4

    .line 389
    if-nez p1, :cond_2

    if-eqz p3, :cond_2

    .line 391
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    new-instance v7, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-direct {v7, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;-><init>(Landroid/media/AudioRecordingConfiguration;)V

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_1

    .line 394
    :cond_2
    if-nez p3, :cond_3

    .line 396
    const-string v3, "AudioService.RecordingActivityMonitor"

    const-string v7, "Unexpected event %d for riid %d"

    new-array v4, v4, [Ljava/lang/Object;

    .line 397
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    .line 396
    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    :cond_3
    monitor-exit v1

    return-object v0

    .line 402
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 405
    .local v3, "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    if-eqz p1, :cond_8

    if-eq p1, v6, :cond_7

    if-eq p1, v4, :cond_6

    const/4 v7, 0x3

    if-eq p1, v7, :cond_5

    .line 430
    const-string v8, "AudioService.RecordingActivityMonitor"

    const-string v9, "Unknown event %d for riid %d / portid %d"

    new-array v7, v7, [Ljava/lang/Object;

    .line 431
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v7, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v6

    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getPortId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v7, v4

    .line 430
    invoke-static {v9, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v4, 0x0

    .local v4, "configChanged":Z
    goto :goto_2

    .line 425
    .end local v4    # "configChanged":Z
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v4

    .line 426
    .restart local v4    # "configChanged":Z
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->release()V

    .line 427
    iget-object v5, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 428
    goto :goto_2

    .line 414
    .end local v4    # "configChanged":Z
    :cond_6
    invoke-virtual {v3, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setConfig(Landroid/media/AudioRecordingConfiguration;)Z

    move-result v4

    .line 415
    .restart local v4    # "configChanged":Z
    goto :goto_2

    .line 417
    .end local v4    # "configChanged":Z
    :cond_7
    invoke-virtual {v3, v5}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setActive(Z)Z

    move-result v4

    .line 418
    .restart local v4    # "configChanged":Z
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result v5

    if-nez v5, :cond_b

    .line 421
    iget-object v5, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 407
    .end local v4    # "configChanged":Z
    :cond_8
    invoke-virtual {v3, v6}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setActive(Z)Z

    move-result v4

    .line 408
    .restart local v4    # "configChanged":Z
    if-eqz p3, :cond_b

    .line 409
    invoke-virtual {v3, p3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->setConfig(Landroid/media/AudioRecordingConfiguration;)Z

    move-result v7

    if-nez v7, :cond_9

    if-eqz v4, :cond_a

    :cond_9
    move v5, v6

    :cond_a
    move v4, v5

    .line 434
    :cond_b
    :goto_2
    if-eqz v4, :cond_c

    .line 435
    sget-object v5, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v7, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v8

    invoke-direct {v7, p1, p2, v8}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    invoke-virtual {v5, v7}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 436
    invoke-virtual {p0, v6}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v5

    move-object v0, v5

    .line 438
    .end local v2    # "stateIndex":I
    .end local v3    # "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    .end local v4    # "configChanged":Z
    :cond_c
    monitor-exit v1

    .line 439
    return-object v0

    .line 438
    :goto_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method protected dump(Ljava/io/PrintWriter;)V
    .locals 3
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\nRecordActivityMonitor dump time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-static {}, Ljava/text/DateFormat;->getTimeInstance()Ljava/text/DateFormat;

    move-result-object v1

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 218
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 220
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 222
    .local v2, "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    invoke-virtual {v2, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->dump(Ljava/io/PrintWriter;)V

    .line 223
    .end local v2    # "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    goto :goto_0

    .line 224
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    const-string v0, "\n"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 227
    sget-object v0, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    invoke-virtual {v0, p1}, Lcom/android/server/audio/AudioEventLogger;->dump(Ljava/io/PrintWriter;)V

    .line 228
    return-void

    .line 224
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method getActiveRecordingConfigurations(Z)Ljava/util/List;
    .locals 5
    .param p1, "isPrivileged"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;"
        }
    .end annotation

    .line 309
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 310
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v1

    .line 311
    :try_start_0
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 312
    .local v3, "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 313
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 315
    .end local v3    # "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    :cond_0
    goto :goto_0

    .line 316
    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 319
    if-nez p1, :cond_2

    .line 320
    invoke-static {v0}, Lcom/android/server/audio/RecordingActivityMonitor;->anonymizeForPublicConsumption(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    .line 322
    :cond_2
    return-object v0

    .line 316
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method initMonitor()V
    .locals 0

    .line 242
    invoke-static {p0}, Landroid/media/AudioSystem;->setRecordingCallback(Landroid/media/AudioSystem$AudioRecordingCallback;)V

    .line 243
    return-void
.end method

.method onAudioServerDied()V
    .locals 10

    .line 249
    const/4 v0, 0x0

    .line 250
    .local v0, "configs":Ljava/util/List;, "Ljava/util/List<Landroid/media/AudioRecordingConfiguration;>;"
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v1

    .line 251
    const/4 v2, 0x0

    .line 252
    .local v2, "configChanged":Z
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;>;"
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 253
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    .line 254
    .local v4, "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    invoke-virtual {v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->hasDeathHandler()Z

    move-result v5

    if-nez v5, :cond_1

    .line 255
    invoke-virtual {v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->isActiveConfiguration()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 256
    const/4 v2, 0x1

    .line 257
    sget-object v5, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v6, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    const/4 v7, 0x3

    .line 259
    invoke-virtual {v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getRiid()I

    move-result v8

    invoke-virtual {v4}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;->getConfig()Landroid/media/AudioRecordingConfiguration;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    .line 257
    invoke-virtual {v5, v6}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 261
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    .line 263
    .end local v4    # "state":Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;
    :cond_1
    goto :goto_0

    .line 264
    .end local v3    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;>;"
    :cond_2
    if-eqz v2, :cond_3

    .line 265
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/audio/RecordingActivityMonitor;->getActiveRecordingConfigurations(Z)Ljava/util/List;

    move-result-object v3

    move-object v0, v3

    .line 267
    .end local v2    # "configChanged":Z
    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 268
    invoke-direct {p0, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 269
    return-void

    .line 267
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public onRecordingConfigurationChanged(IIIIIIZ[I[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;ILjava/lang/String;)V
    .locals 13
    .param p1, "event"    # I
    .param p2, "riid"    # I
    .param p3, "uid"    # I
    .param p4, "session"    # I
    .param p5, "source"    # I
    .param p6, "portId"    # I
    .param p7, "silenced"    # Z
    .param p8, "recordingInfo"    # [I
    .param p9, "clientEffects"    # [Landroid/media/audiofx/AudioEffect$Descriptor;
    .param p10, "effects"    # [Landroid/media/audiofx/AudioEffect$Descriptor;
    .param p11, "activeSource"    # I
    .param p12, "packName"    # Ljava/lang/String;

    .line 137
    move-object v10, p0

    move v11, p1

    move v12, p2

    move-object v0, p0

    move/from16 v1, p3

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v4, p8

    move/from16 v5, p6

    move/from16 v6, p7

    move/from16 v7, p11

    move-object/from16 v8, p9

    move-object/from16 v9, p10

    invoke-direct/range {v0 .. v9}, Lcom/android/server/audio/RecordingActivityMonitor;->createRecordingConfiguration(III[IIZI[Landroid/media/audiofx/AudioEffect$Descriptor;[Landroid/media/audiofx/AudioEffect$Descriptor;)Landroid/media/AudioRecordingConfiguration;

    move-result-object v0

    .line 140
    .local v0, "config":Landroid/media/AudioRecordingConfiguration;
    invoke-static/range {p5 .. p5}, Landroid/media/MediaRecorder;->isSystemOnlyAudioSource(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 142
    sget-object v1, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-direct {v2, p1, p2, v0}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    const-string v3, "AudioService.RecordingActivityMonitor"

    invoke-virtual {v2, v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 143
    return-void

    .line 145
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 146
    return-void
.end method

.method public recorderEvent(II)V
    .locals 4
    .param p1, "riid"    # I
    .param p2, "event"    # I

    .line 173
    const/4 v0, 0x1

    const/4 v1, -0x1

    if-nez p2, :cond_0

    .line 174
    const/4 v0, 0x0

    goto :goto_0

    .line 175
    :cond_0
    if-ne p2, v0, :cond_1

    .line 176
    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    nop

    .line 177
    .local v0, "configEvent":I
    const/4 v2, 0x0

    if-eq p1, v1, :cond_3

    if-ne v0, v1, :cond_2

    goto :goto_1

    .line 182
    :cond_2
    invoke-direct {p0, v0, p1, v2}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 183
    return-void

    .line 179
    :cond_3
    :goto_1
    sget-object v1, Lcom/android/server/audio/RecordingActivityMonitor;->sEventLogger:Lcom/android/server/audio/AudioEventLogger;

    new-instance v3, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;

    invoke-direct {v3, p2, p1, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;-><init>(IILandroid/media/AudioRecordingConfiguration;)V

    const-string v2, "AudioService.RecordingActivityMonitor"

    invoke-virtual {v3, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingEvent;->printLog(Ljava/lang/String;)Lcom/android/server/audio/AudioEventLogger$Event;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/audio/AudioEventLogger;->log(Lcom/android/server/audio/AudioEventLogger$Event;)V

    .line 180
    return-void
.end method

.method registerRecordingCallback(Landroid/media/IRecordingConfigDispatcher;Z)V
    .locals 3
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;
    .param p2, "isPrivileged"    # Z

    .line 272
    if-nez p1, :cond_0

    .line 273
    return-void

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 276
    :try_start_0
    new-instance v1, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    invoke-direct {v1, p1, p2}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;-><init>(Landroid/media/IRecordingConfigDispatcher;Z)V

    .line 277
    .local v1, "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    invoke-virtual {v1}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->init()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 278
    if-nez p2, :cond_1

    .line 279
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 281
    :cond_1
    iget-object v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v1    # "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :cond_2
    monitor-exit v0

    .line 284
    return-void

    .line 283
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public releaseRecorder(I)V
    .locals 2
    .param p1, "riid"    # I

    .line 189
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/audio/RecordingActivityMonitor;->updateSnapshot(IILandroid/media/AudioRecordingConfiguration;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/audio/RecordingActivityMonitor;->dispatchCallbacks(Ljava/util/List;)V

    .line 190
    return-void
.end method

.method public trackRecorder(Landroid/os/IBinder;)I
    .locals 5
    .param p1, "recorder"    # Landroid/os/IBinder;

    .line 152
    const/4 v0, -0x1

    if-nez p1, :cond_0

    .line 153
    const-string v1, "AudioService.RecordingActivityMonitor"

    const-string/jumbo v2, "trackRecorder called with null token"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return v0

    .line 156
    :cond_0
    invoke-static {}, Landroid/media/AudioSystem;->newAudioRecorderId()I

    move-result v1

    .line 157
    .local v1, "newRiid":I
    new-instance v2, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;

    invoke-direct {v2, v1, p1}, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;-><init>(ILandroid/os/IBinder;)V

    .line 158
    .local v2, "handler":Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;
    invoke-virtual {v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;->init()Z

    move-result v3

    if-nez v3, :cond_1

    .line 160
    return v0

    .line 162
    :cond_1
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    monitor-enter v0

    .line 163
    :try_start_0
    iget-object v3, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mRecordStates:Ljava/util/List;

    new-instance v4, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;

    invoke-direct {v4, v1, v2}, Lcom/android/server/audio/RecordingActivityMonitor$RecordingState;-><init>(ILcom/android/server/audio/RecordingActivityMonitor$RecorderDeathHandler;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 164
    monitor-exit v0

    .line 166
    return v1

    .line 164
    :catchall_0
    move-exception v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method unregisterRecordingCallback(Landroid/media/IRecordingConfigDispatcher;)V
    .locals 5
    .param p1, "rcdb"    # Landroid/media/IRecordingConfigDispatcher;

    .line 287
    if-nez p1, :cond_0

    .line 288
    return-void

    .line 290
    :cond_0
    iget-object v0, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    monitor-enter v0

    .line 291
    :try_start_0
    iget-object v1, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mClients:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 292
    .local v1, "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    const/4 v2, 0x0

    .line 293
    .local v2, "hasPublicClients":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 294
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;

    .line 295
    .local v3, "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    iget-object v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mDispatcherCb:Landroid/media/IRecordingConfigDispatcher;

    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 296
    invoke-virtual {v3}, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->release()V

    .line 297
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    .line 299
    :cond_1
    iget-boolean v4, v3, Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;->mIsPrivileged:Z

    if-nez v4, :cond_2

    .line 300
    const/4 v2, 0x1

    .line 303
    .end local v3    # "rmc":Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;
    :cond_2
    :goto_1
    goto :goto_0

    .line 304
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/audio/RecordingActivityMonitor;->mHasPublicClients:Z

    .line 305
    .end local v1    # "clientIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/android/server/audio/RecordingActivityMonitor$RecMonitorClient;>;"
    .end local v2    # "hasPublicClients":Z
    monitor-exit v0

    .line 306
    return-void

    .line 305
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
