.class public final synthetic Lcom/android/server/backup/transport/-$$Lambda$TransportClient$ciIUj0x0CRg93UETUpy2FB5aqCQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/backup/transport/TransportClient;

.field public final synthetic f$1:Lcom/android/server/backup/transport/TransportConnectionListener;

.field public final synthetic f$2:Lcom/android/internal/backup/IBackupTransport;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/backup/transport/TransportClient;Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/backup/transport/-$$Lambda$TransportClient$ciIUj0x0CRg93UETUpy2FB5aqCQ;->f$0:Lcom/android/server/backup/transport/TransportClient;

    iput-object p2, p0, Lcom/android/server/backup/transport/-$$Lambda$TransportClient$ciIUj0x0CRg93UETUpy2FB5aqCQ;->f$1:Lcom/android/server/backup/transport/TransportConnectionListener;

    iput-object p3, p0, Lcom/android/server/backup/transport/-$$Lambda$TransportClient$ciIUj0x0CRg93UETUpy2FB5aqCQ;->f$2:Lcom/android/internal/backup/IBackupTransport;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backup/transport/-$$Lambda$TransportClient$ciIUj0x0CRg93UETUpy2FB5aqCQ;->f$0:Lcom/android/server/backup/transport/TransportClient;

    iget-object v1, p0, Lcom/android/server/backup/transport/-$$Lambda$TransportClient$ciIUj0x0CRg93UETUpy2FB5aqCQ;->f$1:Lcom/android/server/backup/transport/TransportConnectionListener;

    iget-object v2, p0, Lcom/android/server/backup/transport/-$$Lambda$TransportClient$ciIUj0x0CRg93UETUpy2FB5aqCQ;->f$2:Lcom/android/internal/backup/IBackupTransport;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/backup/transport/TransportClient;->lambda$notifyListener$1$TransportClient(Lcom/android/server/backup/transport/TransportConnectionListener;Lcom/android/internal/backup/IBackupTransport;)V

    return-void
.end method
