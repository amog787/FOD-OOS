.class public Lcom/android/server/location/AppForegroundHelper;
.super Ljava/lang/Object;
.source "AppForegroundHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;
    }
.end annotation


# static fields
.field private static final FOREGROUND_IMPORTANCE_CUTOFF:I = 0x7d


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-object p1, p0, Lcom/android/server/location/AppForegroundHelper;->mContext:Landroid/content/Context;

    .line 67
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/location/AppForegroundHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 68
    return-void
.end method

.method private static isForeground(I)Z
    .locals 1
    .param p0, "importance"    # I

    .line 56
    const/16 v0, 0x7d

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static synthetic lambda$gltDhiWDJwfMNZ8gJdumXZH8_Hg(Lcom/android/server/location/AppForegroundHelper;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/location/AppForegroundHelper;->onAppForegroundChanged(II)V

    return-void
.end method

.method private onAppForegroundChanged(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "importance"    # I

    .line 97
    invoke-static {p2}, Lcom/android/server/location/AppForegroundHelper;->isForeground(I)Z

    move-result v0

    .line 98
    .local v0, "foreground":Z
    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/server/location/-$$Lambda$AppForegroundHelper$7asxY_maANt1D_AUTchqbCjktH0;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/location/-$$Lambda$AppForegroundHelper$7asxY_maANt1D_AUTchqbCjktH0;-><init>(Lcom/android/server/location/AppForegroundHelper;IZ)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 103
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;

    .line 85
    iget-object v0, p0, Lcom/android/server/location/AppForegroundHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    return-void
.end method

.method public getImportance(I)I
    .locals 3
    .param p1, "uid"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 120
    monitor-enter p0

    .line 121
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/AppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkState(Z)V

    .line 122
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 126
    .local v0, "identity":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/location/AppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v2, p1}, Landroid/app/ActivityManager;->getUidImportance(I)I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 126
    return v2

    .line 128
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 129
    throw v2

    .line 122
    .end local v0    # "identity":J
    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method

.method public isAppForeground(I)Z
    .locals 1
    .param p1, "uid"    # I

    .line 109
    invoke-virtual {p0, p1}, Lcom/android/server/location/AppForegroundHelper;->getImportance(I)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/location/AppForegroundHelper;->isForeground(I)Z

    move-result v0

    return v0
.end method

.method public synthetic lambda$onAppForegroundChanged$0$AppForegroundHelper(IZ)V
    .locals 2
    .param p1, "uid"    # I
    .param p2, "foreground"    # Z

    .line 99
    iget-object v0, p0, Lcom/android/server/location/AppForegroundHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;

    .line 100
    .local v1, "listener":Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;
    invoke-interface {v1, p1, p2}, Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;->onAppForegroundChanged(IZ)V

    .line 101
    .end local v1    # "listener":Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;
    goto :goto_0

    .line 102
    :cond_0
    return-void
.end method

.method public declared-synchronized onSystemReady()V
    .locals 3

    monitor-enter p0

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/AppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 73
    monitor-exit p0

    return-void

    .line 76
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/AppForegroundHelper;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/ActivityManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/location/AppForegroundHelper;->mActivityManager:Landroid/app/ActivityManager;

    .line 77
    new-instance v1, Lcom/android/server/location/-$$Lambda$AppForegroundHelper$gltDhiWDJwfMNZ8gJdumXZH8_Hg;

    invoke-direct {v1, p0}, Lcom/android/server/location/-$$Lambda$AppForegroundHelper$gltDhiWDJwfMNZ8gJdumXZH8_Hg;-><init>(Lcom/android/server/location/AppForegroundHelper;)V

    const/16 v2, 0x7d

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManager;->addOnUidImportanceListener(Landroid/app/ActivityManager$OnUidImportanceListener;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 71
    .end local p0    # "this":Lcom/android/server/location/AppForegroundHelper;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeListener(Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/server/location/AppForegroundHelper$AppForegroundListener;

    .line 92
    iget-object v0, p0, Lcom/android/server/location/AppForegroundHelper;->mListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 93
    return-void
.end method
