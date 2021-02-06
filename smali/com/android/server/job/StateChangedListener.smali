.class public interface abstract Lcom/android/server/job/StateChangedListener;
.super Ljava/lang/Object;
.source "StateChangedListener.java"


# virtual methods
.method public abstract onControllerStateChanged()V
.end method

.method public abstract onDeviceIdleStateChanged(Z)V
.end method

.method public abstract onRestrictedBucketChanged(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
.end method
