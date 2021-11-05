.class public final synthetic Lcom/android/server/timedetector/-$$Lambda$TimeDetectorService$-psn4dtQQi-8j8LFHWcI7Y6I83U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorService;

.field public final synthetic f$1:Landroid/app/timedetector/TelephonyTimeSuggestion;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;Landroid/app/timedetector/TelephonyTimeSuggestion;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/-$$Lambda$TimeDetectorService$-psn4dtQQi-8j8LFHWcI7Y6I83U;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iput-object p2, p0, Lcom/android/server/timedetector/-$$Lambda$TimeDetectorService$-psn4dtQQi-8j8LFHWcI7Y6I83U;->f$1:Landroid/app/timedetector/TelephonyTimeSuggestion;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/timedetector/-$$Lambda$TimeDetectorService$-psn4dtQQi-8j8LFHWcI7Y6I83U;->f$0:Lcom/android/server/timedetector/TimeDetectorService;

    iget-object v1, p0, Lcom/android/server/timedetector/-$$Lambda$TimeDetectorService$-psn4dtQQi-8j8LFHWcI7Y6I83U;->f$1:Landroid/app/timedetector/TelephonyTimeSuggestion;

    invoke-virtual {v0, v1}, Lcom/android/server/timedetector/TimeDetectorService;->lambda$suggestTelephonyTime$0$TimeDetectorService(Landroid/app/timedetector/TelephonyTimeSuggestion;)V

    return-void
.end method
