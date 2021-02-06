.class public final Lcom/android/server/contentcapture/ContentCaptureManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/contentcapture/ContentCaptureManagerService$DataShareCallbackDelegate;,
        Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;,
        Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;,
        Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/contentcapture/ContentCaptureManagerService;",
        "Lcom/android/server/contentcapture/ContentCapturePerUserService;",
        ">;"
    }
.end annotation


# static fields
.field private static final DATA_SHARE_BYTE_BUFFER_LENGTH:I = 0x400

.field private static final EVENT__DATA_SHARE_ERROR_CONCURRENT_REQUEST:I = 0xe

.field private static final EVENT__DATA_SHARE_ERROR_TIMEOUT_INTERRUPTED:I = 0xf

.field private static final EVENT__DATA_SHARE_WRITE_FINISHED:I = 0x9

.field private static final MAX_CONCURRENT_FILE_SHARING_REQUESTS:I = 0xa

.field private static final MAX_DATA_SHARE_FILE_DESCRIPTORS_TTL_MS:I = 0x493e0

.field private static final MAX_TEMP_SERVICE_DURATION_MS:I = 0x1d4c0

.field static final RECEIVER_BUNDLE_EXTRA_SESSIONS:Ljava/lang/String; = "sessions"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAm:Landroid/app/ActivityManagerInternal;

.field private final mDataShareExecutor:Ljava/util/concurrent/Executor;

.field mDevCfgIdleFlushingFrequencyMs:I

.field mDevCfgIdleUnbindTimeoutMs:I

.field mDevCfgLogHistorySize:I

.field mDevCfgLoggingLevel:I

.field mDevCfgMaxBufferSize:I

.field mDevCfgTextChangeFlushingFrequencyMs:I

.field private mDisabledByDeviceConfig:Z

.field private mDisabledBySettings:Landroid/util/SparseBooleanArray;

.field final mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

.field private final mHandler:Landroid/os/Handler;

.field private final mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

.field private final mPackagesWithShareRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mRequestsHistory:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;

    .line 176
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040201

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "no_content_capture"

    const/4 v2, 0x1

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 135
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/server/contentcapture/ContentCaptureManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 166
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDataShareExecutor:Ljava/util/concurrent/Executor;

    .line 167
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mHandler:Landroid/os/Handler;

    .line 169
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    .line 172
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-direct {v0, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 180
    nop

    .line 181
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v3, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$4nadnpI0ImgQseJYN0WTE4IJ4s4;

    invoke-direct {v3, p0}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$4nadnpI0ImgQseJYN0WTE4IJ4s4;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    .line 180
    const-string v4, "content_capture"

    invoke-static {v4, v0, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 183
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDeviceConfigProperties()V

    .line 185
    iget v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    if-lez v0, :cond_1

    .line 186
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "log history size: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :cond_0
    new-instance v0, Landroid/util/LocalLog;

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    goto :goto_0

    .line 189
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_2

    .line 190
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "disabled log history because size is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    :cond_2
    iput-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 195
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getSupportedUsers()Ljava/util/List;

    move-result-object v0

    .line 196
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 197
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 198
    .local v3, "userId":I
    invoke-direct {p0, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isEnabledBySettings(I)Z

    move-result v4

    xor-int/2addr v4, v2

    .line 200
    .local v4, "disabled":Z
    if-eqz v4, :cond_4

    .line 201
    sget-object v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "user "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " disabled by settings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    if-nez v5, :cond_3

    .line 203
    new-instance v5, Landroid/util/SparseBooleanArray;

    invoke-direct {v5, v2}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 205
    :cond_3
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v5, v3, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 208
    :cond_4
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 209
    invoke-interface {v6, v3}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 210
    invoke-interface {v7, v3}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v7

    .line 208
    invoke-static {v5, v3, v6, v7}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->access$100(Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;ILjava/lang/String;Z)V

    .line 196
    .end local v3    # "userId":I
    .end local v4    # "disabled":Z
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 212
    .end local v1    # "i":I
    :cond_5
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100()Ljava/lang/String;
    .locals 1

    .line 116
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/Set;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mPackagesWithShareRequests:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/app/ActivityManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getAmInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->throwsSecurityException(Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledBySettingsLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByServiceLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/util/concurrent/Executor;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDataShareExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDefaultServiceLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 116
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isCalledByServiceLocked(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 116
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 116
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method private assertCalledByServiceLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;

    .line 506
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isCalledByServiceLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    return-void

    .line 507
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller is not user\'s ContentCapture service"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAmInternal()Landroid/app/ActivityManagerInternal;
    .locals 2

    .line 496
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 497
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    if-nez v1, :cond_0

    .line 498
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    .line 500
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 501
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    return-object v0

    .line 500
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private isCalledByServiceLocked(Ljava/lang/String;)Z
    .locals 11
    .param p1, "methodName"    # Ljava/lang/String;

    .line 513
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 514
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 515
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v2, v0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 516
    .local v2, "serviceName":Ljava/lang/String;
    const-string v3, ": called by UID "

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 517
    sget-object v5, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but there\'s no service set for user "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    return v4

    .line 522
    :cond_0
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 523
    .local v5, "serviceComponent":Landroid/content/ComponentName;
    if-nez v5, :cond_1

    .line 524
    sget-object v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": invalid service name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    return v4

    .line 528
    :cond_1
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 530
    .local v6, "servicePackageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 533
    .local v7, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    .local v8, "serviceUid":I
    nop

    .line 538
    if-eq v1, v8, :cond_2

    .line 539
    sget-object v9, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", but service UID is "

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    return v4

    .line 544
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 534
    .end local v8    # "serviceUid":I
    :catch_0
    move-exception v3

    .line 535
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    sget-object v8, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": could not verify UID for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    return v4
.end method

.method private isDefaultServiceLocked(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 570
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v0, p1}, Lcom/android/server/infra/ServiceNameResolver;->getDefaultServiceName(I)Ljava/lang/String;

    move-result-object v0

    .line 571
    .local v0, "defaultServiceName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 572
    const/4 v1, 0x0

    return v1

    .line 575
    :cond_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v1, p1}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v1

    .line 576
    .local v1, "currentServiceName":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
.end method

.method private isDisabledBySettingsLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 299
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isEnabledBySettings(I)Z
    .locals 3
    .param p1, "userId"    # I

    .line 304
    nop

    .line 303
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "content_capture_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 304
    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v0, v2

    .line 305
    .local v0, "enabled":Z
    return v0
.end method

.method static synthetic lambda$destroySessions$1(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .locals 0
    .param p0, "s"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 457
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    return-void
.end method

.method static synthetic lambda$listSessions$2(Ljava/util/ArrayList;Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .locals 0
    .param p0, "sessions"    # Ljava/util/ArrayList;
    .param p1, "s"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 483
    invoke-virtual {p1, p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->listSessionsLocked(Ljava/util/ArrayList;)V

    return-void
.end method

.method private onDeviceConfigChange(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 309
    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 310
    .local v1, "key":Ljava/lang/String;
    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :cond_0
    goto :goto_1

    :sswitch_0
    const-string v3, "idle_flush_frequency"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x3

    goto :goto_1

    :sswitch_1
    const-string v3, "idle_unbind_timeout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x6

    goto :goto_1

    :sswitch_2
    const-string/jumbo v3, "max_buffer_size"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v3, "log_history_size"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x4

    goto :goto_1

    :sswitch_4
    const-string/jumbo v3, "text_change_flush_frequency"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x5

    goto :goto_1

    :sswitch_5
    const-string/jumbo v3, "service_explicitly_enabled"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :sswitch_6
    const-string/jumbo v3, "logging_level"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 325
    sget-object v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring change on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 322
    .restart local v1    # "key":Ljava/lang/String;
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setFineTuneParamsFromDeviceConfig()V

    .line 323
    return-void

    .line 315
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setLoggingLevelFromDeviceConfig()V

    .line 316
    return-void

    .line 312
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDisabledByDeviceConfig(Ljava/lang/String;)V

    .line 313
    return-void

    .line 328
    .end local v1    # "key":Ljava/lang/String;
    :cond_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x756f795c -> :sswitch_6
        -0x120a1673 -> :sswitch_5
        -0x8e1195c -> :sswitch_4
        0xd94a5e7 -> :sswitch_3
        0x42b4ba45 -> :sswitch_2
        0x5d828843 -> :sswitch_1
        0x7b4a3376 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setContentCaptureFeatureEnabledBySettingsForUser(IZ)V
    .locals 6
    .param p1, "userId"    # I
    .param p2, "enabled"    # Z

    .line 420
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 421
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_0

    .line 422
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 424
    :cond_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 425
    .local v1, "alreadyEnabled":Z
    xor-int v3, p2, v1

    if-nez v3, :cond_2

    .line 426
    iget-boolean v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v2, :cond_1

    .line 427
    sget-object v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setContentCaptureFeatureEnabledForUser(): already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_1
    monitor-exit v0

    return-void

    .line 431
    :cond_2
    if-eqz p2, :cond_3

    .line 432
    sget-object v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setContentCaptureFeatureEnabled(): enabling service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    .line 436
    :cond_3
    sget-object v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setContentCaptureFeatureEnabled(): disabling service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 440
    :goto_0
    if-eqz p2, :cond_5

    iget-boolean v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 441
    .local v2, "disabled":Z
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 442
    nop

    .end local v1    # "alreadyEnabled":Z
    .end local v2    # "disabled":Z
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

.method private setDeviceConfigProperties()V
    .locals 2

    .line 377
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setLoggingLevelFromDeviceConfig()V

    .line 378
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setFineTuneParamsFromDeviceConfig()V

    .line 379
    const-string v0, "content_capture"

    const-string/jumbo v1, "service_explicitly_enabled"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "enabled":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDisabledByDeviceConfig(Ljava/lang/String;)V

    .line 382
    return-void
.end method

.method private setDisabledByDeviceConfig(Ljava/lang/String;)V
    .locals 9
    .param p1, "explicitlyEnabled"    # Ljava/lang/String;

    .line 385
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v0, :cond_0

    .line 386
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisabledByDeviceConfig(): explicitlyEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getSupportedUsers()Ljava/util/List;

    move-result-object v0

    .line 392
    .local v0, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz p1, :cond_1

    const-string v1, "false"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 393
    const/4 v1, 0x1

    .local v1, "newDisabledValue":Z
    goto :goto_0

    .line 395
    .end local v1    # "newDisabledValue":Z
    :cond_1
    const/4 v1, 0x0

    .line 398
    .restart local v1    # "newDisabledValue":Z
    :goto_0
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 399
    :try_start_0
    iget-boolean v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-ne v3, v1, :cond_3

    .line 400
    iget-boolean v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v3, :cond_2

    .line 401
    sget-object v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDisabledByDeviceConfig(): already "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 403
    :cond_2
    monitor-exit v2

    return-void

    .line 405
    :cond_3
    iput-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    .line 407
    sget-object v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDisabledByDeviceConfig(): set to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 408
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_7

    .line 409
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    .line 410
    .local v4, "userId":I
    iget-boolean v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-nez v5, :cond_5

    invoke-direct {p0, v4}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledBySettingsLocked(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v5, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v5, 0x1

    .line 411
    .local v5, "disabled":Z
    :goto_3
    sget-object v6, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "setDisabledByDeviceConfig(): updating service for user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    if-eqz v5, :cond_6

    const-string v8, "\'disabled\'"

    goto :goto_4

    :cond_6
    const-string v8, "\'enabled\'"

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 411
    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    invoke-virtual {p0, v4, v5}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 408
    nop

    .end local v4    # "userId":I
    .end local v5    # "disabled":Z
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 415
    .end local v3    # "i":I
    :cond_7
    monitor-exit v2

    .line 416
    return-void

    .line 415
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private setFineTuneParamsFromDeviceConfig()V
    .locals 4

    .line 331
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 332
    :try_start_0
    const-string v1, "content_capture"

    const-string/jumbo v2, "max_buffer_size"

    const/16 v3, 0x1f4

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    .line 336
    const-string v1, "content_capture"

    const-string v2, "idle_flush_frequency"

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    .line 340
    const-string v1, "content_capture"

    const-string/jumbo v2, "text_change_flush_frequency"

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    .line 344
    const-string v1, "content_capture"

    const-string/jumbo v2, "log_history_size"

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    .line 347
    const-string v1, "content_capture"

    const-string v2, "idle_unbind_timeout"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    .line 351
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v1, :cond_0

    .line 352
    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setFineTuneParamsFromDeviceConfig(): bufferSize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", idleFlush="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", textFluxh="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", logHistory="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", idleUnbindTimeoutMs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    :cond_0
    monitor-exit v0

    .line 360
    return-void

    .line 359
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setLoggingLevelFromDeviceConfig()V
    .locals 3

    .line 363
    nop

    .line 366
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureHelper;->getDefaultLoggingLevel()I

    move-result v0

    .line 363
    const-string v1, "content_capture"

    const-string/jumbo v2, "logging_level"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    .line 367
    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureHelper;->setLoggingLevel(I)V

    .line 368
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    iput-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    .line 369
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    iput-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    .line 370
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v0, :cond_0

    .line 371
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setLoggingLevelFromDeviceConfig(): level="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", debug="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", verbose="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    :cond_0
    return-void
.end method

.method private throwsSecurityException(Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z
    .locals 5
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "runable"    # Ljava/lang/Runnable;

    .line 556
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    const/4 v0, 0x0

    return v0

    .line 558
    :catch_0
    move-exception v0

    .line 560
    .local v0, "e":Ljava/lang/SecurityException;
    const/4 v1, -0x1

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 563
    goto :goto_0

    .line 561
    :catch_1
    move-exception v1

    .line 562
    .local v1, "e2":Landroid/os/RemoteException;
    sget-object v2, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to send security exception ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 565
    .end local v0    # "e":Ljava/lang/SecurityException;
    .end local v1    # "e2":Landroid/os/RemoteException;
    :goto_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method destroySessions(ILcom/android/internal/os/IResultReceiver;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 447
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySessions() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    .line 450
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 451
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 452
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 453
    .local v1, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-eqz v1, :cond_0

    .line 454
    invoke-virtual {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    .line 456
    .end local v1    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    :cond_0
    goto :goto_0

    .line 457
    :cond_1
    sget-object v1, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$jCIcV2sgwD7QUkN-c6yfPd58T_U;->INSTANCE:Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$jCIcV2sgwD7QUkN-c6yfPd58T_U;

    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 459
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 462
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, v0, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 465
    goto :goto_1

    .line 463
    :catch_0
    move-exception v0

    .line 466
    :goto_1
    return-void

    .line 459
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "prefix"    # Ljava/lang/String;
    .param p2, "pw"    # Ljava/io/PrintWriter;

    .line 581
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 583
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 585
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Users disabled by Settings: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 586
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "DeviceConfig Settings: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "disabled: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 588
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "loggingLevel: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 589
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "maxBufferSize: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 590
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "idleFlushingFrequencyMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 591
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 592
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "textChangeFlushingFrequencyMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 593
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 594
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "logHistorySize: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 595
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "idleUnbindTimeoutMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 596
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 597
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Global Options:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 598
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 599
    return-void
.end method

.method protected enforceCallingPermissionForManagement()V
    .locals 3

    .line 264
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    const-string v2, "android.permission.MANAGE_CONTENT_CAPTURE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method protected getMaximumTemporaryServiceDurationMs()I
    .locals 1

    .line 269
    const v0, 0x1d4c0

    return v0
.end method

.method protected isDisabledLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 294
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledBySettingsLocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 295
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractMasterSystemService;->isDisabledLocked(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 294
    :goto_1
    return v0
.end method

.method public isUserSupported(Lcom/android/server/SystemService$TargetUser;)Z
    .locals 1
    .param p1, "user"    # Lcom/android/server/SystemService$TargetUser;

    .line 222
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isFull()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public synthetic lambda$new$0$ContentCaptureManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 182
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->onDeviceConfigChange(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method listSessions(ILcom/android/internal/os/IResultReceiver;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 470
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listSessions() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    .line 473
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 474
    .local v0, "resultData":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 476
    .local v1, "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 477
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 478
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 479
    .local v3, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-eqz v3, :cond_0

    .line 480
    invoke-virtual {v3, v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->listSessionsLocked(Ljava/util/ArrayList;)V

    .line 482
    .end local v3    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    :cond_0
    goto :goto_0

    .line 485
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 483
    :cond_1
    new-instance v3, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$17qcaUpUsTMt5exVwDnmTmyrpJw;

    invoke-direct {v3, v1}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$17qcaUpUsTMt5exVwDnmTmyrpJw;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 485
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 487
    const-string/jumbo v2, "sessions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 489
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p2, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 492
    goto :goto_1

    .line 490
    :catch_0
    move-exception v2

    .line 493
    :goto_1
    return-void

    .line 485
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method protected newServiceLocked(IZ)Lcom/android/server/contentcapture/ContentCapturePerUserService;
    .locals 2
    .param p1, "resolvedUserId"    # I
    .param p2, "disabled"    # Z

    .line 217
    new-instance v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/Object;ZI)V

    return-object v0
.end method

.method protected bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 116
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->newServiceLocked(IZ)Lcom/android/server/contentcapture/ContentCapturePerUserService;

    move-result-object p1

    return-object p1
.end method

.method protected onServiceNameChanged(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "isTemporary"    # Z

    .line 257
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->access$100(Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;ILjava/lang/String;Z)V

    .line 259
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceNameChanged(ILjava/lang/String;Z)V

    .line 260
    return-void
.end method

.method protected onServicePackageUpdatedLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 248
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 249
    .local v0, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-eqz v0, :cond_0

    .line 250
    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onPackageUpdatedLocked()V

    .line 252
    :cond_0
    return-void
.end method

.method protected onServicePackageUpdatingLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 240
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 241
    .local v0, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-eqz v0, :cond_0

    .line 242
    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onPackageUpdatingLocked()V

    .line 244
    :cond_0
    return-void
.end method

.method protected onServiceRemoved(Lcom/android/server/contentcapture/ContentCapturePerUserService;I)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;
    .param p2, "userId"    # I

    .line 235
    invoke-virtual {p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroyLocked()V

    .line 236
    return-void
.end method

.method protected bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0

    .line 116
    check-cast p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->onServiceRemoved(Lcom/android/server/contentcapture/ContentCapturePerUserService;I)V

    return-void
.end method

.method protected onSettingsChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "property"    # Ljava/lang/String;

    .line 282
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x1337347e

    if-eq v0, v1, :cond_1

    :cond_0
    goto :goto_0

    :cond_1
    const-string v0, "content_capture_enabled"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_2

    .line 288
    sget-object v0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected property ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "); updating cache instead"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return-void

    .line 284
    :cond_2
    nop

    .line 285
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isEnabledBySettings(I)Z

    move-result v0

    .line 284
    invoke-direct {p0, p1, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setContentCaptureFeatureEnabledBySettingsForUser(IZ)V

    .line 286
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 227
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    const-string v1, "content_capture"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 229
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 230
    return-void
.end method

.method protected registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 275
    const-string v0, "content_capture_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 278
    return-void
.end method
