.class public final synthetic Lcom/android/server/wm/-$$Lambda$InsetsPolicy$cTZ13xcy5owJXLQN7XmgEsABsgE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/wm/InsetsPolicy;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/InsetsPolicy;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$cTZ13xcy5owJXLQN7XmgEsABsgE;->f$0:Lcom/android/server/wm/InsetsPolicy;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$InsetsPolicy$cTZ13xcy5owJXLQN7XmgEsABsgE;->f$0:Lcom/android/server/wm/InsetsPolicy;

    invoke-virtual {v0}, Lcom/android/server/wm/InsetsPolicy;->lambda$hideTransient$2$InsetsPolicy()V

    return-void
.end method
