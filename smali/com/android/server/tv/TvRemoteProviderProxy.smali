.class final Lcom/android/server/tv/TvRemoteProviderProxy;
.super Ljava/lang/Object;
.source "TvRemoteProviderProxy.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/tv/TvRemoteProviderProxy$RemoteServiceInputProvider;,
        Lcom/android/server/tv/TvRemoteProviderProxy$Connection;,
        Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_KEY:Z = false

.field protected static final SERVICE_INTERFACE:Ljava/lang/String; = "com.android.media.tv.remoteprovider.TvRemoteProvider"

.field private static final TAG:Ljava/lang/String; = "TvRemoteProvProxy"


# instance fields
.field private mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

.field private mBound:Z

.field private final mComponentName:Landroid/content/ComponentName;

.field private mConnectionReady:Z

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mLock:Ljava/lang/Object;

.field private mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

.field private mRunning:Z

.field private final mUid:I

.field private final mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    const-string v0, "TvRemoteProvProxy"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "userId"    # I
    .param p4, "uid"    # I

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    .line 72
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mContext:Landroid/content/Context;

    .line 73
    iput-object p2, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 74
    iput p3, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUserId:I

    .line 75
    iput p4, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I

    .line 76
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mHandler:Landroid/os/Handler;

    .line 77
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/tv/TvRemoteProviderProxy;Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p1, "x1"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy;->onConnectionReady(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/tv/TvRemoteProviderProxy;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 39
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/tv/TvRemoteProviderProxy;Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderProxy;
    .param p1, "x1"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 39
    invoke-direct {p0, p1}, Lcom/android/server/tv/TvRemoteProviderProxy;->onConnectionDied(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/tv/TvRemoteProviderProxy;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 39
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 39
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/tv/TvRemoteProviderProxy;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 39
    iget v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUid:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/tv/TvRemoteProviderProxy;)Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 39
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    return-object v0
.end method

.method private bind()V
    .locals 7

    .line 141
    const-string v0, ": Bind failed"

    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-nez v1, :cond_2

    .line 142
    sget-boolean v1, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    const-string v2, "TvRemoteProvProxy"

    if-eqz v1, :cond_0

    .line 143
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Binding"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.android.media.tv.remoteprovider.TvRemoteProvider"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 147
    .local v1, "service":Landroid/content/Intent;
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 149
    :try_start_0
    iget-object v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mContext:Landroid/content/Context;

    const v4, 0x4000001

    new-instance v5, Landroid/os/UserHandle;

    iget v6, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUserId:I

    invoke-direct {v5, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v3, v1, p0, v4, v5}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    .line 152
    iget-boolean v3, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-nez v3, :cond_1

    sget-boolean v3, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v3, :cond_1

    .line 153
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :cond_1
    goto :goto_0

    .line 155
    :catch_0
    move-exception v3

    .line 156
    .local v3, "ex":Ljava/lang/SecurityException;
    sget-boolean v4, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v4, :cond_2

    .line 157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 161
    .end local v1    # "service":Landroid/content/Intent;
    .end local v3    # "ex":Ljava/lang/SecurityException;
    :cond_2
    :goto_0
    return-void
.end method

.method private disconnect()V
    .locals 2

    .line 230
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 231
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-eqz v1, :cond_0

    .line 232
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnectionReady:Z

    .line 233
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-virtual {v1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->dispose()V

    .line 234
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 236
    :cond_0
    monitor-exit v0

    .line 237
    return-void

    .line 236
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onConnectionDied(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .locals 2
    .param p1, "connection"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 223
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-ne v0, p1, :cond_1

    .line 224
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Service connection died"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvRemoteProvProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    :cond_0
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->disconnect()V

    .line 227
    :cond_1
    return-void
.end method

.method private onConnectionReady(Lcom/android/server/tv/TvRemoteProviderProxy$Connection;)V
    .locals 3
    .param p1, "connection"    # Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 213
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 214
    :try_start_0
    sget-boolean v1, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "TvRemoteProvProxy"

    const-string/jumbo v2, "onConnectionReady"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    :cond_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-ne v1, p1, :cond_2

    .line 216
    sget-boolean v1, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "TvRemoteProvProxy"

    const-string/jumbo v2, "mConnectionReady = true"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnectionReady:Z

    .line 219
    :cond_2
    monitor-exit v0

    .line 220
    return-void

    .line 219
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private shouldBind()Z
    .locals 1

    .line 137
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    return v0
.end method

.method private unbind()V
    .locals 2

    .line 164
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-eqz v0, :cond_1

    .line 165
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 166
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Unbinding"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvRemoteProvProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    .line 170
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->disconnect()V

    .line 171
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 173
    :cond_1
    return-void
.end method

.method private updateBinding()V
    .locals 1

    .line 129
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->shouldBind()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->bind()V

    goto :goto_0

    .line 132
    :cond_0
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->unbind()V

    .line 134
    :goto_0
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Proxy"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mUserId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mRunning="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mBound="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mActiveConnection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  mConnectionReady="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnectionReady:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public hasComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "className"    # Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 94
    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 93
    :goto_0
    return v0
.end method

.method public inputBridgeConnected(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .line 241
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 242
    :try_start_0
    sget-boolean v1, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "TvRemoteProvProxy"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": inputBridgeConnected token: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mConnectionReady:Z

    if-eqz v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-virtual {v1, p1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->onInputBridgeConnected(Landroid/os/IBinder;)V

    .line 246
    :cond_1
    monitor-exit v0

    .line 247
    return-void

    .line 246
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .line 177
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": onServiceConnected()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvRemoteProvProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mBound:Z

    if-eqz v0, :cond_4

    .line 182
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->disconnect()V

    .line 184
    invoke-static {p2}, Landroid/media/tv/ITvRemoteProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/tv/ITvRemoteProvider;

    move-result-object v0

    .line 185
    .local v0, "provider":Landroid/media/tv/ITvRemoteProvider;
    if-eqz v0, :cond_3

    .line 186
    new-instance v1, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    invoke-direct {v1, p0, v0}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;-><init>(Lcom/android/server/tv/TvRemoteProviderProxy;Landroid/media/tv/ITvRemoteProvider;)V

    .line 187
    .local v1, "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    invoke-virtual {v1}, Lcom/android/server/tv/TvRemoteProviderProxy$Connection;->register()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 188
    iget-object v2, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 189
    :try_start_0
    iput-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    .line 190
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    sget-boolean v2, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 192
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Connected successfully."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TvRemoteProvProxy"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 190
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 195
    :cond_1
    sget-boolean v2, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v2, :cond_2

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ": Registration failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TvRemoteProvProxy"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    .end local v1    # "connection":Lcom/android/server/tv/TvRemoteProviderProxy$Connection;
    :cond_2
    :goto_0
    goto :goto_1

    .line 200
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": Service returned invalid remote-control provider binder"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TvRemoteProvProxy"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v0    # "provider":Landroid/media/tv/ITvRemoteProvider;
    :cond_4
    :goto_1
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .line 207
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Service disconnected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvRemoteProvProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->disconnect()V

    .line 209
    return-void
.end method

.method public rebindIfDisconnected()V
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mActiveConnection:Lcom/android/server/tv/TvRemoteProviderProxy$Connection;

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->shouldBind()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->unbind()V

    .line 123
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->bind()V

    .line 125
    :cond_0
    monitor-exit v0

    .line 126
    return-void

    .line 125
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setProviderSink(Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;)V
    .locals 0
    .param p1, "provider"    # Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    .line 89
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mProviderMethods:Lcom/android/server/tv/TvRemoteProviderProxy$ProviderMethods;

    .line 90
    return-void
.end method

.method public start()V
    .locals 2

    .line 98
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    if-nez v0, :cond_1

    .line 99
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Starting"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvRemoteProvProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    .line 104
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->updateBinding()V

    .line 106
    :cond_1
    return-void
.end method

.method public stop()V
    .locals 2

    .line 109
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    if-eqz v0, :cond_1

    .line 110
    sget-boolean v0, Lcom/android/server/tv/TvRemoteProviderProxy;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": Stopping"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TvRemoteProvProxy"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteProviderProxy;->mRunning:Z

    .line 115
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteProviderProxy;->updateBinding()V

    .line 117
    :cond_1
    return-void
.end method
