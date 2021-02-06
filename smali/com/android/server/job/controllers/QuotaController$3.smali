.class Lcom/android/server/job/controllers/QuotaController$3;
.super Landroid/content/BroadcastReceiver;
.source "QuotaController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/QuotaController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/QuotaController;


# direct methods
.method constructor <init>(Lcom/android/server/job/controllers/QuotaController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/job/controllers/QuotaController;

    .line 408
    iput-object p1, p0, Lcom/android/server/job/controllers/QuotaController$3;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 411
    if-nez p2, :cond_0

    .line 412
    return-void

    .line 414
    :cond_0
    const/4 v0, 0x0

    const-string v1, "android.intent.extra.REPLACING"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    return-void

    .line 417
    :cond_1
    const/4 v0, -0x1

    const-string v1, "android.intent.extra.UID"

    invoke-virtual {p2, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 418
    .local v0, "uid":I
    iget-object v1, p0, Lcom/android/server/job/controllers/QuotaController$3;->this$0:Lcom/android/server/job/controllers/QuotaController;

    iget-object v1, v1, Lcom/android/server/job/controllers/QuotaController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 419
    :try_start_0
    iget-object v2, p0, Lcom/android/server/job/controllers/QuotaController$3;->this$0:Lcom/android/server/job/controllers/QuotaController;

    invoke-static {v2}, Lcom/android/server/job/controllers/QuotaController;->access$400(Lcom/android/server/job/controllers/QuotaController;)Landroid/util/SparseSetArray;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/util/SparseSetArray;->remove(I)V

    .line 420
    monitor-exit v1

    .line 421
    return-void

    .line 420
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
