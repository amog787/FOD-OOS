.class public final synthetic Lcom/android/server/om/-$$Lambda$IdmapDaemon$Connection$4U-n0RSv1BPv15mvu8B8zXARcpk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/om/IdmapDaemon$Connection;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/om/IdmapDaemon$Connection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/om/-$$Lambda$IdmapDaemon$Connection$4U-n0RSv1BPv15mvu8B8zXARcpk;->f$0:Lcom/android/server/om/IdmapDaemon$Connection;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/om/-$$Lambda$IdmapDaemon$Connection$4U-n0RSv1BPv15mvu8B8zXARcpk;->f$0:Lcom/android/server/om/IdmapDaemon$Connection;

    invoke-virtual {v0}, Lcom/android/server/om/IdmapDaemon$Connection;->lambda$close$0$IdmapDaemon$Connection()V

    return-void
.end method
