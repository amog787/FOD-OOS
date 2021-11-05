.class public interface abstract Lcom/android/server/wm/ActivityMetricsLaunchObserver;
.super Ljava/lang/Object;
.source "ActivityMetricsLaunchObserver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityMetricsLaunchObserver$ActivityRecordProto;,
        Lcom/android/server/wm/ActivityMetricsLaunchObserver$Temperature;
    }
.end annotation


# static fields
.field public static final TEMPERATURE_COLD:I = 0x1

.field public static final TEMPERATURE_HOT:I = 0x3

.field public static final TEMPERATURE_WARM:I = 0x2


# virtual methods
.method public abstract onActivityLaunchCancelled([B)V
.end method

.method public abstract onActivityLaunchFinished([BJ)V
.end method

.method public abstract onActivityLaunched([BI)V
.end method

.method public abstract onIntentFailed()V
.end method

.method public abstract onIntentStarted(Landroid/content/Intent;J)V
.end method

.method public abstract onReportFullyDrawn([BJ)V
.end method
