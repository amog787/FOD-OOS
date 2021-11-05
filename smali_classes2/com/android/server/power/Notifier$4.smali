.class Lcom/android/server/power/Notifier$4;
.super Ljava/lang/Object;
.source "Notifier.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/power/Notifier;->handleLateInteractiveChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/Notifier;

.field final synthetic val$interactiveChangeLatency:I

.field final synthetic val$why:I


# direct methods
.method constructor <init>(Lcom/android/server/power/Notifier;II)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/Notifier;

    .line 529
    iput-object p1, p0, Lcom/android/server/power/Notifier$4;->this$0:Lcom/android/server/power/Notifier;

    iput p2, p0, Lcom/android/server/power/Notifier$4;->val$why:I

    iput p3, p0, Lcom/android/server/power/Notifier$4;->val$interactiveChangeLatency:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 532
    new-instance v0, Landroid/metrics/LogMaker;

    const/16 v1, 0xc6

    invoke-direct {v0, v1}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 533
    .local v0, "log":Landroid/metrics/LogMaker;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 534
    iget v1, p0, Lcom/android/server/power/Notifier$4;->val$why:I

    invoke-virtual {v0, v1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 535
    iget v1, p0, Lcom/android/server/power/Notifier$4;->val$interactiveChangeLatency:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/metrics/LogMaker;->setLatency(J)Landroid/metrics/LogMaker;

    .line 536
    iget-object v1, p0, Lcom/android/server/power/Notifier$4;->this$0:Lcom/android/server/power/Notifier;

    .line 537
    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$100(Lcom/android/server/power/Notifier;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 536
    const/16 v2, 0x69e

    invoke-virtual {v0, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 538
    invoke-static {v0}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 539
    iget v8, p0, Lcom/android/server/power/Notifier$4;->val$interactiveChangeLatency:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/EventLogTags;->writePowerScreenState(IIJII)V

    .line 540
    iget-object v1, p0, Lcom/android/server/power/Notifier$4;->this$0:Lcom/android/server/power/Notifier;

    invoke-static {v1}, Lcom/android/server/power/Notifier;->access$300(Lcom/android/server/power/Notifier;)Lcom/android/server/policy/WindowManagerPolicy;

    move-result-object v1

    iget v2, p0, Lcom/android/server/power/Notifier$4;->val$why:I

    invoke-interface {v1, v2}, Lcom/android/server/policy/WindowManagerPolicy;->finishedWakingUp(I)V

    .line 541
    return-void
.end method
