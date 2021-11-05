.class public final Lcom/android/server/storage/StorageUserConnection;
.super Ljava/lang/Object;
.source "StorageUserConnection.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/storage/StorageUserConnection$Session;,
        Lcom/android/server/storage/StorageUserConnection$ActiveConnection;,
        Lcom/android/server/storage/StorageUserConnection$AsyncStorageServiceCall;
    }
.end annotation


# static fields
.field private static final DEFAULT_REMOTE_TIMEOUT_SECONDS:I = 0x14

.field private static final TAG:Ljava/lang/String; = "StorageUserConnection"


# instance fields
.field private final mActiveConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

.field private final mContext:Landroid/content/Context;

.field private final mHandlerThread:Landroid/os/HandlerThread;

.field private final mSessionController:Lcom/android/server/storage/StorageSessionController;

.field private final mSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/storage/StorageUserConnection$Session;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionsLock:Ljava/lang/Object;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/server/storage/StorageSessionController;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "userId"    # I
    .param p3, "controller"    # Lcom/android/server/storage/StorageSessionController;

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionsLock:Ljava/lang/Object;

    .line 74
    new-instance v0, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;-><init>(Lcom/android/server/storage/StorageUserConnection;Lcom/android/server/storage/StorageUserConnection$1;)V

    iput-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mActiveConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    .line 75
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mSessions:Ljava/util/Map;

    .line 79
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mContext:Landroid/content/Context;

    .line 80
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/storage/StorageUserConnection;->mUserId:I

    .line 81
    iput-object p3, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionController:Lcom/android/server/storage/StorageSessionController;

    .line 83
    new-instance v0, Landroid/os/HandlerThread;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "StorageUserConnectionThread-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/storage/StorageUserConnection;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mHandlerThread:Landroid/os/HandlerThread;

    .line 84
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 85
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/storage/StorageUserConnection;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/StorageUserConnection;

    .line 65
    iget v0, p0, Lcom/android/server/storage/StorageUserConnection;->mUserId:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/storage/StorageUserConnection;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/StorageUserConnection;

    .line 65
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/storage/StorageUserConnection;)Lcom/android/server/storage/StorageSessionController;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/StorageUserConnection;

    .line 65
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionController:Lcom/android/server/storage/StorageSessionController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/storage/StorageUserConnection;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/storage/StorageUserConnection;

    .line 65
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 189
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mActiveConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    invoke-virtual {v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->close()V

    .line 190
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 191
    return-void
.end method

.method public getAllSessionIds()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 195
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 196
    :try_start_0
    new-instance v1, Ljava/util/HashSet;

    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection;->mSessions:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "vol"    # Landroid/os/storage/StorageVolume;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 117
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 121
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection;->mSessions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 122
    const-string v1, "StorageUserConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No session found for sessionId: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    monitor-exit v0

    return-void

    .line 125
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mActiveConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->notifyVolumeStateChanged(Ljava/lang/String;Landroid/os/storage/StorageVolume;)V

    .line 127
    return-void

    .line 125
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public removeAllSessions()V
    .locals 4

    .line 178
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 179
    :try_start_0
    const-string v1, "StorageUserConnection"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/storage/StorageUserConnection;->mSessions:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sessions for user: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/storage/StorageUserConnection;->mUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection;->mSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

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

.method public removeSession(Ljava/lang/String;)Lcom/android/server/storage/StorageUserConnection$Session;
    .locals 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 138
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection;->mSessions:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/storage/StorageUserConnection$Session;

    monitor-exit v0

    return-object v1

    .line 139
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removeSessionAndWait(Ljava/lang/String;)V
    .locals 4
    .param p1, "sessionId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 148
    invoke-virtual {p0, p1}, Lcom/android/server/storage/StorageUserConnection;->removeSession(Ljava/lang/String;)Lcom/android/server/storage/StorageUserConnection$Session;

    move-result-object v0

    .line 149
    .local v0, "session":Lcom/android/server/storage/StorageUserConnection$Session;
    const-string v1, "StorageUserConnection"

    if-nez v0, :cond_0

    .line 150
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No session found for id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    return-void

    .line 154
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Waiting for session end "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection;->mActiveConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    invoke-virtual {v1, v0}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->endSession(Lcom/android/server/storage/StorageUserConnection$Session;)V

    .line 156
    return-void
.end method

.method public resetUserSessions()V
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v0

    .line 164
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection;->mSessions:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    monitor-exit v0

    return-void

    .line 169
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 170
    const-class v0, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManagerInternal;

    .line 171
    .local v0, "sm":Landroid/os/storage/StorageManagerInternal;
    iget v1, p0, Lcom/android/server/storage/StorageUserConnection;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/storage/StorageManagerInternal;->resetUser(I)V

    .line 172
    return-void

    .line 169
    .end local v0    # "sm":Landroid/os/storage/StorageManagerInternal;
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public startSession(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "sessionId"    # Ljava/lang/String;
    .param p2, "pfd"    # Landroid/os/ParcelFileDescriptor;
    .param p3, "upperPath"    # Ljava/lang/String;
    .param p4, "lowerPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/server/storage/StorageSessionController$ExternalStorageServiceException;
        }
    .end annotation

    .line 96
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    new-instance v0, Lcom/android/server/storage/StorageUserConnection$Session;

    invoke-direct {v0, p1, p3, p4}, Lcom/android/server/storage/StorageUserConnection$Session;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .local v0, "session":Lcom/android/server/storage/StorageUserConnection$Session;
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection;->mSessionsLock:Ljava/lang/Object;

    monitor-enter v1

    .line 103
    :try_start_0
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection;->mSessions:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 104
    iget-object v2, p0, Lcom/android/server/storage/StorageUserConnection;->mSessions:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    iget-object v1, p0, Lcom/android/server/storage/StorageUserConnection;->mActiveConnection:Lcom/android/server/storage/StorageUserConnection$ActiveConnection;

    invoke-virtual {v1, v0, p2}, Lcom/android/server/storage/StorageUserConnection$ActiveConnection;->startSession(Lcom/android/server/storage/StorageUserConnection$Session;Landroid/os/ParcelFileDescriptor;)V

    .line 107
    return-void

    .line 105
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
