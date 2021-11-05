.class public Lcom/android/server/storage/AppFuseBridge;
.super Ljava/lang/Object;
.source "AppFuseBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/AppFuseBridge$MountScope;
    }
.end annotation


# static fields
.field private static final APPFUSE_MOUNT_NAME_TEMPLATE:Ljava/lang/String; = "/mnt/appfuse/%d_%d"

.field public static final TAG:Ljava/lang/String; = "AppFuseBridge"


# instance fields
.field private mNativeLoop:J

.field private final mScopes:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/storage/AppFuseBridge$MountScope;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    .line 54
    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_new()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    .line 55
    return-void
.end method

.method private native native_add_bridge(JII)I
.end method

.method private native native_delete(J)V
.end method

.method private native native_lock()V
.end method

.method private native native_new()J
.end method

.method private native native_start_loop(J)V
.end method

.method private native native_unlock()V
.end method

.method private declared-synchronized onClosed(I)V
    .locals 2
    .param p1, "mountId"    # I

    monitor-enter p0

    .line 130
    :try_start_0
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    .line 131
    .local v0, "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    if-eqz v0, :cond_0

    .line 132
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->setMountResultLocked(Z)V

    .line 133
    invoke-static {v0}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 134
    iget-object v1, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .end local p0    # "this":Lcom/android/server/storage/AppFuseBridge;
    :cond_0
    monitor-exit p0

    return-void

    .line 129
    .end local v0    # "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    .end local p1    # "mountId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private declared-synchronized onMount(I)V
    .locals 2
    .param p1, "mountId"    # I

    monitor-enter p0

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    .line 123
    .local v0, "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    if-eqz v0, :cond_0

    .line 124
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->setMountResultLocked(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    .end local p0    # "this":Lcom/android/server/storage/AppFuseBridge;
    :cond_0
    monitor-exit p0

    return-void

    .line 121
    .end local v0    # "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    .end local p1    # "mountId":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public addBridge(Lcom/android/server/storage/AppFuseBridge$MountScope;)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "mountScope"    # Lcom/android/server/storage/AppFuseBridge$MountScope;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;,
            Lcom/android/server/NativeDaemonConnectorException;
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_lock()V

    .line 69
    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 70
    :try_start_1
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 71
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 74
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    iget v2, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    .line 75
    invoke-virtual {p1}, Lcom/android/server/storage/AppFuseBridge$MountScope;->open()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/ParcelFileDescriptor;->detachFd()I

    move-result v3

    .line 74
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/storage/AppFuseBridge;->native_add_bridge(JII)I

    move-result v0

    .line 76
    .local v0, "fd":I
    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    .line 79
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->adoptFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 80
    .local v1, "result":Landroid/os/ParcelFileDescriptor;
    iget-object v2, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    iget v3, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-virtual {v2, v3, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    const/4 p1, 0x0

    .line 82
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 85
    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_unlock()V

    .line 86
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 82
    return-object v1

    .line 77
    .end local v1    # "result":Landroid/os/ParcelFileDescriptor;
    :cond_1
    :try_start_2
    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v2, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-direct {v1, v2}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .end local p0    # "this":Lcom/android/server/storage/AppFuseBridge;
    .end local p1    # "mountScope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    throw v1

    .line 72
    .end local v0    # "fd":I
    .restart local p0    # "this":Lcom/android/server/storage/AppFuseBridge;
    .restart local p1    # "mountScope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    :cond_2
    new-instance v0, Lcom/android/internal/os/FuseUnavailableMountException;

    iget v1, p1, Lcom/android/server/storage/AppFuseBridge$MountScope;->mountId:I

    invoke-direct {v0, v1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .end local p0    # "this":Lcom/android/server/storage/AppFuseBridge;
    .end local p1    # "mountScope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    throw v0

    .line 83
    .restart local p0    # "this":Lcom/android/server/storage/AppFuseBridge;
    .restart local p1    # "mountScope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .end local p0    # "this":Lcom/android/server/storage/AppFuseBridge;
    .end local p1    # "mountScope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 85
    .restart local p0    # "this":Lcom/android/server/storage/AppFuseBridge;
    .restart local p1    # "mountScope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lcom/android/server/storage/AppFuseBridge;->native_unlock()V

    .line 86
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    .line 87
    throw v0
.end method

.method public openFile(III)Landroid/os/ParcelFileDescriptor;
    .locals 4
    .param p1, "mountId"    # I
    .param p2, "fileId"    # I
    .param p3, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/os/FuseUnavailableMountException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 102
    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/storage/AppFuseBridge;->mScopes:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/storage/AppFuseBridge$MountScope;

    .line 104
    .local v0, "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    if-eqz v0, :cond_1

    .line 107
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    invoke-virtual {v0}, Lcom/android/server/storage/AppFuseBridge$MountScope;->waitForMount()Z

    move-result v1

    .line 109
    .local v1, "result":Z
    if-eqz v1, :cond_0

    .line 113
    :try_start_1
    invoke-static {p3}, Landroid/os/FileUtils;->translateModePfdToPosix(I)I

    move-result v2

    .line 114
    .local v2, "flags":I
    invoke-virtual {v0, p1, p2, v2}, Lcom/android/server/storage/AppFuseBridge$MountScope;->openFile(III)Landroid/os/ParcelFileDescriptor;

    move-result-object v3
    :try_end_1
    .catch Lcom/android/server/NativeDaemonConnectorException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v3

    .line 115
    .end local v2    # "flags":I
    :catch_0
    move-exception v2

    .line 116
    .local v2, "error":Lcom/android/server/NativeDaemonConnectorException;
    new-instance v3, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {v3, p1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v3

    .line 110
    .end local v2    # "error":Lcom/android/server/NativeDaemonConnectorException;
    :cond_0
    new-instance v2, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {v2, p1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    throw v2

    .line 105
    .end local v1    # "result":Z
    :cond_1
    :try_start_2
    new-instance v1, Lcom/android/internal/os/FuseUnavailableMountException;

    invoke-direct {v1, p1}, Lcom/android/internal/os/FuseUnavailableMountException;-><init>(I)V

    .end local p0    # "this":Lcom/android/server/storage/AppFuseBridge;
    .end local p1    # "mountId":I
    .end local p2    # "fileId":I
    .end local p3    # "mode":I
    throw v1

    .line 107
    .end local v0    # "scope":Lcom/android/server/storage/AppFuseBridge$MountScope;
    .restart local p0    # "this":Lcom/android/server/storage/AppFuseBridge;
    .restart local p1    # "mountId":I
    .restart local p2    # "fileId":I
    .restart local p3    # "mode":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 2

    .line 92
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/storage/AppFuseBridge;->native_start_loop(J)V

    .line 93
    monitor-enter p0

    .line 94
    :try_start_0
    iget-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    invoke-direct {p0, v0, v1}, Lcom/android/server/storage/AppFuseBridge;->native_delete(J)V

    .line 95
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/storage/AppFuseBridge;->mNativeLoop:J

    .line 96
    monitor-exit p0

    .line 97
    return-void

    .line 96
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
