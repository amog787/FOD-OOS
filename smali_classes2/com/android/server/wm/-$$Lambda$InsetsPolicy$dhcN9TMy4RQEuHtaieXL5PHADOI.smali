.class public final synthetic Lcom/android/server/wm/-$$Lambda$InsetsPolicy$dhcN9TMy4RQEuHtaieXL5PHADOI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$dhcN9TMy4RQEuHtaieXL5PHADOI;->f$0:Lcom/android/server/wm/InsetsPolicy;

    return-void
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$dhcN9TMy4RQEuHtaieXL5PHADOI;->f$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/InsetsPolicy;->lambda$showTransient$1$InsetsPolicy(J)V

    return-void
.end method
