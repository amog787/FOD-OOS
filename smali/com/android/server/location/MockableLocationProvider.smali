.class public Lcom/android/server/location/MockableLocationProvider;
.super Lcom/android/server/location/AbstractLocationProvider;
.source "MockableLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;
    }
.end annotation


# instance fields
.field private mMockProvider:Lcom/android/server/location/MockProvider;

.field private final mOwnerLock:Ljava/lang/Object;

.field private mProvider:Lcom/android/server/location/AbstractLocationProvider;

.field private mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

.field private mRequest:Lcom/android/internal/location/ProviderRequest;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lcom/android/server/location/AbstractLocationProvider$Listener;)V
    .locals 2
    .param p1, "ownerLock"    # Ljava/lang/Object;
    .param p2, "listener"    # Lcom/android/server/location/AbstractLocationProvider$Listener;

    .line 75
    sget-object v0, Lcom/android/internal/util/ConcurrentUtils;->DIRECT_EXECUTOR:Ljava/util/concurrent/Executor;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V

    .line 76
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/android/internal/location/ProviderRequest;->EMPTY_REQUEST:Lcom/android/internal/location/ProviderRequest;

    iput-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 79
    invoke-virtual {p0, p2}, Lcom/android/server/location/MockableLocationProvider;->setListener(Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$State;

    .line 80
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/location/MockableLocationProvider;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/MockableLocationProvider;

    .line 49
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/location/MockableLocationProvider;)Lcom/android/server/location/AbstractLocationProvider;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/location/MockableLocationProvider;

    .line 49
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    return-object v0
.end method

.method private setProviderLocked(Lcom/android/server/location/AbstractLocationProvider;)V
    .locals 5
    .param p1, "provider"    # Lcom/android/server/location/AbstractLocationProvider;

    .line 134
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-ne v0, p1, :cond_0

    .line 135
    return-void

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 139
    .local v0, "oldProvider":Lcom/android/server/location/AbstractLocationProvider;
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 141
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 144
    invoke-virtual {v0, v1}, Lcom/android/server/location/AbstractLocationProvider;->setListener(Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$State;

    .line 145
    sget-object v2, Lcom/android/internal/location/ProviderRequest;->EMPTY_REQUEST:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v0, v2}, Lcom/android/server/location/AbstractLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;)V

    .line 149
    :cond_1
    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v2, :cond_2

    .line 150
    new-instance v3, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;

    invoke-direct {v3, p0, v2, v1}, Lcom/android/server/location/MockableLocationProvider$ListenerWrapper;-><init>(Lcom/android/server/location/MockableLocationProvider;Lcom/android/server/location/AbstractLocationProvider;Lcom/android/server/location/MockableLocationProvider$1;)V

    invoke-virtual {v2, v3}, Lcom/android/server/location/AbstractLocationProvider;->setListener(Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v1

    .local v1, "newState":Lcom/android/server/location/AbstractLocationProvider$State;
    goto :goto_0

    .line 152
    .end local v1    # "newState":Lcom/android/server/location/AbstractLocationProvider$State;
    :cond_2
    sget-object v1, Lcom/android/server/location/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/AbstractLocationProvider$State;

    .line 155
    .restart local v1    # "newState":Lcom/android/server/location/AbstractLocationProvider$State;
    :goto_0
    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 156
    .local v2, "oldRequest":Lcom/android/internal/location/ProviderRequest;
    invoke-virtual {p0, v1}, Lcom/android/server/location/MockableLocationProvider;->setState(Lcom/android/server/location/AbstractLocationProvider$State;)V

    .line 158
    iget-object v3, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v3, :cond_3

    iget-object v4, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    if-ne v2, v4, :cond_3

    .line 159
    invoke-virtual {v3, v4}, Lcom/android/server/location/AbstractLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;)V

    .line 161
    :cond_3
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Thread;->holdsLock(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 236
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 237
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 238
    .local v1, "provider":Lcom/android/server/location/AbstractLocationProvider;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "allowed="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v3

    iget-boolean v3, v3, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 239
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "properties="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/location/AbstractLocationProvider$State;->properties:Lcom/android/internal/location/ProviderProperties;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 240
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "packages="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->getState()Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/location/AbstractLocationProvider$State;->providerPackageNames:Ljava/util/Set;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 241
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "request="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 242
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 244
    if-eqz v1, :cond_0

    .line 247
    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/location/AbstractLocationProvider;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 249
    :cond_0
    return-void

    .line 242
    .end local v1    # "provider":Lcom/android/server/location/AbstractLocationProvider;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public getCurrentRequest()Lcom/android/internal/location/ProviderRequest;
    .locals 2

    .line 198
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    monitor-exit v0

    return-object v1

    .line 200
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getProvider()Lcom/android/server/location/AbstractLocationProvider;
    .locals 2

    .line 88
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 89
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    monitor-exit v0

    return-object v1

    .line 90
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public isMock()Z
    .locals 3

    .line 168
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 169
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    iget-object v2, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    .line 170
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 220
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 221
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v1, :cond_0

    .line 222
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/location/AbstractLocationProvider;->sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V

    .line 224
    :cond_0
    monitor-exit v0

    .line 225
    return-void

    .line 224
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected onSetRequest(Lcom/android/internal/location/ProviderRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;

    .line 205
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 206
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    if-ne p1, v1, :cond_0

    .line 207
    monitor-exit v0

    return-void

    .line 210
    :cond_0
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mRequest:Lcom/android/internal/location/ProviderRequest;

    .line 212
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/AbstractLocationProvider;->setRequest(Lcom/android/internal/location/ProviderRequest;)V

    .line 215
    :cond_1
    monitor-exit v0

    .line 216
    return-void

    .line 215
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMockProvider(Lcom/android/server/location/MockProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/location/MockProvider;

    .line 118
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 119
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    if-ne v1, p1, :cond_0

    .line 120
    monitor-exit v0

    return-void

    .line 123
    :cond_0
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    .line 124
    if-eqz p1, :cond_1

    .line 125
    invoke-direct {p0, p1}, Lcom/android/server/location/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    goto :goto_0

    .line 127
    :cond_1
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-direct {p0, v1}, Lcom/android/server/location/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 129
    :goto_0
    monitor-exit v0

    .line 130
    return-void

    .line 129
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMockProviderAllowed(Z)V
    .locals 2
    .param p1, "allowed"    # Z

    .line 178
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 180
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockProvider;->setProviderAllowed(Z)V

    .line 181
    monitor-exit v0

    .line 182
    return-void

    .line 181
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMockProviderLocation(Landroid/location/Location;)V
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .line 188
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 189
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    invoke-static {v1}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 190
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mMockProvider:Lcom/android/server/location/MockProvider;

    invoke-virtual {v1, p1}, Lcom/android/server/location/MockProvider;->setProviderLocation(Landroid/location/Location;)V

    .line 191
    monitor-exit v0

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRealProvider(Lcom/android/server/location/AbstractLocationProvider;)V
    .locals 2
    .param p1, "provider"    # Lcom/android/server/location/AbstractLocationProvider;

    .line 99
    iget-object v0, p0, Lcom/android/server/location/MockableLocationProvider;->mOwnerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 100
    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

    if-ne v1, p1, :cond_0

    .line 101
    monitor-exit v0

    return-void

    .line 104
    :cond_0
    iput-object p1, p0, Lcom/android/server/location/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

    .line 105
    invoke-virtual {p0}, Lcom/android/server/location/MockableLocationProvider;->isMock()Z

    move-result v1

    if-nez v1, :cond_1

    .line 106
    iget-object v1, p0, Lcom/android/server/location/MockableLocationProvider;->mRealProvider:Lcom/android/server/location/AbstractLocationProvider;

    invoke-direct {p0, v1}, Lcom/android/server/location/MockableLocationProvider;->setProviderLocked(Lcom/android/server/location/AbstractLocationProvider;)V

    .line 108
    :cond_1
    monitor-exit v0

    .line 109
    return-void

    .line 108
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
