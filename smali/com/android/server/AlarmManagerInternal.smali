.class public interface abstract Lcom/android/server/AlarmManagerInternal;
.super Ljava/lang/Object;
.source "AlarmManagerInternal.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/AlarmManagerInternal$InFlightListener;
    }
.end annotation


# virtual methods
.method public abstract isIdling()Z
.end method

.method public abstract registerInFlightListener(Lcom/android/server/AlarmManagerInternal$InFlightListener;)V
.end method

.method public abstract removeAlarmsForUid(I)V
.end method
