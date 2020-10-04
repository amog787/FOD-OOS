.class public final synthetic Lcom/android/server/wm/-$$Lambda$yVRF8YoeNdTa8GR1wDStVsHu8xM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/WindowContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/WindowContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$yVRF8YoeNdTa8GR1wDStVsHu8xM;->f$0:Lcom/android/server/wm/WindowContainer;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$yVRF8YoeNdTa8GR1wDStVsHu8xM;->f$0:Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished()V

    return-void
.end method
