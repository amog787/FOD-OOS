.class public interface abstract Lcom/android/server/job/controllers/idle/IdlenessTracker;
.super Ljava/lang/Object;
.source "IdlenessTracker.java"


# virtual methods
.method public abstract dump(Landroid/util/proto/ProtoOutputStream;J)V
.end method

.method public abstract dump(Ljava/io/PrintWriter;)V
.end method

.method public abstract isIdle()Z
.end method

.method public abstract startTracking(Landroid/content/Context;Lcom/android/server/job/controllers/idle/IdlenessListener;)V
.end method
