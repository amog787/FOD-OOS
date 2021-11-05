.class public final synthetic Lcom/android/server/media/-$$Lambda$SystemMediaRoute2Provider$1$ebcdsGsKcvePyBmWcsYxnmypK0U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/media/SystemMediaRoute2Provider$1;

.field public final synthetic f$1:Landroid/media/AudioRoutesInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/media/SystemMediaRoute2Provider$1;Landroid/media/AudioRoutesInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/media/-$$Lambda$SystemMediaRoute2Provider$1$ebcdsGsKcvePyBmWcsYxnmypK0U;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider$1;

    iput-object p2, p0, Lcom/android/server/media/-$$Lambda$SystemMediaRoute2Provider$1$ebcdsGsKcvePyBmWcsYxnmypK0U;->f$1:Landroid/media/AudioRoutesInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/media/-$$Lambda$SystemMediaRoute2Provider$1$ebcdsGsKcvePyBmWcsYxnmypK0U;->f$0:Lcom/android/server/media/SystemMediaRoute2Provider$1;

    iget-object v1, p0, Lcom/android/server/media/-$$Lambda$SystemMediaRoute2Provider$1$ebcdsGsKcvePyBmWcsYxnmypK0U;->f$1:Landroid/media/AudioRoutesInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/media/SystemMediaRoute2Provider$1;->lambda$dispatchAudioRoutesChanged$0$SystemMediaRoute2Provider$1(Landroid/media/AudioRoutesInfo;)V

    return-void
.end method
