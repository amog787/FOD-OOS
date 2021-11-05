.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$0xWa9DGxTnoGVHppsM-nng2PygE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

.field public final synthetic f$1:I

.field public final synthetic f$2:Z

.field public final synthetic f$3:J

.field public final synthetic f$4:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;IZJI)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$0xWa9DGxTnoGVHppsM-nng2PygE;->f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    iput p2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$0xWa9DGxTnoGVHppsM-nng2PygE;->f$1:I

    iput-boolean p3, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$0xWa9DGxTnoGVHppsM-nng2PygE;->f$2:Z

    iput-wide p4, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$0xWa9DGxTnoGVHppsM-nng2PygE;->f$3:J

    iput p6, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$0xWa9DGxTnoGVHppsM-nng2PygE;->f$4:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$0xWa9DGxTnoGVHppsM-nng2PygE;->f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    iget v1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$0xWa9DGxTnoGVHppsM-nng2PygE;->f$1:I

    iget-boolean v2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$0xWa9DGxTnoGVHppsM-nng2PygE;->f$2:Z

    iget-wide v3, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$0xWa9DGxTnoGVHppsM-nng2PygE;->f$3:J

    iget v5, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$0xWa9DGxTnoGVHppsM-nng2PygE;->f$4:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceClassActivityChanged$0$NetworkManagementService$NetdUnsolicitedEventListener(IZJI)V

    return-void
.end method
