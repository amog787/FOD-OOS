.class public Lcom/android/server/power/AmbientDisplaySuppressionController;
.super Ljava/lang/Object;
.source "AmbientDisplaySuppressionController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "AmbientDisplaySuppressionController"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mSuppressionTokens:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mContext:Landroid/content/Context;

    .line 47
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    .line 48
    return-void
.end method

.method private declared-synchronized getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;
    .locals 1

    monitor-enter p0

    .line 103
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    if-nez v0, :cond_0

    .line 104
    const-string v0, "statusbar"

    .line 105
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    .line 107
    .end local p0    # "this":Lcom/android/server/power/AmbientDisplaySuppressionController;
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 102
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 2
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .line 97
    const-string v0, "AmbientDisplaySuppressionController:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " ambientDisplaySuppressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSuppressionTokens="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public isSuppressed()Z
    .locals 1

    .line 89
    iget-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isSuppressed(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "callingUid"    # I

    .line 82
    iget-object v0, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public suppress(Ljava/lang/String;IZ)V
    .locals 4
    .param p1, "token"    # Ljava/lang/String;
    .param p2, "callingUid"    # I
    .param p3, "suppress"    # Z

    .line 58
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    .line 60
    .local v0, "suppressionToken":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    if-eqz p3, :cond_0

    .line 61
    iget-object v1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 67
    :goto_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/AmbientDisplaySuppressionController;->mSuppressionTokens:Ljava/util/Set;

    monitor-enter v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :try_start_1
    invoke-direct {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->getStatusBar()Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/power/AmbientDisplaySuppressionController;->isSuppressed()Z

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/internal/statusbar/IStatusBarService;->suppressAmbientDisplay(Z)V

    .line 69
    monitor-exit v1

    .line 72
    goto :goto_1

    .line 69
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "suppressionToken":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .end local p0    # "this":Lcom/android/server/power/AmbientDisplaySuppressionController;
    .end local p1    # "token":Ljava/lang/String;
    .end local p2    # "callingUid":I
    .end local p3    # "suppress":Z
    :try_start_2
    throw v2
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    .restart local v0    # "suppressionToken":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Integer;>;"
    .restart local p0    # "this":Lcom/android/server/power/AmbientDisplaySuppressionController;
    .restart local p1    # "token":Ljava/lang/String;
    .restart local p2    # "callingUid":I
    .restart local p3    # "suppress":Z
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "AmbientDisplaySuppressionController"

    const-string v3, "Failed to suppress ambient display"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 73
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_1
    return-void
.end method
