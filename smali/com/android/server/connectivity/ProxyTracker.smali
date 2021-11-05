.class public Lcom/android/server/connectivity/ProxyTracker;
.super Ljava/lang/Object;
.source "ProxyTracker.java"


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mDefaultProxy:Landroid/net/ProxyInfo;

.field private mDefaultProxyEnabled:Z

.field private mGlobalProxy:Landroid/net/ProxyInfo;

.field private final mPacManager:Lcom/android/server/connectivity/PacManager;

.field private final mProxyLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/android/server/connectivity/ProxyTracker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectivityServiceInternalHandler"    # Landroid/os/Handler;
    .param p3, "pacChangedEvent"    # I

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 69
    iput-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxyEnabled:Z

    .line 82
    iput-object p1, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    .line 83
    new-instance v0, Lcom/android/server/connectivity/PacManager;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/connectivity/PacManager;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mPacManager:Lcom/android/server/connectivity/PacManager;

    .line 84
    return-void
.end method

.method private static canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;
    .locals 2
    .param p0, "proxy"    # Landroid/net/ProxyInfo;

    .line 91
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 92
    invoke-virtual {p0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    const/4 v0, 0x0

    return-object v0

    .line 95
    :cond_0
    return-object p0
.end method

.method public static proxyInfoEqual(Landroid/net/ProxyInfo;Landroid/net/ProxyInfo;)Z
    .locals 4
    .param p0, "a"    # Landroid/net/ProxyInfo;
    .param p1, "b"    # Landroid/net/ProxyInfo;

    .line 108
    invoke-static {p0}, Lcom/android/server/connectivity/ProxyTracker;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-result-object v0

    .line 109
    .local v0, "pa":Landroid/net/ProxyInfo;
    invoke-static {p1}, Lcom/android/server/connectivity/ProxyTracker;->canonicalizeProxyInfo(Landroid/net/ProxyInfo;)Landroid/net/ProxyInfo;

    move-result-object v1

    .line 112
    .local v1, "pb":Landroid/net/ProxyInfo;
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2
.end method


# virtual methods
.method public getDefaultProxy()Landroid/net/ProxyInfo;
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 129
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    monitor-exit v0

    return-object v1

    .line 130
    :cond_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxyEnabled:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    monitor-exit v0

    return-object v1

    .line 131
    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    .line 132
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGlobalProxy()Landroid/net/ProxyInfo;
    .locals 2

    .line 143
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    monitor-exit v0

    return-object v1

    .line 145
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public loadDeprecatedGlobalHttpProxy()V
    .locals 6

    .line 181
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "http_proxy"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 182
    .local v0, "proxy":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 183
    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 184
    .local v1, "data":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_0

    .line 185
    return-void

    .line 188
    :cond_0
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 189
    .local v2, "proxyHost":Ljava/lang/String;
    const/16 v3, 0x1f90

    .line 190
    .local v3, "proxyPort":I
    array-length v4, v1

    const/4 v5, 0x1

    if-le v4, v5, :cond_1

    .line 192
    :try_start_0
    aget-object v4, v1, v5

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v3, v4

    .line 195
    goto :goto_0

    .line 193
    :catch_0
    move-exception v4

    .line 194
    .local v4, "e":Ljava/lang/NumberFormatException;
    return-void

    .line 197
    .end local v4    # "e":Ljava/lang/NumberFormatException;
    :cond_1
    :goto_0
    new-instance v4, Landroid/net/ProxyInfo;

    const-string v5, ""

    invoke-direct {v4, v2, v3, v5}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 198
    .local v4, "p":Landroid/net/ProxyInfo;
    invoke-virtual {p0, v4}, Lcom/android/server/connectivity/ProxyTracker;->setGlobalProxy(Landroid/net/ProxyInfo;)V

    .line 200
    .end local v1    # "data":[Ljava/lang/String;
    .end local v2    # "proxyHost":Ljava/lang/String;
    .end local v3    # "proxyPort":I
    .end local v4    # "p":Landroid/net/ProxyInfo;
    :cond_2
    return-void
.end method

.method public loadGlobalProxy()V
    .locals 9

    .line 152
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 153
    .local v0, "res":Landroid/content/ContentResolver;
    const-string v1, "global_http_proxy_host"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 154
    .local v1, "host":Ljava/lang/String;
    const-string v2, "global_http_proxy_port"

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 155
    .local v2, "port":I
    const-string v3, "global_http_proxy_exclusion_list"

    invoke-static {v0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 156
    .local v3, "exclList":Ljava/lang/String;
    const-string v4, "global_proxy_pac_url"

    invoke-static {v0, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 157
    .local v4, "pacFileUrl":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 159
    :cond_0
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 160
    new-instance v5, Landroid/net/ProxyInfo;

    invoke-direct {v5, v4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;)V

    .local v5, "proxyProperties":Landroid/net/ProxyInfo;
    goto :goto_0

    .line 162
    .end local v5    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_1
    new-instance v5, Landroid/net/ProxyInfo;

    invoke-direct {v5, v1, v2, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 164
    .restart local v5    # "proxyProperties":Landroid/net/ProxyInfo;
    :goto_0
    invoke-virtual {v5}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v6

    if-nez v6, :cond_2

    .line 165
    sget-object v6, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid proxy properties, ignoring: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    return-void

    .line 169
    :cond_2
    iget-object v6, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v6

    .line 170
    :try_start_0
    iput-object v5, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 171
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 173
    .end local v5    # "proxyProperties":Landroid/net/ProxyInfo;
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->loadDeprecatedGlobalHttpProxy()V

    .line 175
    return-void

    .line 171
    .restart local v5    # "proxyProperties":Landroid/net/ProxyInfo;
    :catchall_0
    move-exception v7

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v7
.end method

.method public sendProxyBroadcast()V
    .locals 7

    .line 209
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->getDefaultProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 210
    .local v0, "defaultProxy":Landroid/net/ProxyInfo;
    if-eqz v0, :cond_0

    move-object v1, v0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/net/ProxyInfo;

    const/4 v2, 0x0

    const-string v3, ""

    invoke-direct {v1, v3, v2, v3}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    .local v1, "proxyInfo":Landroid/net/ProxyInfo;
    :goto_0
    iget-object v2, p0, Lcom/android/server/connectivity/ProxyTracker;->mPacManager:Lcom/android/server/connectivity/PacManager;

    invoke-virtual {v2, v1}, Lcom/android/server/connectivity/PacManager;->setCurrentProxyScriptUrl(Landroid/net/ProxyInfo;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 212
    return-void

    .line 214
    :cond_1
    sget-object v2, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sending Proxy Broadcast for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.PROXY_CHANGE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x24000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 218
    const-string v3, "android.intent.extra.PROXY_INFO"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 219
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 221
    .local v3, "ident":J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v5, v2, v6}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    nop

    .line 225
    return-void

    .line 223
    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 224
    throw v5
.end method

.method public setDefaultProxy(Landroid/net/ProxyInfo;)V
    .locals 4
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 284
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 285
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    invoke-static {v1, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    .line 286
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    sget-object v1, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid proxy properties, ignoring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    monitor-exit v0

    return-void

    .line 296
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_2

    if-eqz p1, :cond_2

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 297
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 298
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    iput-object p1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 300
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    .line 301
    monitor-exit v0

    return-void

    .line 303
    :cond_2
    iput-object p1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxy:Landroid/net/ProxyInfo;

    .line 305
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_3

    monitor-exit v0

    return-void

    .line 306
    :cond_3
    iget-boolean v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mDefaultProxyEnabled:Z

    if-eqz v1, :cond_4

    .line 307
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    .line 309
    :cond_4
    monitor-exit v0

    .line 310
    return-void

    .line 309
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setGlobalProxy(Landroid/net/ProxyInfo;)V
    .locals 9
    .param p1, "proxyInfo"    # Landroid/net/ProxyInfo;

    .line 233
    iget-object v0, p0, Lcom/android/server/connectivity/ProxyTracker;->mProxyLock:Ljava/lang/Object;

    monitor-enter v0

    .line 235
    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-ne p1, v1, :cond_0

    monitor-exit v0

    return-void

    .line 236
    :cond_0
    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {p1, v1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    monitor-exit v0

    return-void

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v1, p1}, Landroid/net/ProxyInfo;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    monitor-exit v0

    return-void

    .line 243
    :cond_2
    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 244
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 245
    :cond_3
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->isValid()Z

    move-result v1

    if-nez v1, :cond_4

    .line 246
    sget-object v1, Lcom/android/server/connectivity/ProxyTracker;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid proxy properties, ignoring: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    monitor-exit v0

    return-void

    .line 249
    :cond_4
    new-instance v1, Landroid/net/ProxyInfo;

    invoke-direct {v1, p1}, Landroid/net/ProxyInfo;-><init>(Landroid/net/ProxyInfo;)V

    iput-object v1, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 250
    invoke-virtual {v1}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 251
    .local v1, "host":Ljava/lang/String;
    iget-object v2, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v2}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    .line 252
    .local v2, "port":I
    iget-object v3, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    invoke-virtual {v3}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v3

    .line 253
    .local v3, "exclList":Ljava/lang/String;
    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 254
    const-string v4, ""

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    .local v4, "pacFileUrl":Ljava/lang/String;
    :goto_0
    goto :goto_1

    .line 256
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "exclList":Ljava/lang/String;
    .end local v4    # "pacFileUrl":Ljava/lang/String;
    :cond_6
    const-string v1, ""

    .line 257
    .restart local v1    # "host":Ljava/lang/String;
    const/4 v2, 0x0

    .line 258
    .restart local v2    # "port":I
    const-string v3, ""

    .line 259
    .restart local v3    # "exclList":Ljava/lang/String;
    const-string v4, ""

    .line 260
    .restart local v4    # "pacFileUrl":Ljava/lang/String;
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/connectivity/ProxyTracker;->mGlobalProxy:Landroid/net/ProxyInfo;

    .line 262
    :goto_1
    iget-object v5, p0, Lcom/android/server/connectivity/ProxyTracker;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    .line 263
    .local v5, "res":Landroid/content/ContentResolver;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 265
    .local v6, "token":J
    :try_start_1
    const-string v8, "global_http_proxy_host"

    invoke-static {v5, v8, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 266
    const-string v8, "global_http_proxy_port"

    invoke-static {v5, v8, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 267
    const-string v8, "global_http_proxy_exclusion_list"

    invoke-static {v5, v8, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 268
    const-string v8, "global_proxy_pac_url"

    invoke-static {v5, v8, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 270
    :try_start_2
    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    nop

    .line 273
    invoke-virtual {p0}, Lcom/android/server/connectivity/ProxyTracker;->sendProxyBroadcast()V

    .line 274
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "exclList":Ljava/lang/String;
    .end local v4    # "pacFileUrl":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/ContentResolver;
    .end local v6    # "token":J
    monitor-exit v0

    .line 275
    return-void

    .line 270
    .restart local v1    # "host":Ljava/lang/String;
    .restart local v2    # "port":I
    .restart local v3    # "exclList":Ljava/lang/String;
    .restart local v4    # "pacFileUrl":Ljava/lang/String;
    .restart local v5    # "res":Landroid/content/ContentResolver;
    .restart local v6    # "token":J
    :catchall_0
    move-exception v8

    invoke-static {v6, v7}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 271
    nop

    .end local p0    # "this":Lcom/android/server/connectivity/ProxyTracker;
    .end local p1    # "proxyInfo":Landroid/net/ProxyInfo;
    throw v8

    .line 274
    .end local v1    # "host":Ljava/lang/String;
    .end local v2    # "port":I
    .end local v3    # "exclList":Ljava/lang/String;
    .end local v4    # "pacFileUrl":Ljava/lang/String;
    .end local v5    # "res":Landroid/content/ContentResolver;
    .end local v6    # "token":J
    .restart local p0    # "this":Lcom/android/server/connectivity/ProxyTracker;
    .restart local p1    # "proxyInfo":Landroid/net/ProxyInfo;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method
