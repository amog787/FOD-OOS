.class final Lcom/android/server/tv/TvRemoteService$UserHandler;
.super Landroid/os/Handler;
.source "TvRemoteService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/tv/TvRemoteService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UserHandler"
.end annotation


# static fields
.field public static final MSG_INPUT_BRIDGE_CONNECTED:I = 0x2

.field public static final MSG_START:I = 0x1


# instance fields
.field private mRunning:Z

.field private final mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

.field final synthetic this$0:Lcom/android/server/tv/TvRemoteService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/TvRemoteService;Lcom/android/server/tv/TvRemoteService$UserProvider;Landroid/content/Context;)V
    .locals 2
    .param p2, "provider"    # Lcom/android/server/tv/TvRemoteService$UserProvider;
    .param p3, "context"    # Landroid/content/Context;

    .line 222
    iput-object p1, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->this$0:Lcom/android/server/tv/TvRemoteService;

    .line 223
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 224
    new-instance p1, Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-direct {p1, p3, p2, p0}, Lcom/android/server/tv/TvRemoteProviderWatcher;-><init>(Landroid/content/Context;Lcom/android/server/tv/TvRemoteProviderWatcher$ProviderMethods;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

    .line 225
    return-void
.end method

.method private start()V
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->mRunning:Z

    if-nez v0, :cond_0

    .line 247
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->mRunning:Z

    .line 248
    iget-object v0, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->mWatcher:Lcom/android/server/tv/TvRemoteProviderWatcher;

    invoke-virtual {v0}, Lcom/android/server/tv/TvRemoteProviderWatcher;->start()V

    .line 250
    :cond_0
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 229
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 235
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/IBinder;

    .line 236
    .local v0, "token":Landroid/os/IBinder;
    iget-object v1, p0, Lcom/android/server/tv/TvRemoteService$UserHandler;->this$0:Lcom/android/server/tv/TvRemoteService;

    invoke-static {v1}, Lcom/android/server/tv/TvRemoteService;->access$000(Lcom/android/server/tv/TvRemoteService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/tv/TvRemoteProviderProxy;

    .line 237
    .local v1, "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    if-eqz v1, :cond_2

    .line 238
    invoke-virtual {v1, v0}, Lcom/android/server/tv/TvRemoteProviderProxy;->inputBridgeConnected(Landroid/os/IBinder;)V

    goto :goto_0

    .line 231
    .end local v0    # "token":Landroid/os/IBinder;
    .end local v1    # "provider":Lcom/android/server/tv/TvRemoteProviderProxy;
    :cond_1
    invoke-direct {p0}, Lcom/android/server/tv/TvRemoteService$UserHandler;->start()V

    .line 232
    nop

    .line 243
    :cond_2
    :goto_0
    return-void
.end method
