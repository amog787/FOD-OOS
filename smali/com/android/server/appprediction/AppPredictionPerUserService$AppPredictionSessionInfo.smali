.class final Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
.super Ljava/lang/Object;
.source "AppPredictionPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appprediction/AppPredictionPerUserService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AppPredictionSessionInfo"
.end annotation


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private final mCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/prediction/IPredictionCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mPredictionContext:Landroid/app/prediction/AppPredictionContext;

.field private final mRemoveSessionInfoAction:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/app/prediction/AppPredictionSessionId;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:Landroid/app/prediction/AppPredictionSessionId;

.field private final mUsesPeopleService:Z


# direct methods
.method constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/AppPredictionContext;ZLjava/util/function/Consumer;)V
    .locals 1
    .param p1, "id"    # Landroid/app/prediction/AppPredictionSessionId;
    .param p2, "predictionContext"    # Landroid/app/prediction/AppPredictionContext;
    .param p3, "usesPeopleService"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/prediction/AppPredictionSessionId;",
            "Landroid/app/prediction/AppPredictionContext;",
            "Z",
            "Ljava/util/function/Consumer<",
            "Landroid/app/prediction/AppPredictionSessionId;",
            ">;)V"
        }
    .end annotation

    .line 391
    .local p4, "removeSessionInfoAction":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/app/prediction/AppPredictionSessionId;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 373
    new-instance v0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;

    invoke-direct {v0, p0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)V

    iput-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 395
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    .line 396
    iput-object p2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    .line 397
    iput-boolean p3, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    .line 398
    iput-object p4, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mRemoveSessionInfoAction:Ljava/util/function/Consumer;

    .line 399
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 362
    iget-boolean v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mUsesPeopleService:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Landroid/os/RemoteCallbackList;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 362
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    return-object v0
.end method


# virtual methods
.method addCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 406
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 407
    return-void
.end method

.method destroy()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 423
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mRemoveSessionInfoAction:Ljava/util/function/Consumer;

    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-interface {v0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 424
    return-void
.end method

.method public synthetic lambda$resurrectSessionLocked$0$AppPredictionPerUserService$AppPredictionSessionInfo(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/IPredictionCallback;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;
    .param p2, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 435
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-virtual {p1, v0, p2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->registerPredictionUpdatesLocked(Landroid/app/prediction/AppPredictionSessionId;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method

.method removeCallbackLocked(Landroid/app/prediction/IPredictionCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 414
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 415
    return-void
.end method

.method resurrectSessionLocked(Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 3
    .param p1, "service"    # Lcom/android/server/appprediction/AppPredictionPerUserService;

    .line 427
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    .line 433
    .local v0, "callbackCount":I
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mPredictionContext:Landroid/app/prediction/AppPredictionContext;

    iget-object v2, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mSessionId:Landroid/app/prediction/AppPredictionSessionId;

    invoke-virtual {p1, v1, v2}, Lcom/android/server/appprediction/AppPredictionPerUserService;->onCreatePredictionSessionLocked(Landroid/app/prediction/AppPredictionContext;Landroid/app/prediction/AppPredictionSessionId;)V

    .line 434
    iget-object v1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->mCallbacks:Landroid/os/RemoteCallbackList;

    new-instance v2, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$AppPredictionSessionInfo$LQ7iu1YPVHeNHnTTNfaw5e_68Z4;

    invoke-direct {v2, p0, p1}, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$AppPredictionSessionInfo$LQ7iu1YPVHeNHnTTNfaw5e_68Z4;-><init>(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;Lcom/android/server/appprediction/AppPredictionPerUserService;)V

    invoke-virtual {v1, v2}, Landroid/os/RemoteCallbackList;->broadcast(Ljava/util/function/Consumer;)V

    .line 436
    return-void
.end method
