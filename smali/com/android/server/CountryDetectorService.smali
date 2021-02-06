.class public Lcom/android/server/CountryDetectorService;
.super Landroid/location/ICountryDetector$Stub;
.source "CountryDetectorService.java"


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

.field private mCountryDetector:Lcom/android/server/location/CountryDetectorBase;

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

    .line 105
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 106
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 110
    invoke-direct {p0}, Landroid/location/ICountryDetector$Stub;-><init>()V

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    .line 112
    iput-object p1, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    .line 113
    iput-object p2, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/CountryDetectorService;Landroid/os/IBinder;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/CountryDetectorService;
    .param p1, "x1"    # Landroid/os/IBinder;

    .line 53
    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    return-void
.end method

.method private addListener(Landroid/location/ICountryListener;)V
    .locals 5
    .param p1, "listener"    # Landroid/location/ICountryListener;

    .line 148
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 149
    :try_start_0
    new-instance v1, Lcom/android/server/CountryDetectorService$Receiver;

    invoke-direct {v1, p0, p1}, Lcom/android/server/CountryDetectorService$Receiver;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/ICountryListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    .local v1, "r":Lcom/android/server/CountryDetectorService$Receiver;
    :try_start_1
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 152
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 154
    const-string v2, "CountryDetector"

    const-string v3, "The first listener is added"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    invoke-virtual {p0, v2}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    :cond_0
    goto :goto_0

    .line 157
    :catch_0
    move-exception v2

    .line 158
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "CountryDetector"

    const-string/jumbo v4, "linkToDeath failed:"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    .end local v1    # "r":Lcom/android/server/CountryDetectorService$Receiver;
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    monitor-exit v0

    .line 161
    return-void

    .line 160
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private loadCustomCountryDetectorIfAvailable(Ljava/lang/String;)Lcom/android/server/location/CountryDetectorBase;
    .locals 7
    .param p1, "customCountryClass"    # Ljava/lang/String;

    .line 225
    const/4 v0, 0x0

    .line 227
    .local v0, "customCountryDetector":Lcom/android/server/location/CountryDetectorBase;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Using custom country detector class: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "CountryDetector"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-class v3, Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 230
    invoke-virtual {v1, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    aput-object v4, v3, v6

    invoke-virtual {v1, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/CountryDetectorBase;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 235
    goto :goto_0

    .line 232
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    const-string v3, "Could not instantiate the custom country detector class"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :goto_0
    return-object v0
.end method

.method private removeListener(Landroid/os/IBinder;)V
    .locals 3
    .param p1, "key"    # Landroid/os/IBinder;

    .line 164
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/CountryDetectorService;->setCountryListener(Landroid/location/CountryListener;)V

    .line 168
    const-string v1, "CountryDetector"

    const-string v2, "No listener is left"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    :cond_0
    monitor-exit v0

    .line 171
    return-void

    .line 170
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

    .line 130
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 133
    invoke-direct {p0, p1}, Lcom/android/server/CountryDetectorService;->addListener(Landroid/location/ICountryListener;)V

    .line 134
    return-void

    .line 131
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method public detectCountry()Landroid/location/Country;
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-nez v0, :cond_0

    .line 119
    const/4 v0, 0x0

    return-object v0

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0}, Lcom/android/server/location/CountryDetectorBase;->detectCountry()Landroid/location/Country;

    move-result-object v0

    return-object v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "fout"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 243
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    const-string v1, "CountryDetector"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 244
    :cond_0
    return-void
.end method

.method getCountryDetector()Lcom/android/server/location/CountryDetectorBase;
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    return-object v0
.end method

.method initialize()V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    const v1, 0x10401f1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 198
    .local v0, "customCountryClass":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 199
    invoke-direct {p0, v0}, Lcom/android/server/CountryDetectorService;->loadCustomCountryDetectorIfAvailable(Ljava/lang/String;)Lcom/android/server/location/CountryDetectorBase;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    .line 202
    :cond_0
    iget-object v1, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    if-nez v1, :cond_1

    .line 203
    const-string v1, "CountryDetector"

    const-string v2, "Using default country detector"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v1, Lcom/android/server/location/ComprehensiveCountryDetector;

    iget-object v2, p0, Lcom/android/server/CountryDetectorService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/location/ComprehensiveCountryDetector;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    .line 206
    :cond_1
    new-instance v1, Lcom/android/server/-$$Lambda$CountryDetectorService$YZWlE4qqoDuiwnkSrasi91p2-Tk;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$CountryDetectorService$YZWlE4qqoDuiwnkSrasi91p2-Tk;-><init>(Lcom/android/server/CountryDetectorService;)V

    iput-object v1, p0, Lcom/android/server/CountryDetectorService;->mLocationBasedDetectorListener:Landroid/location/CountryListener;

    .line 207
    return-void
.end method

.method isSystemReady()Z
    .locals 1

    .line 220
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    return v0
.end method

.method public synthetic lambda$initialize$1$CountryDetectorService(Landroid/location/Country;)V
    .locals 0
    .param p1, "country"    # Landroid/location/Country;

    .line 206
    invoke-virtual {p0, p1}, Lcom/android/server/CountryDetectorService;->notifyReceivers(Landroid/location/Country;)V

    return-void
.end method

.method public synthetic lambda$initialize$2$CountryDetectorService(Landroid/location/Country;)V
    .locals 2
    .param p1, "country"    # Landroid/location/Country;

    .line 206
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$CountryDetectorService$fFSTHORponDwFf2wlaJLUdUhirQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$CountryDetectorService$fFSTHORponDwFf2wlaJLUdUhirQ;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/Country;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$setCountryListener$3$CountryDetectorService(Landroid/location/CountryListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/location/CountryListener;

    .line 210
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mCountryDetector:Lcom/android/server/location/CountryDetectorBase;

    invoke-virtual {v0, p1}, Lcom/android/server/location/CountryDetectorBase;->setCountryListener(Landroid/location/CountryListener;)V

    return-void
.end method

.method public synthetic lambda$systemRunning$0$CountryDetectorService()V
    .locals 1

    .line 190
    invoke-virtual {p0}, Lcom/android/server/CountryDetectorService;->initialize()V

    .line 191
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    .line 192
    return-void
.end method

.method protected notifyReceivers(Landroid/location/Country;)V
    .locals 6
    .param p1, "country"    # Landroid/location/Country;

    .line 174
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mReceivers:Ljava/util/HashMap;

    monitor-enter v0

    .line 175
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

    .line 177
    .local v2, "receiver":Lcom/android/server/CountryDetectorService$Receiver;
    :try_start_1
    invoke-virtual {v2}, Lcom/android/server/CountryDetectorService$Receiver;->getListener()Landroid/location/ICountryListener;

    move-result-object v3

    invoke-interface {v3, p1}, Landroid/location/ICountryListener;->onCountryDetected(Landroid/location/Country;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    goto :goto_1

    .line 178
    :catch_0
    move-exception v3

    .line 180
    .local v3, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v4, "CountryDetector"

    const-string/jumbo v5, "notifyReceivers failed:"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    .end local v2    # "receiver":Lcom/android/server/CountryDetectorService$Receiver;
    .end local v3    # "e":Landroid/os/RemoteException;
    :goto_1
    goto :goto_0

    .line 183
    :cond_0
    monitor-exit v0

    .line 184
    return-void

    .line 183
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

    .line 141
    iget-boolean v0, p0, Lcom/android/server/CountryDetectorService;->mSystemReady:Z

    if-eqz v0, :cond_0

    .line 144
    invoke-interface {p1}, Landroid/location/ICountryListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/CountryDetectorService;->removeListener(Landroid/os/IBinder;)V

    .line 145
    return-void

    .line 142
    :cond_0
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    throw v0
.end method

.method protected setCountryListener(Landroid/location/CountryListener;)V
    .locals 2
    .param p1, "listener"    # Landroid/location/CountryListener;

    .line 210
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$CountryDetectorService$UdoYpHRrhGb-PF6QTwQ4SluOe20;

    invoke-direct {v1, p0, p1}, Lcom/android/server/-$$Lambda$CountryDetectorService$UdoYpHRrhGb-PF6QTwQ4SluOe20;-><init>(Lcom/android/server/CountryDetectorService;Landroid/location/CountryListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 211
    return-void
.end method

.method systemRunning()V
    .locals 2

    .line 188
    iget-object v0, p0, Lcom/android/server/CountryDetectorService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/-$$Lambda$CountryDetectorService$ESi5ICoEixGJHWdY67G_J38VrJI;

    invoke-direct {v1, p0}, Lcom/android/server/-$$Lambda$CountryDetectorService$ESi5ICoEixGJHWdY67G_J38VrJI;-><init>(Lcom/android/server/CountryDetectorService;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 193
    return-void
.end method
