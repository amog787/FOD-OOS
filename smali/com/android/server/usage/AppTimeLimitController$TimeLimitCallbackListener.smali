.class public interface abstract Lcom/android/server/usage/AppTimeLimitController$TimeLimitCallbackListener;
.super Ljava/lang/Object;
.source "AppTimeLimitController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/usage/AppTimeLimitController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TimeLimitCallbackListener"
.end annotation


# virtual methods
.method public abstract onLimitReached(IIJJLandroid/app/PendingIntent;)V
.end method

.method public abstract onSessionEnd(IIJLandroid/app/PendingIntent;)V
.end method
