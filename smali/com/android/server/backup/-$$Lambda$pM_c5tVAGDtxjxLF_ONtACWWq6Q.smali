.class public final synthetic Lcom/android/server/backup/-$$Lambda$pM_c5tVAGDtxjxLF_ONtACWWq6Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/TransportManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/TransportManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/-$$Lambda$pM_c5tVAGDtxjxLF_ONtACWWq6Q;->f$0:Lcom/android/server/backup/TransportManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backup/-$$Lambda$pM_c5tVAGDtxjxLF_ONtACWWq6Q;->f$0:Lcom/android/server/backup/TransportManager;

    invoke-virtual {v0}, Lcom/android/server/backup/TransportManager;->registerTransports()V

    return-void
.end method
