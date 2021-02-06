.class public final synthetic Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$FdN20WxsHWEvi2kXiLyIn6qmT_8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;


# instance fields
.field public final synthetic f$0:Landroid/app/prediction/AppPredictionSessionId;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/content/pm/ParceledListSlice;


# direct methods
.method public synthetic constructor <init>(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$FdN20WxsHWEvi2kXiLyIn6qmT_8;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    iput-object p2, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$FdN20WxsHWEvi2kXiLyIn6qmT_8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$FdN20WxsHWEvi2kXiLyIn6qmT_8;->f$2:Landroid/content/pm/ParceledListSlice;

    return-void
.end method


# virtual methods
.method public final run(Landroid/os/IInterface;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$FdN20WxsHWEvi2kXiLyIn6qmT_8;->f$0:Landroid/app/prediction/AppPredictionSessionId;

    iget-object v1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$FdN20WxsHWEvi2kXiLyIn6qmT_8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$FdN20WxsHWEvi2kXiLyIn6qmT_8;->f$2:Landroid/content/pm/ParceledListSlice;

    check-cast p1, Landroid/service/appprediction/IPredictionService;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService;->lambda$notifyLaunchLocationShownLocked$2(Landroid/app/prediction/AppPredictionSessionId;Ljava/lang/String;Landroid/content/pm/ParceledListSlice;Landroid/service/appprediction/IPredictionService;)V

    return-void
.end method
