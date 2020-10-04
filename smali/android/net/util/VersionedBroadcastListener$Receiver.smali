.class Landroid/net/util/VersionedBroadcastListener$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "VersionedBroadcastListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/util/VersionedBroadcastListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Receiver"
.end annotation


# instance fields
.field public final atomicGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final callback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field public final generationNumber:I

.field public final tag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Ljava/util/function/Consumer;)V
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "atomicGenerationNumber"    # Ljava/util/concurrent/atomic/AtomicInteger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicInteger;",
            "Ljava/util/function/Consumer<",
            "Landroid/content/Intent;",
            ">;)V"
        }
    .end annotation

    .line 89
    .local p3, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Landroid/content/Intent;>;"
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 90
    iput-object p1, p0, Landroid/net/util/VersionedBroadcastListener$Receiver;->tag:Ljava/lang/String;

    .line 91
    iput-object p2, p0, Landroid/net/util/VersionedBroadcastListener$Receiver;->atomicGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 92
    iput-object p3, p0, Landroid/net/util/VersionedBroadcastListener$Receiver;->callback:Ljava/util/function/Consumer;

    .line 93
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    iput v0, p0, Landroid/net/util/VersionedBroadcastListener$Receiver;->generationNumber:I

    .line 94
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 98
    iget-object v0, p0, Landroid/net/util/VersionedBroadcastListener$Receiver;->atomicGenerationNumber:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 104
    .local v0, "currentGenerationNumber":I
    iget v1, p0, Landroid/net/util/VersionedBroadcastListener$Receiver;->generationNumber:I

    if-eq v1, v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-object v1, p0, Landroid/net/util/VersionedBroadcastListener$Receiver;->callback:Ljava/util/function/Consumer;

    invoke-interface {v1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 107
    return-void
.end method
