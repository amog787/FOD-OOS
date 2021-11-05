.class public final synthetic Lcom/android/server/am/-$$Lambda$BroadcastQueue$-Rc4kAs41vmqWweLcJR0YLxZ0dM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/am/BroadcastQueue;

.field public final synthetic f$1:Lcom/android/server/am/ProcessRecord;

.field public final synthetic f$2:Lcom/android/server/am/BroadcastRecord;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/BroadcastQueue;Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$-Rc4kAs41vmqWweLcJR0YLxZ0dM;->f$0:Lcom/android/server/am/BroadcastQueue;

    iput-object p2, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$-Rc4kAs41vmqWweLcJR0YLxZ0dM;->f$1:Lcom/android/server/am/ProcessRecord;

    iput-object p3, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$-Rc4kAs41vmqWweLcJR0YLxZ0dM;->f$2:Lcom/android/server/am/BroadcastRecord;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$-Rc4kAs41vmqWweLcJR0YLxZ0dM;->f$0:Lcom/android/server/am/BroadcastQueue;

    iget-object v1, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$-Rc4kAs41vmqWweLcJR0YLxZ0dM;->f$1:Lcom/android/server/am/ProcessRecord;

    iget-object v2, p0, Lcom/android/server/am/-$$Lambda$BroadcastQueue$-Rc4kAs41vmqWweLcJR0YLxZ0dM;->f$2:Lcom/android/server/am/BroadcastRecord;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/BroadcastQueue;->lambda$postActivityStartTokenRemoval$0$BroadcastQueue(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/BroadcastRecord;)V

    return-void
.end method
