.class interface abstract Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;
.super Ljava/lang/Object;
.source "BLASTSyncEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/BLASTSyncEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "TransactionReadyListener"
.end annotation


# virtual methods
.method public abstract onTransactionReady(ILjava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Set<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation
.end method
