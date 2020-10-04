.class public Lcom/android/server/appprediction/AppPredictionPerUserService;
.super Lcom/android/server/infra/AbstractPerUserSystemService;
.source "AppPredictionPerUserService.java"

# interfaces
.implements Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractPerUserSystemService<",
        "Lcom/android/server/appprediction/AppPredictionPerUserService;",
        "Lcom/android/server/appprediction/AppPredictionManagerService;",
        ">;",
        "Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mSessionInfos:Landroid/util/ArrayMap;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mZombie:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const-class v0, Lcom/android/server/appprediction/AppPredictionPerUserService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    return-void
.end method

.method protected constructor <init>(Lcom/android/server/appprediction/AppPredictionManagerService;Ljava/lang/Object;I)V
    .locals 1
    .param p1, "master"    # Lcom/android/server/appprediction/AppPredictionManagerService;
    .param p2, "lock"    # Ljava/lang/Object;
    .param p3, "userId"    # I

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/infra/AbstractPerUserSystemService;-><init>(Lcom/android/server/infra/AbstractMasterSystemService;Ljava/lang/Object;I)V

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    .line 69
    return-void
.end method

.method private getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;
    .locals 11
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 282
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    if-nez v0, :cond_2

    .line 283
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getComponentNameLocked()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "serviceName":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 285
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v1, Lcom/android/server/appprediction/AppPredictionManagerService;

    iget-boolean v1, v1, Lcom/android/server/appprediction/AppPredictionManagerService;->verbose:Z

    if-eqz v1, :cond_0

    .line 286
    sget-object v1, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "getRemoteServiceLocked(): not set"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    :cond_0
    const/4 v1, 0x0

    return-object v1

    .line 290
    :cond_1
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 292
    .local v1, "serviceComponent":Landroid/content/ComponentName;
    new-instance v10, Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getContext()Landroid/content/Context;

    move-result-object v3

    iget v6, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mUserId:I

    iget-object v2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/appprediction/AppPredictionManagerService;

    .line 294
    invoke-virtual {v2}, Lcom/android/server/appprediction/AppPredictionManagerService;->isBindInstantServiceAllowed()Z

    move-result v8

    iget-object v2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mMaster:Lcom/android/server/infra/AbstractMasterSystemService;

    check-cast v2, Lcom/android/server/appprediction/AppPredictionManagerService;

    iget-boolean v9, v2, Lcom/android/server/appprediction/AppPredictionManagerService;->verbose:Z

    const-string v4, "android.service.appprediction.AppPredictionService"

    move-object v2, v10

    move-object v5, v1

    move-object v7, p0

    invoke-direct/range {v2 .. v9}, Lcom/android/server/appprediction/RemoteAppPredictionService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;ZZ)V

    iput-object v10, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 297
    .end local v0    # "serviceName":Ljava/lang/String;
    .end local v1    # "serviceComponent":Landroid/content/ComponentName;
    :cond_2
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    return-object v0
.end method

.method public static synthetic lambda$ot809pjFOVEJ6shAJalMZ9_QhCo(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->removeAppPredictionSessionInfo(Landroid/app/prediction/AppPredictionSessionId;)V

    return-void
.end method

.method private removeAppPredictionSessionInfo(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 3
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;

    .line 271
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 272
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeAppPredictionSessionInfo(): sessionId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 275
    :try_start_0
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    monitor-exit v0

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private resurrectSessionsLocked()V
    .locals 4

    .line 259
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 260
    .local v0, "numSessions":I
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 261
    sget-object v1, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resurrecting remote service ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") on "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " sessions."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 266
    .local v2, "sessionInfo":Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
    invoke-virtual {v2, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->resurrectSessionLocked(Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    .line 267
    .end local v2    # "sessionInfo":Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
    goto :goto_0

    .line 268
    :cond_1
    return-void
.end method


# virtual methods
.method protected newServiceInfoLocked(Landroid/content/ComponentName;)Landroid/content/pm/ServiceInfo;
    .locals 4
    .param p1, "serviceComponent"    # Landroid/content/ComponentName;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/pm/PackageManager$NameNotFoundException;
        }
    .end annotation

    .line 77
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/16 v1, 0x80

    iget v2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    .local v0, "si":Landroid/content/pm/ServiceInfo;
    nop

    .line 85
    return-object v0

    .line 79
    .end local v0    # "si":Landroid/content/pm/ServiceInfo;
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Landroid/content/pm/PackageManager$NameNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get service for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public notifyAppTargetEventLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "event"    # Landroid/app/prediction/AppTargetEvent;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 125
    .local v0, "service":Lcom/android/server/appprediction/RemoteAppPredictionService;
    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {v0, p1, p2}, Lcom/android/server/appprediction/RemoteAppPredictionService;->notifyAppTargetEvent(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppTargetEvent;)V

    .line 128
    :cond_0
    return-void
.end method

.method public notifyLaunchLocationShownLocked(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "launchLocation"    # Ljava/lang/String;
    .param p3, "targetIds"    # Landroid/content/pm/ParceledListSlice;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 136
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 137
    .local v0, "service":Lcom/android/server/appprediction/RemoteAppPredictionService;
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/appprediction/RemoteAppPredictionService;->notifyLaunchLocationShown(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V

    .line 140
    :cond_0
    return-void
.end method

.method public onConnectedStateChanged(Z)V
    .locals 3
    .param p1, "connected"    # Z

    .line 225
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConnectedStateChanged(): connected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    if-eqz p1, :cond_3

    .line 229
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 230
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    if-eqz v1, :cond_2

    .line 232
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    if-nez v1, :cond_1

    .line 233
    sget-object v1, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    const-string v2, "Cannot resurrect sessions because remote service is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    monitor-exit v0

    return-void

    .line 236
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    .line 237
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->resurrectSessionsLocked()V

    .line 239
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 241
    :cond_3
    :goto_0
    return-void
.end method

.method public onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 4
    .param p1, "context"    # Landroid/app/prediction/AppPredictionContext;
    .param p2, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 108
    .local v0, "service":Lcom/android/server/appprediction/RemoteAppPredictionService;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p1, p2}, Lcom/android/server/appprediction/RemoteAppPredictionService;->onCreatePredictionSession(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    .line 111
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p2}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    new-instance v2, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    new-instance v3, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$ot809pjFOVEJ6shAJalMZ9_QhCo;

    invoke-direct {v3, p0}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$ot809pjFOVEJ6shAJalMZ9_QhCo;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    invoke-direct {v2, p2, p1, v3}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;-><init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;)V

    invoke-virtual {v1, p2, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    :cond_0
    return-void
.end method

.method public onDestroyPredictionSessionLocked(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 204
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 205
    .local v0, "service":Lcom/android/server/appprediction/RemoteAppPredictionService;
    if-eqz v0, :cond_0

    .line 206
    invoke-virtual {v0, p1}, Lcom/android/server/appprediction/RemoteAppPredictionService;->onDestroyPredictionSession(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 208
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 209
    .local v1, "sessionInfo":Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
    if-eqz v1, :cond_0

    .line 210
    invoke-virtual {v1}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->destroy()V

    .line 213
    .end local v1    # "sessionInfo":Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
    :cond_0
    return-void
.end method

.method public onFailureOrTimeout(Z)V
    .locals 3
    .param p1, "timedOut"    # Z

    .line 217
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onFailureOrTimeout(): timed out="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    :cond_0
    return-void
.end method

.method public onServiceDied(Lcom/android/server/appprediction/RemoteAppPredictionService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 245
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    sget-object v0, Lcom/android/server/appprediction/AppPredictionPerUserService;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onServiceDied(): service="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 249
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mZombie:Z

    .line 250
    monitor-exit v0

    .line 252
    return-void

    .line 250
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public bridge synthetic onServiceDied(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Lcom/android/server/appprediction/RemoteAppPredictionService;

    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onServiceDied(Lcom/android/server/appprediction/RemoteAppPredictionService;)V

    return-void
.end method

.method public registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 160
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 161
    .local v0, "service":Lcom/android/server/appprediction/RemoteAppPredictionService;
    if-eqz v0, :cond_0

    .line 162
    invoke-virtual {v0, p1, p2}, Lcom/android/server/appprediction/RemoteAppPredictionService;->registerPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 164
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 165
    .local v1, "sessionInfo":Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
    if-eqz v1, :cond_0

    .line 166
    invoke-virtual {v1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->addCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V

    .line 169
    .end local v1    # "sessionInfo":Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
    :cond_0
    return-void
.end method

.method public requestPredictionUpdateLocked(Landroid/app/prediction/AppPredictionSessionId;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 193
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 194
    .local v0, "service":Lcom/android/server/appprediction/RemoteAppPredictionService;
    if-eqz v0, :cond_0

    .line 195
    invoke-virtual {v0, p1}, Lcom/android/server/appprediction/RemoteAppPredictionService;->requestPredictionUpdate(Landroid/app/prediction/AppPredictionSessionId;)V

    .line 197
    :cond_0
    return-void
.end method

.method public sortAppTargetsLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "targets"    # Landroid/content/pm/ParceledListSlice;
    .param p3, "callback"    # Landroid/app/prediction/IPredictionCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 148
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 149
    .local v0, "service":Lcom/android/server/appprediction/RemoteAppPredictionService;
    if-eqz v0, :cond_0

    .line 150
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/appprediction/RemoteAppPredictionService;->sortAppTargets(Landroid/app/prediction/AppPredictionSessionId;Landroid/content/pm/ParceledListSlice;Landroid/app/prediction/IPredictionCallback;)V

    .line 152
    :cond_0
    return-void
.end method

.method public unregisterPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V
    .locals 2
    .param p1, "sessionId"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 177
    invoke-direct {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->getRemoteServiceLocked()Lcom/android/server/appprediction/RemoteAppPredictionService;

    move-result-object v0

    .line 178
    .local v0, "service":Lcom/android/server/appprediction/RemoteAppPredictionService;
    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {v0, p1, p2}, Lcom/android/server/appprediction/RemoteAppPredictionService;->unregisterPredictionUpdates(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    .line 181
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mSessionInfos:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 182
    .local v1, "sessionInfo":Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v1, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->removeCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V

    .line 186
    .end local v1    # "sessionInfo":Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
    :cond_0
    return-void
.end method

.method protected updateLocked(Z)Z
    .locals 2
    .param p1, "disabled"    # Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation

    .line 91
    invoke-super {p0, p1}, Lcom/android/server/infra/AbstractPerUserSystemService;->updateLocked(Z)Z

    move-result v0

    .line 92
    .local v0, "enabledChanged":Z
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/server/appprediction/AppPredictionPerUserService;->isEnabledLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService;->mRemoteService:Lcom/android/server/appprediction/RemoteAppPredictionService;

    .line 98
    :cond_0
    return v0
.end method
