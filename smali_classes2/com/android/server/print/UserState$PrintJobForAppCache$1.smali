.class Lcom/android/server/print/UserState$PrintJobForAppCache$1;
.super Ljava/lang/Object;
.source "UserState.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/print/UserState$PrintJobForAppCache;->onPrintJobCreated(Landroid/os/IBinder;ILandroid/print/PrintJobInfo;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

.field final synthetic val$appId:I

.field final synthetic val$creator:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Lcom/android/server/print/UserState$PrintJobForAppCache;Landroid/os/IBinder;I)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/print/UserState$PrintJobForAppCache;

    .line 1748
    iput-object p1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    iput-object p2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$creator:Landroid/os/IBinder;

    iput p3, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$appId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 3

    .line 1751
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$creator:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 1752
    iget-object v0, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    iget-object v0, v0, Lcom/android/server/print/UserState$PrintJobForAppCache;->this$0:Lcom/android/server/print/UserState;

    invoke-static {v0}, Lcom/android/server/print/UserState;->access$200(Lcom/android/server/print/UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 1753
    :try_start_0
    iget-object v1, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->this$1:Lcom/android/server/print/UserState$PrintJobForAppCache;

    invoke-static {v1}, Lcom/android/server/print/UserState$PrintJobForAppCache;->access$1000(Lcom/android/server/print/UserState$PrintJobForAppCache;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/android/server/print/UserState$PrintJobForAppCache$1;->val$appId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 1754
    monitor-exit v0

    .line 1755
    return-void

    .line 1754
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
