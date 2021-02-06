.class final Lcom/android/server/inputmethod/InputContentUriTokenHandler;
.super Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;
.source "InputContentUriTokenHandler.java"


# instance fields
.field private final mLock:Ljava/lang/Object;

.field private mPermissionOwnerToken:Landroid/os/IBinder;

.field private final mSourceUid:I

.field private final mSourceUserId:I

.field private final mTargetPackage:Ljava/lang/String;

.field private final mTargetUserId:I

.field private final mUri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;ILjava/lang/String;II)V
    .locals 1
    .param p1, "contentUri"    # Landroid/net/Uri;
    .param p2, "sourceUid"    # I
    .param p3, "targetPackage"    # Ljava/lang/String;
    .param p4, "sourceUserId"    # I
    .param p5, "targetUserId"    # I

    .line 52
    invoke-direct {p0}, Lcom/android/internal/inputmethod/IInputContentUriToken$Stub;-><init>()V

    .line 45
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 53
    iput-object p1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    .line 54
    iput p2, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUid:I

    .line 55
    iput-object p3, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    .line 56
    iput p4, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUserId:I

    .line 57
    iput p5, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mTargetUserId:I

    .line 58
    return-void
.end method

.method private doTakeLocked(Landroid/os/IBinder;)V
    .locals 10
    .param p1, "permissionOwner"    # Landroid/os/IBinder;

    .line 76
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 79
    .local v0, "origId":J
    :try_start_0
    invoke-static {}, Landroid/app/UriGrantsManager;->getService()Landroid/app/IUriGrantsManager;

    move-result-object v2

    iget v4, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUid:I

    iget-object v5, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mTargetPackage:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUserId:I

    iget v9, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mTargetUserId:I

    move-object v3, p1

    invoke-interface/range {v2 .. v9}, Landroid/app/IUriGrantsManager;->grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    goto :goto_0

    .line 86
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 82
    :catch_0
    move-exception v2

    .line 83
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_1
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    nop

    .line 88
    return-void

    .line 86
    :goto_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 87
    throw v2
.end method


# virtual methods
.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 112
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 115
    nop

    .line 116
    return-void

    .line 114
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 115
    throw v0
.end method

.method public release()V
    .locals 7

    .line 92
    iget-object v0, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 93
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-nez v1, :cond_0

    .line 94
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    .line 97
    :cond_0
    const/4 v1, 0x0

    :try_start_1
    const-class v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/uri/UriGrantsManagerInternal;

    iget-object v3, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    iget-object v4, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mUri:Landroid/net/Uri;

    const/4 v5, 0x1

    iget v6, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mSourceUserId:I

    .line 98
    invoke-interface {v2, v3, v4, v5, v6}, Lcom/android/server/uri/UriGrantsManagerInternal;->revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    :try_start_2
    iput-object v1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 102
    nop

    .line 103
    monitor-exit v0

    .line 104
    return-void

    .line 101
    :catchall_0
    move-exception v2

    iput-object v1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 102
    nop

    .end local p0    # "this":Lcom/android/server/inputmethod/InputContentUriTokenHandler;
    throw v2

    .line 103
    .restart local p0    # "this":Lcom/android/server/inputmethod/InputContentUriTokenHandler;
    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public take()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 63
    :try_start_0
    iget-object v1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    if-eqz v1, :cond_0

    .line 65
    monitor-exit v0

    return-void

    .line 68
    :cond_0
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    const-string v2, "InputContentUriTokenHandler"

    .line 69
    invoke-interface {v1, v2}, Lcom/android/server/uri/UriGrantsManagerInternal;->newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->mPermissionOwnerToken:Landroid/os/IBinder;

    .line 71
    invoke-direct {p0, v1}, Lcom/android/server/inputmethod/InputContentUriTokenHandler;->doTakeLocked(Landroid/os/IBinder;)V

    .line 72
    monitor-exit v0

    .line 73
    return-void

    .line 72
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
