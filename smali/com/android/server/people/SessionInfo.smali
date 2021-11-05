.class Lcom/android/server/people/SessionInfo;
.super Ljava/lang/Object;
.source "SessionInfo.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "SessionInfo"


# instance fields
.field private final mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/prediction/IPredictionCallback;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/app/prediction/AppPredictionContext;Lcom/android/server/people/data/DataManager;I)V
    .locals 1
    .param p1, "predictionContext"    # Landroid/app/prediction/AppPredictionContext;
    .param p2, "dataManager"    # Lcom/android/server/people/data/DataManager;
    .param p3, "callingUserId"    # I

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 44
    new-instance v0, Lcom/android/server/people/-$$Lambda$SessionInfo$2OtPK09nVVD0gSsiFnqBuY6yh_M;

    invoke-direct {v0, p0}, Lcom/android/server/people/-$$Lambda$SessionInfo$2OtPK09nVVD0gSsiFnqBuY6yh_M;-><init>(Lcom/android/server/people/SessionInfo;)V

    invoke-static {p1, v0, p2, p3}, Lcom/android/server/people/prediction/AppTargetPredictor;->create(Landroid/app/prediction/AppPredictionContext;Ljava/util/function/Consumer;Lcom/android/server/people/data/DataManager;I)Lcom/android/server/people/prediction/AppTargetPredictor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/people/SessionInfo;->mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

    .line 46
    return-void
.end method

.method public static synthetic lambda$2OtPK09nVVD0gSsiFnqBuY6yh_M(Lcom/android/server/people/SessionInfo;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/people/SessionInfo;->updatePredictions(Ljava/util/List;)V

    return-void
.end method

.method private updatePredictions(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/prediction/AppTarget;",
            ">;)V"
        }
    .end annotation

    .line 65
    .local p1, "targets":Ljava/util/List;, "Ljava/util/List<Landroid/app/prediction/AppTarget;>;"
    iget-object v0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 66
    .local v0, "callbackCount":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 68
    :try_start_0
    iget-object v2, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/prediction/IPredictionCallback;

    new-instance v3, Landroid/content/pm/ParceledListSlice;

    invoke-direct {v3, p1}, Landroid/content/pm/ParceledListSlice;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v3}, Landroid/app/prediction/IPredictionCallback;->onResult(Landroid/content/pm/ParceledListSlice;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_1

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to calling callback"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "SessionInfo"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    .end local v2    # "e":Landroid/os/RemoteException;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 73
    .end local v1    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 74
    return-void
.end method


# virtual methods
.method addCallback(Landroid/app/prediction/IPredictionCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 49
    iget-object v0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 50
    return-void
.end method

.method getPredictor()Lcom/android/server/people/prediction/AppTargetPredictor;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/server/people/SessionInfo;->mAppTargetPredictor:Lcom/android/server/people/prediction/AppTargetPredictor;

    return-object v0
.end method

.method onDestroy()V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 62
    return-void
.end method

.method removeCallback(Landroid/app/prediction/IPredictionCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 53
    iget-object v0, p0, Lcom/android/server/people/SessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 54
    return-void
.end method
