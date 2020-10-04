.class public final synthetic Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$AppPredictionSessionInfo$LQ7iu1YPVHeNHnTTNfaw5e_68Z4;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

.field private final synthetic f$1:Lcom/android/server/appprediction/AppPredictionPerUserService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;Lcom/android/server/appprediction/AppPredictionPerUserService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$AppPredictionSessionInfo$LQ7iu1YPVHeNHnTTNfaw5e_68Z4;->f$0:Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    iput-object p2, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$AppPredictionSessionInfo$LQ7iu1YPVHeNHnTTNfaw5e_68Z4;->f$1:Lcom/android/server/appprediction/AppPredictionPerUserService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$AppPredictionSessionInfo$LQ7iu1YPVHeNHnTTNfaw5e_68Z4;->f$0:Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    iget-object v1, p0, Lcom/android/server/appprediction/-$$Lambda$AppPredictionPerUserService$AppPredictionSessionInfo$LQ7iu1YPVHeNHnTTNfaw5e_68Z4;->f$1:Lcom/android/server/appprediction/AppPredictionPerUserService;

    check-cast p1, Landroid/app/prediction/IPredictionCallback;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->lambda$resurrectSessionLocked$0$AppPredictionPerUserService$AppPredictionSessionInfo(Lcom/android/server/appprediction/AppPredictionPerUserService;Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method
