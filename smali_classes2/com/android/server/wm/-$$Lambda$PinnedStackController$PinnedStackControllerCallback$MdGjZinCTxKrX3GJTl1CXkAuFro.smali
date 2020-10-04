.class public final synthetic Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$MdGjZinCTxKrX3GJTl1CXkAuFro;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

.field private final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$MdGjZinCTxKrX3GJTl1CXkAuFro;->f$0:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

    iput p2, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$MdGjZinCTxKrX3GJTl1CXkAuFro;->f$1:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$MdGjZinCTxKrX3GJTl1CXkAuFro;->f$0:Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;

    iget v1, p0, Lcom/android/server/wm/-$$Lambda$PinnedStackController$PinnedStackControllerCallback$MdGjZinCTxKrX3GJTl1CXkAuFro;->f$1:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/PinnedStackController$PinnedStackControllerCallback;->lambda$setMinEdgeSize$1$PinnedStackController$PinnedStackControllerCallback(I)V

    return-void
.end method
