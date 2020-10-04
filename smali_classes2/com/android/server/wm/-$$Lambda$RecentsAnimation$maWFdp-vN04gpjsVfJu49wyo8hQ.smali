.class public final synthetic Lcom/android/server/wm/-$$Lambda$RecentsAnimation$maWFdp-vN04gpjsVfJu49wyo8hQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/RecentsAnimation;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/RecentsAnimation;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$maWFdp-vN04gpjsVfJu49wyo8hQ;->f$0:Lcom/android/server/wm/RecentsAnimation;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$RecentsAnimation$maWFdp-vN04gpjsVfJu49wyo8hQ;->f$0:Lcom/android/server/wm/RecentsAnimation;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimation;->lambda$finishAnimation$1$RecentsAnimation()V

    return-void
.end method
