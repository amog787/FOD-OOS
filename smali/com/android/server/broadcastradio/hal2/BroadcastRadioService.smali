.class public Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
.super Ljava/lang/Object;
.source "BroadcastRadioService.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "BcRadio2Srv"


# instance fields
.field private mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

.field private final mLock:Ljava/lang/Object;

.field private final mModules:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/broadcastradio/hal2/RadioModule;",
            ">;"
        }
    .end annotation
.end field

.field private mNextModuleId:I

.field private mServiceListener:Landroid/hidl/manager/V1_0/IServiceNotification$Stub;

.field private final mServiceNameToModuleIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .locals 5
    .param p1, "nextModuleId"    # I

    .line 119
    const-string v0, "BcRadio2Srv"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    .line 47
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    .line 50
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    .line 54
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    .line 57
    new-instance v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$1;-><init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceListener:Landroid/hidl/manager/V1_0/IServiceNotification$Stub;

    .line 97
    new-instance v1, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;

    invoke-direct {v1, p0}, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService$2;-><init>(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)V

    iput-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    .line 120
    iput p1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    .line 122
    :try_start_0
    invoke-static {}, Landroid/hidl/manager/V1_0/IServiceManager;->getService()Landroid/hidl/manager/V1_0/IServiceManager;

    move-result-object v1

    .line 123
    .local v1, "manager":Landroid/hidl/manager/V1_0/IServiceManager;
    if-nez v1, :cond_0

    .line 124
    const-string v2, "failed to get HIDL Service Manager"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    return-void

    .line 127
    :cond_0
    const-string v2, "android.hardware.broadcastradio@2.0::IBroadcastRadio"

    const-string v3, ""

    iget-object v4, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceListener:Landroid/hidl/manager/V1_0/IServiceNotification$Stub;

    invoke-interface {v1, v2, v3, v4}, Landroid/hidl/manager/V1_0/IServiceManager;->registerForNotifications(Ljava/lang/String;Ljava/lang/String;Landroid/hidl/manager/V1_0/IServiceNotification;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .end local v1    # "manager":Landroid/hidl/manager/V1_0/IServiceManager;
    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "failed to register for service notifications: "

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 42
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 42
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mServiceNameToModuleIdMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 42
    iget v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    return v0
.end method

.method static synthetic access$208(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)I
    .locals 2
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 42
    iget v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mNextModuleId:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 42
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;)Landroid/os/IHwBinder$DeathRecipient;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;

    .line 42
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mDeathRecipient:Landroid/os/IHwBinder$DeathRecipient;

    return-object v0
.end method

.method static synthetic lambda$listModules$0(Lcom/android/server/broadcastradio/hal2/RadioModule;)Landroid/hardware/radio/RadioManager$ModuleProperties;
    .locals 1
    .param p0, "module"    # Lcom/android/server/broadcastradio/hal2/RadioModule;

    .line 135
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/RadioModule;->mProperties:Landroid/hardware/radio/RadioManager$ModuleProperties;

    return-object v0
.end method


# virtual methods
.method public addAnnouncementListener([ILandroid/hardware/radio/IAnnouncementListener;)Landroid/hardware/radio/ICloseHandle;
    .locals 8
    .param p1, "enabledTypes"    # [I
    .param p2, "listener"    # Landroid/hardware/radio/IAnnouncementListener;

    .line 177
    new-instance v0, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;

    invoke-direct {v0, p2}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;-><init>(Landroid/hardware/radio/IAnnouncementListener;)V

    .line 178
    .local v0, "aggregator":Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;
    const/4 v1, 0x0

    .line 179
    .local v1, "anySupported":Z
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 180
    :try_start_0
    iget-object v3, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/broadcastradio/hal2/RadioModule;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .local v4, "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    :try_start_1
    invoke-virtual {v0, v4, p1}, Lcom/android/server/broadcastradio/hal2/AnnouncementAggregator;->watchModule(Lcom/android/server/broadcastradio/hal2/RadioModule;[I)V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 183
    const/4 v1, 0x1

    .line 186
    goto :goto_1

    .line 184
    :catch_0
    move-exception v5

    .line 185
    .local v5, "ex":Ljava/lang/UnsupportedOperationException;
    :try_start_2
    const-string v6, "BcRadio2Srv"

    const-string v7, "Announcements not supported for this module"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 187
    .end local v4    # "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    .end local v5    # "ex":Ljava/lang/UnsupportedOperationException;
    :goto_1
    goto :goto_0

    .line 188
    :cond_0
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 189
    if-nez v1, :cond_1

    .line 190
    const-string v2, "BcRadio2Srv"

    const-string v3, "There are no HAL modules that support announcements"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_1
    return-object v0

    .line 188
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method public hasAnyModules()Z
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 149
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasModule(I)Z
    .locals 3
    .param p1, "id"    # I

    .line 141
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 142
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 143
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public listModules()Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Landroid/hardware/radio/RadioManager$ModuleProperties;",
            ">;"
        }
    .end annotation

    .line 134
    iget-object v0, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 135
    :try_start_0
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    sget-object v2, Lcom/android/server/broadcastradio/hal2/-$$Lambda$BroadcastRadioService$NfRbSZZMVkp9di5eX6n4aCxsJVI;->INSTANCE:Lcom/android/server/broadcastradio/hal2/-$$Lambda$BroadcastRadioService$NfRbSZZMVkp9di5eX6n4aCxsJVI;

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    .line 136
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    monitor-exit v0

    .line 135
    return-object v1

    .line 137
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public openSession(ILandroid/hardware/radio/RadioManager$BandConfig;ZLandroid/hardware/radio/ITunerCallback;)Landroid/hardware/radio/ITuner;
    .locals 4
    .param p1, "moduleId"    # I
    .param p2, "legacyConfig"    # Landroid/hardware/radio/RadioManager$BandConfig;
    .param p3, "withAudio"    # Z
    .param p4, "callback"    # Landroid/hardware/radio/ITunerCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 154
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    if-eqz p3, :cond_2

    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    iget-object v1, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 162
    :try_start_0
    iget-object v2, p0, Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;->mModules:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/broadcastradio/hal2/RadioModule;

    move-object v0, v2

    .line 163
    if-eqz v0, :cond_1

    .line 166
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 168
    invoke-virtual {v0, p4}, Lcom/android/server/broadcastradio/hal2/RadioModule;->openSession(Landroid/hardware/radio/ITunerCallback;)Lcom/android/server/broadcastradio/hal2/TunerSession;

    move-result-object v1

    .line 169
    .local v1, "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    if-eqz p2, :cond_0

    .line 170
    invoke-virtual {v1, p2}, Lcom/android/server/broadcastradio/hal2/TunerSession;->setConfiguration(Landroid/hardware/radio/RadioManager$BandConfig;)V

    .line 172
    :cond_0
    return-object v1

    .line 164
    .end local v1    # "tunerSession":Lcom/android/server/broadcastradio/hal2/TunerSession;
    :cond_1
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid module ID"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    .end local p0    # "this":Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
    .end local p1    # "moduleId":I
    .end local p2    # "legacyConfig":Landroid/hardware/radio/RadioManager$BandConfig;
    .end local p3    # "withAudio":Z
    .end local p4    # "callback":Landroid/hardware/radio/ITunerCallback;
    throw v2

    .line 166
    .restart local v0    # "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    .restart local p0    # "this":Lcom/android/server/broadcastradio/hal2/BroadcastRadioService;
    .restart local p1    # "moduleId":I
    .restart local p2    # "legacyConfig":Landroid/hardware/radio/RadioManager$BandConfig;
    .restart local p3    # "withAudio":Z
    .restart local p4    # "callback":Landroid/hardware/radio/ITunerCallback;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 157
    .end local v0    # "module":Lcom/android/server/broadcastradio/hal2/RadioModule;
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Non-audio sessions not supported with HAL 2.x"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
