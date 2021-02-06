.class Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;
.super Landroid/os/RemoteCallbackList;
.source "AppPredictionPerUserService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList<",
        "Landroid/app/prediction/IPredictionCallback;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;


# direct methods
.method constructor <init>(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    .line 374
    iput-object p1, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;->this$0:Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallbackDied(Landroid/app/prediction/IPredictionCallback;)V
    .locals 1
    .param p1, "callback"    # Landroid/app/prediction/IPredictionCallback;

    .line 381
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;->this$0:Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    invoke-static {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->access$100(Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 382
    iget-object v0, p0, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;->this$0:Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;

    invoke-virtual {v0}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo;->destroy()V

    .line 384
    :cond_0
    return-void
.end method

.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    .line 374
    check-cast p1, Landroid/app/prediction/IPredictionCallback;

    invoke-virtual {p0, p1}, Lcom/android/server/appprediction/AppPredictionPerUserService$AppPredictionSessionInfo$1;->onCallbackDied(Landroid/app/prediction/IPredictionCallback;)V

    return-void
.end method
