.class public interface abstract Lcom/android/server/appprediction/RemoteAppPredictionService$RemoteAppPredictionServiceCallbacks;
.super Ljava/lang/Object;
.source "RemoteAppPredictionService.java"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/appprediction/RemoteAppPredictionService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "RemoteAppPredictionServiceCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
        "Lcom/android/server/appprediction/RemoteAppPredictionService;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onConnectedStateChanged(Z)V
.end method

.method public abstract onFailureOrTimeout(Z)V
.end method
