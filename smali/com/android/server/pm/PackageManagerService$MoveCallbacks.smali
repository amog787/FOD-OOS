.class Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
.super Landroid/os/Handler;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveCallbacks"
.end annotation


# static fields
.field private static final MSG_CREATED:I = 0x1

.field private static final MSG_STATUS_CHANGED:I = 0x2


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/content/pm/IPackageMoveObserver;",
            ">;"
        }
    .end annotation
.end field

.field private final mLastStatus:Landroid/util/SparseIntArray;


# direct methods
.method public constructor <init>(Landroid/os/Looper;)V
    .locals 1
    .param p1, "looper"    # Landroid/os/Looper;

    .line 24983
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 24977
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 24980
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    .line 24984
    return-void
.end method

.method static synthetic access$4900(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;ILandroid/os/Bundle;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # Landroid/os/Bundle;

    .line 24973
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyCreated(ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;II)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .line 24973
    invoke-direct {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(II)V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;IIJ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MoveCallbacks;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # J

    .line 24973
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(IIJ)V

    return-void
.end method

.method static synthetic access$5400(Lcom/android/server/pm/PackageManagerService$MoveCallbacks;)Landroid/util/SparseIntArray;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/pm/PackageManagerService$MoveCallbacks;

    .line 24973
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    return-object v0
.end method

.method private invokeCallback(Landroid/content/pm/IPackageMoveObserver;ILcom/android/internal/os/SomeArgs;)V
    .locals 4
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;
    .param p2, "what"    # I
    .param p3, "args"    # Lcom/android/internal/os/SomeArgs;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 25011
    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 25017
    :cond_0
    iget v0, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget v1, p3, Lcom/android/internal/os/SomeArgs;->argi2:I

    iget-object v2, p3, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1, v0, v1, v2, v3}, Landroid/content/pm/IPackageMoveObserver;->onStatusChanged(IIJ)V

    goto :goto_0

    .line 25013
    :cond_1
    iget v0, p3, Lcom/android/internal/os/SomeArgs;->argi1:I

    iget-object v1, p3, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-interface {p1, v0, v1}, Landroid/content/pm/IPackageMoveObserver;->onCreated(ILandroid/os/Bundle;)V

    .line 25014
    nop

    .line 25021
    :goto_0
    return-void
.end method

.method private notifyCreated(ILandroid/os/Bundle;)V
    .locals 2
    .param p1, "moveId"    # I
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 25024
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Move "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " created "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25026
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 25027
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 25028
    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    .line 25029
    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 25030
    return-void
.end method

.method private notifyStatusChanged(II)V
    .locals 2
    .param p1, "moveId"    # I
    .param p2, "status"    # I

    .line 25033
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->notifyStatusChanged(IIJ)V

    .line 25034
    return-void
.end method

.method private notifyStatusChanged(IIJ)V
    .locals 3
    .param p1, "moveId"    # I
    .param p2, "status"    # I
    .param p3, "estMillis"    # J

    .line 25037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Move "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PackageManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 25039
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    .line 25040
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iput p1, v0, Lcom/android/internal/os/SomeArgs;->argi1:I

    .line 25041
    iput p2, v0, Lcom/android/internal/os/SomeArgs;->argi2:I

    .line 25042
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    .line 25043
    const/4 v1, 0x2

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 25045
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    monitor-enter v1

    .line 25046
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mLastStatus:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 25047
    monitor-exit v1

    .line 25048
    return-void

    .line 25047
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .line 24996
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    .line 24997
    .local v0, "args":Lcom/android/internal/os/SomeArgs;
    iget-object v1, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 24998
    .local v1, "n":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 24999
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Landroid/content/pm/IPackageMoveObserver;

    .line 25001
    .local v3, "callback":Landroid/content/pm/IPackageMoveObserver;
    :try_start_0
    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v3, v4, v0}, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->invokeCallback(Landroid/content/pm/IPackageMoveObserver;ILcom/android/internal/os/SomeArgs;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25003
    goto :goto_1

    .line 25002
    :catch_0
    move-exception v4

    .line 24998
    .end local v3    # "callback":Landroid/content/pm/IPackageMoveObserver;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 25005
    .end local v2    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 25006
    invoke-virtual {v0}, Lcom/android/internal/os/SomeArgs;->recycle()V

    .line 25007
    return-void
.end method

.method public register(Landroid/content/pm/IPackageMoveObserver;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .line 24987
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 24988
    return-void
.end method

.method public unregister(Landroid/content/pm/IPackageMoveObserver;)V
    .locals 1
    .param p1, "callback"    # Landroid/content/pm/IPackageMoveObserver;

    .line 24991
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$MoveCallbacks;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 24992
    return-void
.end method
