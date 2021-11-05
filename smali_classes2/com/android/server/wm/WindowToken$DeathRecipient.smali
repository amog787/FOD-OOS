.class Lcom/android/server/wm/WindowToken$DeathRecipient;
.super Ljava/lang/Object;
.source "WindowToken.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/WindowToken;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DeathRecipient"
.end annotation


# instance fields
.field private mHasUnlinkToDeath:Z

.field final synthetic this$0:Lcom/android/server/wm/WindowToken;


# direct methods
.method private constructor <init>(Lcom/android/server/wm/WindowToken;)V
    .locals 0

    .line 183
    iput-object p1, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->this$0:Lcom/android/server/wm/WindowToken;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->mHasUnlinkToDeath:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/WindowToken;Lcom/android/server/wm/WindowToken$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/wm/WindowToken;
    .param p2, "x1"    # Lcom/android/server/wm/WindowToken$1;

    .line 183
    invoke-direct {p0, p1}, Lcom/android/server/wm/WindowToken$DeathRecipient;-><init>(Lcom/android/server/wm/WindowToken;)V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 188
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->this$0:Lcom/android/server/wm/WindowToken;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 189
    iget-object v1, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->this$0:Lcom/android/server/wm/WindowToken;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/wm/WindowToken;->access$002(Lcom/android/server/wm/WindowToken;Z)Z

    .line 190
    iget-object v1, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->this$0:Lcom/android/server/wm/WindowToken;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowToken;->removeImmediately()V

    .line 191
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 192
    return-void

    .line 191
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method linkToDeath()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->this$0:Lcom/android/server/wm/WindowToken;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 196
    return-void
.end method

.method unlinkToDeath()V
    .locals 2

    .line 199
    iget-boolean v0, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->mHasUnlinkToDeath:Z

    if-eqz v0, :cond_0

    .line 200
    return-void

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->this$0:Lcom/android/server/wm/WindowToken;

    iget-object v0, v0, Lcom/android/server/wm/WindowToken;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 203
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/WindowToken$DeathRecipient;->mHasUnlinkToDeath:Z

    .line 204
    return-void
.end method
