.class final Lcom/android/server/media/MediaRoute2ProviderWatcher;
.super Ljava/lang/Object;
.source "MediaRoute2ProviderWatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "MR2ProviderWatcher"


# instance fields
.field private final mCallback:Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mProxies:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/media/MediaRoute2ProviderServiceProxy;",
            ">;"
        }
    .end annotation
.end field

.field private mRunning:Z

.field private final mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 43
    const-string v0, "MR2ProviderWatcher"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->DEBUG:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;
    .param p3, "handler"    # Landroid/os/Handler;
    .param p4, "userId"    # I

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    .line 163
    new-instance v0, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;

    invoke-direct {v0, p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher$1;-><init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    .line 56
    iput-object p1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mContext:Landroid/content/Context;

    .line 57
    iput-object p2, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mCallback:Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;

    .line 58
    iput-object p3, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Landroid/os/Handler;

    .line 59
    iput p4, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mUserId:I

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 61
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 41
    sget-boolean v0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/media/MediaRoute2ProviderWatcher;

    .line 41
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->postScanPackagesIfNeeded()V

    return-void
.end method

.method private findProvider(Ljava/lang/String;Ljava/lang/String;)I
    .locals 4
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 148
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 149
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 150
    .local v2, "proxy":Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    invoke-virtual {v2, p1, p2}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    return v1

    .line 148
    .end local v2    # "proxy":Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 154
    .end local v1    # "i":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static synthetic lambda$3cuM1Rvi-5yUvcYL_p9NxdTvpDk(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->scanPackages()V

    return-void
.end method

.method private postScanPackagesIfNeeded()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderWatcher$3cuM1Rvi-5yUvcYL_p9NxdTvpDk;

    invoke-direct {v1, p0}, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderWatcher$3cuM1Rvi-5yUvcYL_p9NxdTvpDk;-><init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderWatcher$3cuM1Rvi-5yUvcYL_p9NxdTvpDk;

    invoke-direct {v1, p0}, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderWatcher$3cuM1Rvi-5yUvcYL_p9NxdTvpDk;-><init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 161
    :cond_0
    return-void
.end method

.method private scanPackages()V
    .locals 11

    .line 105
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mRunning:Z

    if-nez v0, :cond_0

    .line 106
    return-void

    .line 111
    :cond_0
    const/4 v0, 0x0

    .line 112
    .local v0, "targetIndex":I
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.media.MediaRoute2ProviderService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 113
    .local v1, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v3, 0x0

    iget v4, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mUserId:I

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 115
    .local v3, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 116
    .local v4, "serviceInfo":Landroid/content/pm/ServiceInfo;
    if-eqz v4, :cond_2

    .line 117
    iget-object v5, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {p0, v5, v6}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->findProvider(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 118
    .local v5, "sourceIndex":I
    if-gez v5, :cond_1

    .line 119
    new-instance v6, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    iget-object v7, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v4, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v4, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget v9, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mUserId:I

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;-><init>(Landroid/content/Context;Landroid/content/ComponentName;I)V

    .line 123
    .local v6, "proxy":Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    invoke-virtual {v6}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->start()V

    .line 124
    iget-object v7, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x1

    .end local v0    # "targetIndex":I
    .local v8, "targetIndex":I
    invoke-virtual {v7, v0, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 125
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mCallback:Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;

    invoke-interface {v0, v6}, Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;->onAddProviderService(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V

    .line 126
    .end local v6    # "proxy":Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    move v0, v8

    goto :goto_1

    .end local v8    # "targetIndex":I
    .restart local v0    # "targetIndex":I
    :cond_1
    if-lt v5, v0, :cond_2

    .line 127
    iget-object v6, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 128
    .restart local v6    # "proxy":Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    invoke-virtual {v6}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->start()V

    .line 129
    invoke-virtual {v6}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->rebindIfDisconnected()V

    .line 130
    iget-object v7, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    add-int/lit8 v8, v0, 0x1

    .end local v0    # "targetIndex":I
    .restart local v8    # "targetIndex":I
    invoke-static {v7, v5, v0}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v8

    .line 133
    .end local v3    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v4    # "serviceInfo":Landroid/content/pm/ServiceInfo;
    .end local v5    # "sourceIndex":I
    .end local v6    # "proxy":Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    .end local v8    # "targetIndex":I
    .restart local v0    # "targetIndex":I
    :cond_2
    :goto_1
    goto :goto_0

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_4

    .line 137
    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_2
    if-lt v2, v0, :cond_4

    .line 138
    iget-object v3, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    .line 139
    .local v3, "proxy":Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    iget-object v4, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mCallback:Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;

    invoke-interface {v4, v3}, Lcom/android/server/media/MediaRoute2ProviderWatcher$Callback;->onRemoveProviderService(Lcom/android/server/media/MediaRoute2ProviderServiceProxy;)V

    .line 140
    iget-object v4, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 141
    invoke-virtual {v3}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->stop()V

    .line 137
    .end local v3    # "proxy":Lcom/android/server/media/MediaRoute2ProviderServiceProxy;
    add-int/lit8 v2, v2, -0x1

    goto :goto_2

    .line 144
    .end local v2    # "i":I
    :cond_4
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Watcher"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 66
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mProxies.size()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 68
    return-void
.end method

.method public start()V
    .locals 7

    .line 71
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mRunning:Z

    if-nez v0, :cond_0

    .line 72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mRunning:Z

    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 78
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 79
    const-string v1, "android.intent.action.PACKAGE_RESTARTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 81
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Landroid/os/Handler;

    move-object v4, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 86
    invoke-direct {p0}, Lcom/android/server/media/MediaRoute2ProviderWatcher;->postScanPackagesIfNeeded()V

    .line 88
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 91
    iget-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mRunning:Z

    if-eqz v0, :cond_0

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mRunning:Z

    .line 94
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mScanPackagesReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 95
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderWatcher$3cuM1Rvi-5yUvcYL_p9NxdTvpDk;

    invoke-direct {v1, p0}, Lcom/android/server/media/-$$Lambda$MediaRoute2ProviderWatcher$3cuM1Rvi-5yUvcYL_p9NxdTvpDk;-><init>(Lcom/android/server/media/MediaRoute2ProviderWatcher;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 98
    iget-object v0, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/server/media/MediaRoute2ProviderWatcher;->mProxies:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;

    invoke-virtual {v1}, Lcom/android/server/media/MediaRoute2ProviderServiceProxy;->stop()V

    .line 98
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 102
    .end local v0    # "i":I
    :cond_0
    return-void
.end method
