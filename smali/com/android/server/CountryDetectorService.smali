.class public Lcom/android/server/CountryDetectorService;
.super Landroid/location/ICountryDetector$Stub;
.source "CountryDetectorService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/CountryDetectorService$Receiver;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "CountryDetector"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

.field private mHandler:Landroid/os/Handler;

.field private mLocationBasedDetectorListener:Landroid/location/CountryListener;

.field private final mReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/os/IBinder;",
            "Lcom/android/server/CountryDetectorService$Receiver;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 95
    invoke-direct {p0}, Landroid/location/ICountryDetector$Stub;-><init>()V

    .line 96
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 97
    iput-object p1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    .line 98
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/CountryDetectorService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/CountryDetectorService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 45
    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/CountryDetectorService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/CountryDetectorService;

    .line 45
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/CountryDetectorService;)Lcom/android/server/location/ComprehensiveCountryDetector;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/CountryDetectorService;

    .line 45
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    return-object v0
.end method

.method private addListener(Landroid/location/ICountryListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/ICountryListener;

    .line 132
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 133
    :try_start_0
    new-instance v1, Lcom/android/server/CountryDetectorService$Receiver;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$Receiver;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/ICountryListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    .local v1, "r":Lcom/android/server/CountryDetectorService$Receiver;
    :try_start_1
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 136
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 138
    const-string v2, "CountryDetector"

    const-string v3, "The first listener is added"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    invoke-virtual {p0, v2}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 143
    :cond_0
    goto :goto_0

    .line 141
    :catch_0
    move-exception v2

    .line 142
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CountryDetector"

    const-string/jumbo v4, "linkToDeath failed:"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    .end local v1    # "r":Lcom/android/server/CountryDetectorService$Receiver;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 145
    return-void

    .line 144
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private initialize()V
    .locals 2

    .line 177
    new-instance v0, Lcom/android/server/location/ComprehensiveCountryDetector;

    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/location/ComprehensiveCountryDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    .line 178
    new-instance v0, Lcom/android/server/CountryDetectorService$1;

    invoke-direct {v0, p0}, Lcom/android/server/CountryDetectorService$1;-><init>(Lcom/android/server/CountryDetectorService;)V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    .line 187
    return-void
.end method

.method private removeListener(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "key"    # Landroid/os/IBinder;

    .line 148
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 149
    :try_start_0
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 151
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V

    .line 152
    const-string v1, "CountryDetector"

    const-string v2, "No listener is left"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    monitor-exit v0

    .line 155
    return-void

    .line 154
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public addCountryListener(Landroid/location/ICountryListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/ICountryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 114
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->addListener(Landroid/location/ICountryListener;)V

    .line 118
    return-void

    .line 115
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public detectCountry()Landroid/location/Country;
    .locals 1

    .line 102
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 103
    const/4 v0, 0x0

    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/ComprehensiveCountryDetector;

    invoke-virtual {v0}, Lcom/android/server/location/ComprehensiveCountryDetector;->detectCountry()Landroid/location/Country;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 212
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "CountryDetector"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 213
    :cond_0
    return-void
.end method

.method isSystemReady()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    return v0
.end method

.method protected notifyReceivers(Landroid/location/Country;)V
    .locals 6
    .param p1, "country"    # Landroid/location/Country;

    .line 159
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 160
    :try_start_0
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/CountryDetectorService$Receiver;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 162
    .local v2, "receiver":Lcom/android/server/CountryDetectorService$Receiver;
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/CountryDetectorService$Receiver;->getListener()Landroid/location/ICountryListener;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/location/ICountryListener;->onCountryDetected(Landroid/location/Country;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    goto :goto_1

    .line 163
    :catch_0
    move-exception v3

    .line 165
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "CountryDetector"

    const-string/jumbo v5, "notifyReceivers failed:"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 167
    .end local v2    # "receiver":Lcom/android/server/CountryDetectorService$Receiver;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 168
    :cond_0
    monitor-exit v0

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public removeCountryListener(Landroid/location/ICountryListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/ICountryListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 125
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 128
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    .line 129
    return-void

    .line 126
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public run()V
    .locals 1

    .line 190
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    .line 191
    invoke-direct {p0}, Lcom/android/server/CountryDetectorService;->initialize()V

    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    .line 193
    return-void
.end method

.method protected setCountryListener(Landroid/location/CountryListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/CountryListener;

    .line 196
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/CountryDetectorService$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$2;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 202
    return-void
.end method

.method systemRunning()V
    .locals 1

    .line 173
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method
