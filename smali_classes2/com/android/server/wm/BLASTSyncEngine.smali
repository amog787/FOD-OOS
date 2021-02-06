.class Lcom/android/server/wm/BLASTSyncEngine;
.super Ljava/lang/Object;
.source "BLASTSyncEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/BLASTSyncEngine$SyncState;,
        Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BLASTSyncEngine"


# instance fields
.field private mNextSyncId:I

.field private final mPendingSyncs:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/wm/BLASTSyncEngine$SyncState;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 99
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncs:Landroid/util/ArrayMap;

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/BLASTSyncEngine;)Landroid/util/ArrayMap;
    .locals 1
    .param p0, "x0"    # Lcom/android/server/wm/BLASTSyncEngine;

    .line 49
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncs:Landroid/util/ArrayMap;

    return-object v0
.end method


# virtual methods
.method addToSyncSet(ILcom/android/server/wm/WindowContainer;)Z
    .locals 2
    .param p1, "id"    # I
    .param p2, "wc"    # Lcom/android/server/wm/WindowContainer;

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;

    .line 113
    .local v0, "st":Lcom/android/server/wm/BLASTSyncEngine$SyncState;
    invoke-virtual {v0, p2}, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->addToSync(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    return v1
.end method

.method setReady(I)V
    .locals 2
    .param p1, "id"    # I

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncs:Landroid/util/ArrayMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/BLASTSyncEngine$SyncState;

    .line 118
    .local v0, "st":Lcom/android/server/wm/BLASTSyncEngine$SyncState;
    invoke-virtual {v0}, Lcom/android/server/wm/BLASTSyncEngine$SyncState;->setReady()V

    .line 119
    return-void
.end method

.method startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;)I
    .locals 4
    .param p1, "listener"    # Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    .line 105
    iget v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 106
    .local v0, "id":I
    new-instance v1, Lcom/android/server/wm/BLASTSyncEngine$SyncState;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/server/wm/BLASTSyncEngine$SyncState;-><init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;I)V

    .line 107
    .local v1, "s":Lcom/android/server/wm/BLASTSyncEngine$SyncState;
    iget-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncs:Landroid/util/ArrayMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return v0
.end method
