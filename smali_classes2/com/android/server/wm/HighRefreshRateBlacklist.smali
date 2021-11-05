.class Lcom/android/server/wm/HighRefreshRateBlacklist;
.super Ljava/lang/Object;
.source "HighRefreshRateBlacklist.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertiesChangedListener;
    }
.end annotation


# instance fields
.field private final mBlacklistedPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultBlacklist:[Ljava/lang/String;

.field private mDeviceConfig:Lcom/android/server/wm/utils/DeviceConfigInterface;

.field private mListener:Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertiesChangedListener;

.field private final mLock:Ljava/lang/Object;


# direct methods
.method constructor <init>(Landroid/content/res/Resources;Lcom/android/server/wm/utils/DeviceConfigInterface;)V
    .locals 3
    .param p1, "r"    # Landroid/content/res/Resources;
    .param p2, "deviceConfig"    # Lcom/android/server/wm/utils/DeviceConfigInterface;

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    .line 42
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mLock:Ljava/lang/Object;

    .line 45
    new-instance v0, Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertiesChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertiesChangedListener;-><init>(Lcom/android/server/wm/HighRefreshRateBlacklist;Lcom/android/server/wm/HighRefreshRateBlacklist$1;)V

    iput-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mListener:Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertiesChangedListener;

    .line 53
    const v0, 0x107004d

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mDefaultBlacklist:[Ljava/lang/String;

    .line 54
    iput-object p2, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mDeviceConfig:Lcom/android/server/wm/utils/DeviceConfigInterface;

    .line 55
    nop

    .line 56
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mListener:Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertiesChangedListener;

    .line 55
    const-string v2, "display_manager"

    invoke-interface {p2, v2, v0, v1}, Lcom/android/server/wm/utils/DeviceConfigInterface;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 57
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mDeviceConfig:Lcom/android/server/wm/utils/DeviceConfigInterface;

    const-string v1, "high_refresh_rate_blacklist"

    invoke-interface {v0, v2, v1}, Lcom/android/server/wm/utils/DeviceConfigInterface;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "property":Ljava/lang/String;
    invoke-direct {p0, v0}, Lcom/android/server/wm/HighRefreshRateBlacklist;->updateBlacklist(Ljava/lang/String;)V

    .line 60
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wm/HighRefreshRateBlacklist;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/wm/HighRefreshRateBlacklist;
    .param p1, "x1"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0, p1}, Lcom/android/server/wm/HighRefreshRateBlacklist;->updateBlacklist(Ljava/lang/String;)V

    return-void
.end method

.method static create(Landroid/content/res/Resources;)Lcom/android/server/wm/HighRefreshRateBlacklist;
    .locals 2
    .param p0, "r"    # Landroid/content/res/Resources;

    .line 48
    new-instance v0, Lcom/android/server/wm/HighRefreshRateBlacklist;

    sget-object v1, Lcom/android/server/wm/utils/DeviceConfigInterface;->REAL:Lcom/android/server/wm/utils/DeviceConfigInterface;

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/HighRefreshRateBlacklist;-><init>(Landroid/content/res/Resources;Lcom/android/server/wm/utils/DeviceConfigInterface;)V

    return-object v0
.end method

.method private updateBlacklist(Ljava/lang/String;)V
    .locals 7
    .param p1, "property"    # Ljava/lang/String;

    .line 63
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 64
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 65
    const/4 v1, 0x0

    if-eqz p1, :cond_2

    .line 66
    const-string v2, ","

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "packages":[Ljava/lang/String;
    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 68
    .local v4, "pkg":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    .line 69
    .local v5, "pkgName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 70
    iget-object v6, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v6, v5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 67
    .end local v4    # "pkg":Ljava/lang/String;
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "packages":[Ljava/lang/String;
    :cond_1
    goto :goto_2

    .line 76
    :cond_2
    iget-object v2, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mDefaultBlacklist:[Ljava/lang/String;

    array-length v3, v2

    :goto_1
    if-ge v1, v3, :cond_3

    aget-object v4, v2, v1

    .line 77
    .restart local v4    # "pkg":Ljava/lang/String;
    iget-object v5, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 76
    nop

    .end local v4    # "pkg":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 80
    :cond_3
    :goto_2
    monitor-exit v0

    .line 81
    return-void

    .line 80
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method dispose()V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mDeviceConfig:Lcom/android/server/wm/utils/DeviceConfigInterface;

    iget-object v1, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mListener:Lcom/android/server/wm/HighRefreshRateBlacklist$OnPropertiesChangedListener;

    invoke-interface {v0, v1}, Lcom/android/server/wm/utils/DeviceConfigInterface;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mDeviceConfig:Lcom/android/server/wm/utils/DeviceConfigInterface;

    .line 103
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 104
    return-void
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 5
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 89
    const-string v0, "High Refresh Rate Blacklist"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 90
    const-string v0, "  Packages:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 92
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 93
    .local v2, "pkg":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .end local v2    # "pkg":Ljava/lang/String;
    goto :goto_0

    .line 95
    :cond_0
    monitor-exit v0

    .line 96
    return-void

    .line 95
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method isBlacklisted(Ljava/lang/String;)Z
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 84
    iget-object v0, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 85
    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/HighRefreshRateBlacklist;->mBlacklistedPackages:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v1

    monitor-exit v0

    return v1

    .line 86
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
