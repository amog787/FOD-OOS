.class Lcom/android/server/dreams/DreamController$1;
.super Ljava/lang/Object;
.source "DreamController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamController;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamController;

    .line 81
    iput-object p1, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 84
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$000(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$000(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mBound:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    invoke-static {v0}, Lcom/android/server/dreams/DreamController;->access$000(Lcom/android/server/dreams/DreamController;)Lcom/android/server/dreams/DreamController$DreamRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/dreams/DreamController$DreamRecord;->mConnected:Z

    if-nez v0, :cond_0

    .line 85
    const-string v0, "DreamController"

    const-string v1, "Bound dream did not connect in the time allotted"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/server/dreams/DreamController$1;->this$0:Lcom/android/server/dreams/DreamController;

    const/4 v1, 0x1

    const-string/jumbo v2, "slow to connect"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    .line 88
    :cond_0
    return-void
.end method
