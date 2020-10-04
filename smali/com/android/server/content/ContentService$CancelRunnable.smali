.class Lcom/android/server/content/ContentService$CancelRunnable;
.super Ljava/lang/Object;
.source "ContentService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/content/ContentService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CancelRunnable"
.end annotation


# instance fields
.field private mOnChangeRunnable:Lcom/android/server/content/ContentService$OnChangeRunnable;

.field final synthetic this$0:Lcom/android/server/content/ContentService;


# direct methods
.method public constructor <init>(Lcom/android/server/content/ContentService;Lcom/android/server/content/ContentService$OnChangeRunnable;)V
    .locals 0
    .param p2, "runnable"    # Lcom/android/server/content/ContentService$OnChangeRunnable;

    .line 298
    iput-object p1, p0, Lcom/android/server/content/ContentService$CancelRunnable;->this$0:Lcom/android/server/content/ContentService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/android/server/content/ContentService$CancelRunnable;->mOnChangeRunnable:Lcom/android/server/content/ContentService$OnChangeRunnable;

    .line 300
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 304
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    .line 305
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/content/ContentService$CancelRunnable;->mOnChangeRunnable:Lcom/android/server/content/ContentService$OnChangeRunnable;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " terminate because observer timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ContentService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/android/server/content/ContentService$CancelRunnable;->this$0:Lcom/android/server/content/ContentService;

    invoke-static {v0}, Lcom/android/server/content/ContentService;->access$200(Lcom/android/server/content/ContentService;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    .line 308
    return-void
.end method
