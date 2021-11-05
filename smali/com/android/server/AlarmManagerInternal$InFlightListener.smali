.class public interface abstract Lcom/android/server/AlarmManagerInternal$InFlightListener;
.super Ljava/lang/Object;
.source "AlarmManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AlarmManagerInternal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InFlightListener"
.end annotation


# virtual methods
.method public abstract broadcastAlarmComplete(I)V
.end method

.method public abstract broadcastAlarmPending(I)V
.end method
