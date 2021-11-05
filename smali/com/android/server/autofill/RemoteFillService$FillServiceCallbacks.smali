.class public interface abstract Lcom/android/server/autofill/RemoteFillService$FillServiceCallbacks;
.super Ljava/lang/Object;
.source "RemoteFillService.java"

# interfaces
.implements Lcom/android/internal/infra/AbstractRemoteService$VultureCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/RemoteFillService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "FillServiceCallbacks"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/infra/AbstractRemoteService$VultureCallback<",
        "Lcom/android/server/autofill/RemoteFillService;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract onFillRequestFailure(ILjava/lang/CharSequence;)V
.end method

.method public abstract onFillRequestSuccess(ILandroid/service/autofill/FillResponse;Ljava/lang/String;I)V
.end method

.method public abstract onFillRequestTimeout(I)V
.end method

.method public abstract onSaveRequestFailure(Ljava/lang/CharSequence;Ljava/lang/String;)V
.end method

.method public abstract onSaveRequestSuccess(Ljava/lang/String;Landroid/content/IntentSender;)V
.end method
