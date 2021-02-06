.class public final synthetic Lcom/android/server/display/-$$Lambda$BrightnessTracker$fmx2Mcw7OCEtRi9DwxxGQgA74fg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/display/BrightnessTracker;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/display/-$$Lambda$BrightnessTracker$fmx2Mcw7OCEtRi9DwxxGQgA74fg;->f$0:Lcom/android/server/display/BrightnessTracker;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/-$$Lambda$BrightnessTracker$fmx2Mcw7OCEtRi9DwxxGQgA74fg;->f$0:Lcom/android/server/display/BrightnessTracker;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessTracker;->lambda$scheduleWriteBrightnessTrackerState$0$BrightnessTracker()V

    return-void
.end method
