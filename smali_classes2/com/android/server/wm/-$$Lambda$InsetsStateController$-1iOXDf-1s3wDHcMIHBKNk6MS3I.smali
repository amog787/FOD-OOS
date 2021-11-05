.class public final synthetic Lcom/android/server/wm/-$$Lambda$InsetsStateController$-1iOXDf-1s3wDHcMIHBKNk6MS3I;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InsetsStateController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsStateController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$-1iOXDf-1s3wDHcMIHBKNk6MS3I;->f$0:Lcom/android/server/wm/InsetsStateController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$InsetsStateController$-1iOXDf-1s3wDHcMIHBKNk6MS3I;->f$0:Lcom/android/server/wm/InsetsStateController;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsStateController;->lambda$notifyPendingInsetsControlChanged$4$InsetsStateController()V

    return-void
.end method
