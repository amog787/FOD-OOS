.class public final Lcom/android/server/contentcapture/ContentCaptureManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "ContentCaptureManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
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
.field private static final MAX_TEMP_SERVICE_DURATION_MS:I = 0x1d4c0

.field static final RECEIVER_BUNDLE_EXTRA_SESSIONS:Ljava/lang/String; = "sessions"


# instance fields
.field private mAm:Landroid/app/ActivityManagerInternal;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mDevCfgIdleFlushingFrequencyMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mDevCfgIdleUnbindTimeoutMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mDevCfgLogHistorySize:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mDevCfgLoggingLevel:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mDevCfgMaxBufferSize:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mDevCfgTextChangeFlushingFrequencyMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDisabledByDeviceConfig:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private mDisabledBySettings:Landroid/util/SparseBooleanArray;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field final mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

.field private final mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

.field final mRequestsHistory:Landroid/util/LocalLog;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;

    .line 131
    new-instance v0, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    const v1, 0x1040160

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    const-string/jumbo v1, "no_content_capture"

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;I)V

    .line 96
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/server/contentcapture/ContentCaptureManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    .line 127
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-direct {v0, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    .line 135
    nop

    .line 136
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$4nadnpI0ImgQseJYN0WTE4IJ4s4;

    invoke-direct {v2, p0}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$4nadnpI0ImgQseJYN0WTE4IJ4s4;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    .line 135
    const-string v3, "content_capture"

    invoke-static {v3, v0, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 138
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDeviceConfigProperties()V

    .line 140
    iget v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    if-lez v0, :cond_1

    .line 141
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "log history size: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_0
    new-instance v0, Landroid/util/LocalLog;

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    goto :goto_0

    .line 144
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v0, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disabled log history because size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_2
    iput-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    .line 150
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 151
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 152
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    .line 153
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 154
    .local v3, "userId":I
    invoke-direct {p0, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isEnabledBySettings(I)Z

    move-result v4

    const/4 v5, 0x1

    xor-int/2addr v4, v5

    .line 156
    .local v4, "disabled":Z
    if-eqz v4, :cond_4

    .line 157
    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "user "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " disabled by settings"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    if-nez v6, :cond_3

    .line 159
    new-instance v6, Landroid/util/SparseBooleanArray;

    invoke-direct {v6, v5}, Landroid/util/SparseBooleanArray;-><init>(I)V

    iput-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 161
    :cond_3
    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v6, v3, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 164
    :cond_4
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    iget-object v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 165
    invoke-interface {v6, v3}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    .line 166
    invoke-interface {v7, v3}, Lcom/android/server/infra/ServiceNameResolver;->isTemporary(I)Z

    move-result v7

    .line 164
    invoke-static {v5, v3, v6, v7}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->access$100(Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;ILjava/lang/String;Z)V

    .line 152
    .end local v3    # "userId":I
    .end local v4    # "disabled":Z
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 168
    .end local v2    # "i":I
    :cond_5
    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/contentcapture/ContentCaptureManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "x2"    # Ljava/lang/Runnable;

    .line 89
    invoke-direct {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->throwsSecurityException(Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledBySettingsLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Landroid/app/ActivityManagerInternal;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getAmInternal()Landroid/app/ActivityManagerInternal;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByPackageOwner(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->assertCalledByServiceLocked(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Lcom/android/server/infra/ServiceNameResolver;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/contentcapture/ContentCaptureManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;
    .param p1, "x1"    # I

    .line 89
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/contentcapture/ContentCaptureManagerService;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/contentcapture/ContentCaptureManagerService;

    .line 89
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    return-object v0
.end method

.method private assertCalledByServiceLocked(Ljava/lang/String;)V
    .locals 2
    .param p1, "methodName"    # Ljava/lang/String;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 458
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isCalledByServiceLocked(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 461
    return-void

    .line 459
    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "caller is not user\'s ContentCapture service"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private getAmInternal()Landroid/app/ActivityManagerInternal;
    .locals 2

    .line 448
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 449
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    if-nez v1, :cond_0

    .line 450
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    .line 452
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 453
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    return-object v0

    .line 452
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
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 465
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 466
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 467
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mServiceNameResolver:Lcom/android/server/infra/ServiceNameResolver;

    invoke-interface {v2, v0}, Lcom/android/server/infra/ServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v2

    .line 468
    .local v2, "serviceName":Ljava/lang/String;
    const-string v3, ": called by UID "

    const/4 v4, 0x0

    if-nez v2, :cond_0

    .line 469
    iget-object v5, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

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

    .line 471
    return v4

    .line 474
    :cond_0
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    .line 475
    .local v5, "serviceComponent":Landroid/content/ComponentName;
    if-nez v5, :cond_1

    .line 476
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ": invalid service name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    return v4

    .line 480
    :cond_1
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 482
    .local v6, "servicePackageName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 485
    .local v7, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v8
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 489
    .local v8, "serviceUid":I
    nop

    .line 490
    if-eq v1, v8, :cond_2

    .line 491
    iget-object v9, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

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

    .line 493
    return v4

    .line 496
    :cond_2
    const/4 v3, 0x1

    return v3

    .line 486
    .end local v8    # "serviceUid":I
    :catch_0
    move-exception v3

    .line 487
    .local v3, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    iget-object v8, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": could not verify UID for "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    return v4
.end method

.method private isDisabledBySettingsLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 250
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

    .line 255
    nop

    .line 254
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "content_capture_enabled"

    invoke-static {v0, v2, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 255
    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 256
    .local v0, "enabled":Z
    return v0
.end method

.method static synthetic lambda$destroySessions$1(Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .locals 0
    .param p0, "s"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 409
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    return-void
.end method

.method static synthetic lambda$listSessions$2(Ljava/util/ArrayList;Lcom/android/server/contentcapture/ContentCapturePerUserService;)V
    .locals 0
    .param p0, "sessions"    # Ljava/util/ArrayList;
    .param p1, "s"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 435
    invoke-virtual {p1, p0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->listSessionsLocked(Ljava/util/ArrayList;)V

    return-void
.end method

.method private onDeviceConfigChange(Landroid/provider/DeviceConfig$Properties;)V
    .locals 5
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 260
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

    .line 261
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

    .line 276
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring change on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    .end local v1    # "key":Ljava/lang/String;
    goto :goto_0

    .line 273
    .restart local v1    # "key":Ljava/lang/String;
    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setFineTuneParamsFromDeviceConfig()V

    .line 274
    return-void

    .line 266
    :pswitch_1
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setLoggingLevelFromDeviceConfig()V

    .line 267
    return-void

    .line 263
    :pswitch_2
    const/4 v0, 0x0

    invoke-virtual {p1, v1, v0}, Landroid/provider/DeviceConfig$Properties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDisabledByDeviceConfig(Ljava/lang/String;)V

    .line 264
    return-void

    .line 279
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

    .line 372
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 373
    :try_start_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    if-nez v1, :cond_0

    .line 374
    new-instance v1, Landroid/util/SparseBooleanArray;

    invoke-direct {v1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    .line 376
    :cond_0
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    .line 377
    .local v1, "alreadyEnabled":Z
    xor-int v3, p2, v1

    if-nez v3, :cond_2

    .line 378
    iget-boolean v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    if-eqz v2, :cond_1

    .line 379
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setContentCaptureFeatureEnabledForUser(): already "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_1
    monitor-exit v0

    return-void

    .line 383
    :cond_2
    if-eqz p2, :cond_3

    .line 384
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setContentCaptureFeatureEnabled(): enabling service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    goto :goto_0

    .line 388
    :cond_3
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setContentCaptureFeatureEnabled(): disabling service for user "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 392
    :goto_0
    if-eqz p2, :cond_5

    iget-boolean v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-eqz v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x0

    .line 393
    .local v2, "disabled":Z
    :cond_5
    :goto_1
    invoke-virtual {p0, p1, v2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 394
    nop

    .end local v1    # "alreadyEnabled":Z
    .end local v2    # "disabled":Z
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

.method private setDeviceConfigProperties()V
    .locals 2

    .line 328
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setLoggingLevelFromDeviceConfig()V

    .line 329
    invoke-direct {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setFineTuneParamsFromDeviceConfig()V

    .line 330
    const-string v0, "content_capture"

    const-string/jumbo v1, "service_explicitly_enabled"

    invoke-static {v0, v1}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "enabled":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setDisabledByDeviceConfig(Ljava/lang/String;)V

    .line 333
    return-void
.end method

.method private setDisabledByDeviceConfig(Ljava/lang/String;)V
    .locals 11
    .param p1, "explicitlyEnabled"    # Ljava/lang/String;

    .line 336
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v0, :cond_0

    .line 337
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDisabledByDeviceConfig(): explicitlyEnabled="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 340
    .local v0, "um":Landroid/os/UserManager;
    invoke-virtual {v0}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 344
    .local v1, "users":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/UserInfo;>;"
    if-eqz p1, :cond_1

    const-string v2, "false"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 345
    const/4 v2, 0x1

    .local v2, "newDisabledValue":Z
    goto :goto_0

    .line 347
    .end local v2    # "newDisabledValue":Z
    :cond_1
    const/4 v2, 0x0

    .line 350
    .restart local v2    # "newDisabledValue":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 351
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-ne v4, v2, :cond_3

    .line 352
    iget-boolean v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v4, :cond_2

    .line 353
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDisabledByDeviceConfig(): already "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :cond_2
    monitor-exit v3

    return-void

    .line 357
    :cond_3
    iput-boolean v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    .line 359
    iget-object v4, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDisabledByDeviceConfig(): set to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    const/4 v4, 0x0

    move v5, v4

    .local v5, "i":I
    :goto_1
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_7

    .line 361
    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/pm/UserInfo;

    iget v6, v6, Landroid/content/pm/UserInfo;->id:I

    .line 362
    .local v6, "userId":I
    iget-boolean v7, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-nez v7, :cond_5

    invoke-direct {p0, v6}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledBySettingsLocked(I)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    move v7, v4

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v7, 0x1

    .line 363
    .local v7, "disabled":Z
    :goto_3
    iget-object v8, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "setDisabledByDeviceConfig(): updating service for user "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " to "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 364
    if-eqz v7, :cond_6

    const-string v10, "\'disabled\'"

    goto :goto_4

    :cond_6
    const-string v10, "\'enabled\'"

    :goto_4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 363
    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    invoke-virtual {p0, v6, v7}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->updateCachedServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;

    .line 360
    nop

    .end local v6    # "userId":I
    .end local v7    # "disabled":Z
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 367
    .end local v5    # "i":I
    :cond_7
    monitor-exit v3

    .line 368
    return-void

    .line 367
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private setFineTuneParamsFromDeviceConfig()V
    .locals 4

    .line 282
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 283
    :try_start_0
    const-string v1, "content_capture"

    const-string/jumbo v2, "max_buffer_size"

    const/16 v3, 0x64

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    .line 287
    const-string v1, "content_capture"

    const-string v2, "idle_flush_frequency"

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    .line 291
    const-string v1, "content_capture"

    const-string/jumbo v2, "text_change_flush_frequency"

    const/16 v3, 0x3e8

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    .line 295
    const-string v1, "content_capture"

    const-string/jumbo v2, "log_history_size"

    const/16 v3, 0x14

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    .line 298
    const-string v1, "content_capture"

    const-string v2, "idle_unbind_timeout"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    .line 302
    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v1, :cond_0

    .line 303
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

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

    .line 310
    :cond_0
    monitor-exit v0

    .line 311
    return-void

    .line 310
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setLoggingLevelFromDeviceConfig()V
    .locals 3

    .line 314
    nop

    .line 317
    invoke-static {}, Landroid/view/contentcapture/ContentCaptureHelper;->getDefaultLoggingLevel()I

    move-result v0

    .line 314
    const-string v1, "content_capture"

    const-string/jumbo v2, "logging_level"

    invoke-static {v1, v2, v0}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    .line 318
    iget v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    invoke-static {v0}, Landroid/view/contentcapture/ContentCaptureHelper;->setLoggingLevel(I)V

    .line 319
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sVerbose:Z

    iput-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    .line 320
    sget-boolean v0, Landroid/view/contentcapture/ContentCaptureHelper;->sDebug:Z

    iput-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->debug:Z

    .line 321
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->verbose:Z

    if-eqz v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

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

    .line 325
    :cond_0
    return-void
.end method

.method private throwsSecurityException(Lcom/android/internal/os/IResultReceiver;Ljava/lang/Runnable;)Z
    .locals 5
    .param p1, "result"    # Lcom/android/internal/os/IResultReceiver;
    .param p2, "runable"    # Ljava/lang/Runnable;

    .line 508
    :try_start_0
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    const/4 v0, 0x0

    return v0

    .line 510
    :catch_0
    move-exception v0

    .line 512
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

    .line 515
    goto :goto_0

    .line 513
    :catch_1
    move-exception v1

    .line 514
    .local v1, "e2":Landroid/os/RemoteException;
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

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

    .line 517
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

    .line 399
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "destroySessions() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    .line 402
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 403
    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    .line 404
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 405
    .local v1, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-eqz v1, :cond_0

    .line 406
    invoke-virtual {v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroySessionsLocked()V

    .line 408
    .end local v1    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    :cond_0
    goto :goto_0

    .line 409
    :cond_1
    sget-object v1, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$jCIcV2sgwD7QUkN-c6yfPd58T_U;->INSTANCE:Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$jCIcV2sgwD7QUkN-c6yfPd58T_U;

    invoke-virtual {p0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 411
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, v0, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 417
    goto :goto_1

    .line 415
    :catch_0
    move-exception v0

    .line 418
    :goto_1
    return-void

    .line 411
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

    .line 522
    invoke-super {p0, p1, p2}, Lcom/android/server/infra/AbstractMasterSystemService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 524
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 526
    .local v0, "prefix2":Ljava/lang/String;
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Users disabled by Settings: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledBySettings:Landroid/util/SparseBooleanArray;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 527
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "DeviceConfig Settings: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "disabled: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    .line 529
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "loggingLevel: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLoggingLevel:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 530
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "maxBufferSize: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgMaxBufferSize:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 531
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "idleFlushingFrequencyMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 532
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 533
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "textChangeFlushingFrequencyMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 534
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgTextChangeFlushingFrequencyMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 535
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v1, "logHistorySize: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgLogHistorySize:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 536
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "idleUnbindTimeoutMs: "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 537
    iget v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDevCfgIdleUnbindTimeoutMs:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    .line 538
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v1, "Global Options:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 539
    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 540
    return-void
.end method

.method protected enforceCallingPermissionForManagement()V
    .locals 3

    .line 215
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    const-string v2, "android.permission.MANAGE_CONTENT_CAPTURE"

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    return-void
.end method

.method protected getMaximumTemporaryServiceDurationMs()I
    .locals 1

    .line 220
    const v0, 0x1d4c0

    return v0
.end method

.method protected isDisabledLocked(I)Z
    .locals 1
    .param p1, "userId"    # I

    .line 245
    iget-boolean v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mDisabledByDeviceConfig:Z

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isDisabledBySettingsLocked(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 246
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

    .line 245
    :goto_1
    return v0
.end method

.method public synthetic lambda$new$0$ContentCaptureManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0
    .param p1, "properties"    # Landroid/provider/DeviceConfig$Properties;

    .line 137
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->onDeviceConfigChange(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method

.method listSessions(ILcom/android/internal/os/IResultReceiver;)V
    .locals 4
    .param p1, "userId"    # I
    .param p2, "receiver"    # Lcom/android/internal/os/IResultReceiver;

    .line 422
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "listSessions() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    invoke-virtual {p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->enforceCallingPermissionForManagement()V

    .line 425
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 426
    .local v0, "resultData":Landroid/os/Bundle;
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 428
    .local v1, "sessions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 429
    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    .line 430
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 431
    .local v3, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-eqz v3, :cond_0

    .line 432
    invoke-virtual {v3, v1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->listSessionsLocked(Ljava/util/ArrayList;)V

    .line 434
    .end local v3    # "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    :cond_0
    goto :goto_0

    .line 437
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 435
    :cond_1
    new-instance v3, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$17qcaUpUsTMt5exVwDnmTmyrpJw;

    invoke-direct {v3, v1}, Lcom/android/server/contentcapture/-$$Lambda$ContentCaptureManagerService$17qcaUpUsTMt5exVwDnmTmyrpJw;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    .line 437
    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 439
    const-string/jumbo v2, "sessions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 441
    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p2, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 444
    goto :goto_1

    .line 442
    :catch_0
    move-exception v2

    .line 445
    :goto_1
    return-void

    .line 437
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

    .line 173
    new-instance v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLock:Ljava/lang/Object;

    invoke-direct {v0, p0, v1, p2, p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;Ljava/lang/Object;ZI)V

    return-object v0
.end method

.method protected bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    .line 89
    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->newServiceLocked(IZ)Lcom/android/server/contentcapture/ContentCapturePerUserService;

    move-result-object p1

    return-object p1
.end method

.method protected onServiceNameChanged(ILjava/lang/String;Z)V
    .locals 1
    .param p1, "userId"    # I
    .param p2, "serviceName"    # Ljava/lang/String;
    .param p3, "isTemporary"    # Z

    .line 208
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mGlobalContentCaptureOptions:Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;->access$100(Lcom/android/server/contentcapture/ContentCaptureManagerService$GlobalContentCaptureOptions;ILjava/lang/String;Z)V

    .line 210
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractMasterSystemService;->onServiceNameChanged(ILjava/lang/String;Z)V

    .line 211
    return-void
.end method

.method protected onServicePackageUpdatedLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 199
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 200
    .local v0, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onPackageUpdatedLocked()V

    .line 203
    :cond_0
    return-void
.end method

.method protected onServicePackageUpdatingLocked(I)V
    .locals 1
    .param p1, "userId"    # I

    .line 191
    invoke-virtual {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    .line 192
    .local v0, "service":Lcom/android/server/contentcapture/ContentCapturePerUserService;
    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {v0}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->onPackageUpdatingLocked()V

    .line 195
    :cond_0
    return-void
.end method

.method protected onServiceRemoved(Lcom/android/server/contentcapture/ContentCapturePerUserService;I)V
    .locals 0
    .param p1, "service"    # Lcom/android/server/contentcapture/ContentCapturePerUserService;
    .param p2, "userId"    # I

    .line 186
    invoke-virtual {p1}, Lcom/android/server/contentcapture/ContentCapturePerUserService;->destroyLocked()V

    .line 187
    return-void
.end method

.method protected bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0

    .line 89
    check-cast p1, Lcom/android/server/contentcapture/ContentCapturePerUserService;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->onServiceRemoved(Lcom/android/server/contentcapture/ContentCapturePerUserService;I)V

    return-void
.end method

.method protected onSettingsChanged(ILjava/lang/String;)V
    .locals 3
    .param p1, "userId"    # I
    .param p2, "property"    # Ljava/lang/String;

    .line 233
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

    .line 239
    iget-object v0, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mTag:Ljava/lang/String;

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

    .line 241
    return-void

    .line 235
    :cond_2
    nop

    .line 236
    invoke-direct {p0, p1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->isEnabledBySettings(I)Z

    move-result v0

    .line 235
    invoke-direct {p0, p1, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->setContentCaptureFeatureEnabledBySettingsForUser(IZ)V

    .line 237
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 178
    new-instance v0, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/contentcapture/ContentCaptureManagerService$ContentCaptureManagerServiceStub;-><init>(Lcom/android/server/contentcapture/ContentCaptureManagerService;)V

    const-string v1, "content_capture"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 180
    const-class v0, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    iget-object v1, p0, Lcom/android/server/contentcapture/ContentCaptureManagerService;->mLocalService:Lcom/android/server/contentcapture/ContentCaptureManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/contentcapture/ContentCaptureManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 181
    return-void
.end method

.method protected registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3
    .param p1, "resolver"    # Landroid/content/ContentResolver;
    .param p2, "observer"    # Landroid/database/ContentObserver;

    .line 226
    const-string v0, "content_capture_enabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 229
    return-void
.end method
