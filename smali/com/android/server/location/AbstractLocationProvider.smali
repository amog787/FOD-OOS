.class public abstract Lcom/android/server/location/AbstractLocationProvider;
.super Ljava/lang/Object;
.source "AbstractLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/AbstractLocationProvider$InternalState;,
        Lcom/android/server/location/AbstractLocationProvider$State;,
        Lcom/android/server/location/AbstractLocationProvider$Listener;
    }
.end annotation


# instance fields
.field protected final mExecutor:Ljava/util/concurrent/Executor;

.field private final mInternalState:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/android/server/location/AbstractLocationProvider$InternalState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/Executor;Landroid/content/Context;)V
    .locals 1
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .param p2, "context"    # Landroid/content/Context;

    .line 191
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/location/AbstractLocationProvider;-><init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V

    .line 192
    return-void
.end method

.method protected constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/Set;)V
    .locals 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 194
    .local p2, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p1, p0, Lcom/android/server/location/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    .line 196
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    sget-object v2, Lcom/android/server/location/AbstractLocationProvider$State;->EMPTY_STATE:Lcom/android/server/location/AbstractLocationProvider$State;

    .line 197
    invoke-static {v2, p2}, Lcom/android/server/location/AbstractLocationProvider$State;->access$000(Lcom/android/server/location/AbstractLocationProvider$State;Ljava/util/Set;)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v3, v2, v3}, Lcom/android/server/location/AbstractLocationProvider$InternalState;-><init>(Lcom/android/server/location/AbstractLocationProvider$Listener;Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$1;)V

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    .line 198
    return-void
.end method

.method static synthetic lambda$setAllowed$3(ZLcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$State;
    .locals 1
    .param p0, "allowed"    # Z
    .param p1, "state"    # Lcom/android/server/location/AbstractLocationProvider$State;

    .line 288
    invoke-static {p1, p0}, Lcom/android/server/location/AbstractLocationProvider$State;->access$300(Lcom/android/server/location/AbstractLocationProvider$State;Z)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setListener$0(Lcom/android/server/location/AbstractLocationProvider$Listener;Lcom/android/server/location/AbstractLocationProvider$InternalState;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    .locals 1
    .param p0, "listener"    # Lcom/android/server/location/AbstractLocationProvider$Listener;
    .param p1, "internalState"    # Lcom/android/server/location/AbstractLocationProvider$InternalState;

    .line 206
    invoke-static {p1, p0}, Lcom/android/server/location/AbstractLocationProvider$InternalState;->access$600(Lcom/android/server/location/AbstractLocationProvider$InternalState;Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$InternalState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setPackageNames$5(Ljava/util/Set;Lcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$State;
    .locals 1
    .param p0, "packageNames"    # Ljava/util/Set;
    .param p1, "state"    # Lcom/android/server/location/AbstractLocationProvider$State;

    .line 302
    invoke-static {p1, p0}, Lcom/android/server/location/AbstractLocationProvider$State;->access$000(Lcom/android/server/location/AbstractLocationProvider$State;Ljava/util/Set;)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setProperties$4(Lcom/android/internal/location/ProviderProperties;Lcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$State;
    .locals 1
    .param p0, "properties"    # Lcom/android/internal/location/ProviderProperties;
    .param p1, "state"    # Lcom/android/server/location/AbstractLocationProvider$State;

    .line 295
    invoke-static {p1, p0}, Lcom/android/server/location/AbstractLocationProvider$State;->access$200(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/internal/location/ProviderProperties;)Lcom/android/server/location/AbstractLocationProvider$State;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setState$1(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$InternalState;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    .locals 1
    .param p0, "newState"    # Lcom/android/server/location/AbstractLocationProvider$State;
    .param p1, "internalState"    # Lcom/android/server/location/AbstractLocationProvider$InternalState;

    .line 221
    invoke-static {p1, p0}, Lcom/android/server/location/AbstractLocationProvider$InternalState;->access$500(Lcom/android/server/location/AbstractLocationProvider$InternalState;Lcom/android/server/location/AbstractLocationProvider$State;)Lcom/android/server/location/AbstractLocationProvider$InternalState;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$setState$2(Ljava/util/function/UnaryOperator;Lcom/android/server/location/AbstractLocationProvider$InternalState;)Lcom/android/server/location/AbstractLocationProvider$InternalState;
    .locals 1
    .param p0, "operator"    # Ljava/util/function/UnaryOperator;
    .param p1, "internalState"    # Lcom/android/server/location/AbstractLocationProvider$InternalState;

    .line 240
    invoke-static {p1, p0}, Lcom/android/server/location/AbstractLocationProvider$InternalState;->access$400(Lcom/android/server/location/AbstractLocationProvider$InternalState;Ljava/util/function/UnaryOperator;)Lcom/android/server/location/AbstractLocationProvider$InternalState;

    move-result-object v0

    return-object v0
.end method

.method private setState(Ljava/util/function/UnaryOperator;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/UnaryOperator<",
            "Lcom/android/server/location/AbstractLocationProvider$State;",
            ">;)V"
        }
    .end annotation

    .line 239
    .local p1, "operator":Ljava/util/function/UnaryOperator;, "Ljava/util/function/UnaryOperator<Lcom/android/server/location/AbstractLocationProvider$State;>;"
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$kFGsZg9Hx50h6WYQeAMQABkRKNU;

    invoke-direct {v1, p1}, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$kFGsZg9Hx50h6WYQeAMQABkRKNU;-><init>(Ljava/util/function/UnaryOperator;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    .line 244
    .local v0, "oldInternalState":Lcom/android/server/location/AbstractLocationProvider$InternalState;
    iget-object v1, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-interface {p1, v1}, Ljava/util/function/UnaryOperator;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/AbstractLocationProvider$State;

    .line 246
    .local v1, "newState":Lcom/android/server/location/AbstractLocationProvider$State;
    iget-object v2, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-virtual {v1, v2}, Lcom/android/server/location/AbstractLocationProvider$State;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 247
    return-void

    .line 252
    :cond_0
    iget-object v2, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    if-eqz v2, :cond_1

    .line 253
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 255
    .local v2, "identity":J
    :try_start_0
    iget-object v4, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    iget-object v5, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-interface {v4, v5, v1}, Lcom/android/server/location/AbstractLocationProvider$Listener;->onStateChanged(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    goto :goto_0

    .line 257
    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 258
    throw v4

    .line 260
    .end local v2    # "identity":J
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method protected getProperties()Lcom/android/internal/location/ProviderProperties;
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$State;->properties:Lcom/android/internal/location/ProviderProperties;

    return-object v0
.end method

.method protected getProviderPackages()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 281
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$State;->providerPackageNames:Ljava/util/Set;

    return-object v0
.end method

.method public getState()Lcom/android/server/location/AbstractLocationProvider$State;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    return-object v0
.end method

.method protected isAllowed()Z
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    iget-boolean v0, v0, Lcom/android/server/location/AbstractLocationProvider$State;->allowed:Z

    return v0
.end method

.method protected abstract onExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
.end method

.method protected abstract onSetRequest(Lcom/android/internal/location/ProviderRequest;)V
.end method

.method protected reportLocation(Landroid/location/Location;)V
    .locals 4
    .param p1, "location"    # Landroid/location/Location;

    .line 309
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    .line 310
    .local v0, "listener":Lcom/android/server/location/AbstractLocationProvider$Listener;
    if-eqz v0, :cond_0

    .line 311
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 313
    .local v1, "identity":J
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/server/location/AbstractLocationProvider$Listener;->onReportLocation(Landroid/location/Location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 316
    goto :goto_0

    .line 315
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 316
    throw v3

    .line 318
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method protected reportLocation(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    .line 324
    .local p1, "locations":Ljava/util/List;, "Ljava/util/List<Landroid/location/Location;>;"
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    .line 325
    .local v0, "listener":Lcom/android/server/location/AbstractLocationProvider$Listener;
    if-eqz v0, :cond_0

    .line 326
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 328
    .local v1, "identity":J
    :try_start_0
    invoke-interface {v0, p1}, Lcom/android/server/location/AbstractLocationProvider$Listener;->onReportLocation(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 330
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    goto :goto_0

    .line 330
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 331
    throw v3

    .line 333
    .end local v1    # "identity":J
    :cond_0
    :goto_0
    return-void
.end method

.method public final sendExtraCommand(IILjava/lang/String;Landroid/os/Bundle;)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "pid"    # I
    .param p3, "command"    # Ljava/lang/String;
    .param p4, "extras"    # Landroid/os/Bundle;

    .line 358
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/android/server/location/-$$Lambda$emxC4DBjBtjrPCOadFmmcL-kgiw;->INSTANCE:Lcom/android/server/location/-$$Lambda$emxC4DBjBtjrPCOadFmmcL-kgiw;

    .line 359
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    move-object v2, p0

    move-object v5, p3

    move-object v6, p4

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 360
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 358
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 361
    return-void
.end method

.method protected setAllowed(Z)V
    .locals 1
    .param p1, "allowed"    # Z

    .line 288
    new-instance v0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$s_g7M1EFAxoisWC6LYYgN-hWTwc;

    invoke-direct {v0, p1}, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$s_g7M1EFAxoisWC6LYYgN-hWTwc;-><init>(Z)V

    invoke-direct {p0, v0}, Lcom/android/server/location/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 289
    return-void
.end method

.method protected setListener(Lcom/android/server/location/AbstractLocationProvider$Listener;)Lcom/android/server/location/AbstractLocationProvider$State;
    .locals 2
    .param p1, "listener"    # Lcom/android/server/location/AbstractLocationProvider$Listener;

    .line 205
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$diUZq3K1KUpjC4EqB0SQY_fHHGM;

    invoke-direct {v1, p1}, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$diUZq3K1KUpjC4EqB0SQY_fHHGM;-><init>(Lcom/android/server/location/AbstractLocationProvider$Listener;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->updateAndGet(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    iget-object v0, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    return-object v0
.end method

.method protected setPackageNames(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 302
    .local p1, "packageNames":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$Cz0MzfhYL-KpWWW0XmxsZTNwnI0;

    invoke-direct {v0, p1}, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$Cz0MzfhYL-KpWWW0XmxsZTNwnI0;-><init>(Ljava/util/Set;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 303
    return-void
.end method

.method protected setProperties(Lcom/android/internal/location/ProviderProperties;)V
    .locals 1
    .param p1, "properties"    # Lcom/android/internal/location/ProviderProperties;

    .line 295
    new-instance v0, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$wZCGZbIMAspHRG64AcKlNjhWJEk;

    invoke-direct {v0, p1}, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$wZCGZbIMAspHRG64AcKlNjhWJEk;-><init>(Lcom/android/internal/location/ProviderProperties;)V

    invoke-direct {p0, v0}, Lcom/android/server/location/AbstractLocationProvider;->setState(Ljava/util/function/UnaryOperator;)V

    .line 296
    return-void
.end method

.method public final setRequest(Lcom/android/internal/location/ProviderRequest;)V
    .locals 2
    .param p1, "request"    # Lcom/android/internal/location/ProviderRequest;

    .line 340
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mExecutor:Ljava/util/concurrent/Executor;

    sget-object v1, Lcom/android/server/location/-$$Lambda$hUPZkLaip7KhcHlSjfSfX2fzk_I;->INSTANCE:Lcom/android/server/location/-$$Lambda$hUPZkLaip7KhcHlSjfSfX2fzk_I;

    invoke-static {v1, p0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 341
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledRunnable;->recycleOnUse()Lcom/android/internal/util/function/pooled/PooledRunnable;

    move-result-object v1

    .line 340
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 342
    return-void
.end method

.method protected setState(Lcom/android/server/location/AbstractLocationProvider$State;)V
    .locals 5
    .param p1, "newState"    # Lcom/android/server/location/AbstractLocationProvider$State;

    .line 220
    iget-object v0, p0, Lcom/android/server/location/AbstractLocationProvider;->mInternalState:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance v1, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$I29l5_Y-rKhaHygNa-fvF70mzA0;

    invoke-direct {v1, p1}, Lcom/android/server/location/-$$Lambda$AbstractLocationProvider$I29l5_Y-rKhaHygNa-fvF70mzA0;-><init>(Lcom/android/server/location/AbstractLocationProvider$State;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndUpdate(Ljava/util/function/UnaryOperator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;

    .line 222
    .local v0, "oldInternalState":Lcom/android/server/location/AbstractLocationProvider$InternalState;
    iget-object v1, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-virtual {p1, v1}, Lcom/android/server/location/AbstractLocationProvider$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    return-void

    .line 228
    :cond_0
    iget-object v1, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    if-eqz v1, :cond_1

    .line 229
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 231
    .local v1, "identity":J
    :try_start_0
    iget-object v3, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->listener:Lcom/android/server/location/AbstractLocationProvider$Listener;

    iget-object v4, v0, Lcom/android/server/location/AbstractLocationProvider$InternalState;->state:Lcom/android/server/location/AbstractLocationProvider$State;

    invoke-interface {v3, v4, p1}, Lcom/android/server/location/AbstractLocationProvider$Listener;->onStateChanged(Lcom/android/server/location/AbstractLocationProvider$State;Lcom/android/server/location/AbstractLocationProvider$State;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 233
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    goto :goto_0

    .line 233
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 234
    throw v3

    .line 236
    .end local v1    # "identity":J
    :cond_1
    :goto_0
    return-void
.end method
