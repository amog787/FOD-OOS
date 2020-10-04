.class public interface abstract Lcom/oneplus/houston/common/client/observer/IListener;
.super Ljava/lang/Object;
.source "IListener.java"


# virtual methods
.method public abstract builder(Lcom/oneplus/houston/common/client/AbsEventCallback;)Landroid/content/Intent;
.end method

.method public abstract builder(Landroid/content/Intent;)Lcom/oneplus/houston/common/client/AbsEventCallback;
.end method

.method public abstract compareObserver(Lcom/oneplus/houston/common/client/AbsEventCallback;Lcom/oneplus/houston/common/client/AbsEventCallback;)Z
.end method

.method public abstract isReachThreshold(Lcom/oneplus/houston/common/client/Event;)Z
.end method

.method public abstract updateTransfromConfig(Lcom/oneplus/houston/common/client/AbsEventCallback;)I
.end method
