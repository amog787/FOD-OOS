.class public final synthetic Lcom/android/server/timedetector/-$$Lambda$lkjIbFi2SczFhCGbzNmkRxmPS0M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/timedetector/TimeDetectorStrategy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/timedetector/TimeDetectorStrategy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/timedetector/-$$Lambda$lkjIbFi2SczFhCGbzNmkRxmPS0M;->f$0:Lcom/android/server/timedetector/TimeDetectorStrategy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/timedetector/-$$Lambda$lkjIbFi2SczFhCGbzNmkRxmPS0M;->f$0:Lcom/android/server/timedetector/TimeDetectorStrategy;

    invoke-interface {v0}, Lcom/android/server/timedetector/TimeDetectorStrategy;->handleAutoTimeDetectionChanged()V

    return-void
.end method
