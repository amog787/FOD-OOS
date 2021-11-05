.class Lcom/android/server/dreams/DreamManagerService$3;
.super Ljava/lang/Object;
.source "DreamManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/dreams/DreamManagerService;->stopDreamLocked(ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;

.field final synthetic val$immediate:Z

.field final synthetic val$reason:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/dreams/DreamManagerService;ZLjava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    .line 468
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    iput-boolean p2, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$immediate:Z

    iput-object p3, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$reason:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 471
    const-string v0, "DreamManagerService"

    const-string v1, "Performing gentle wake from dream."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 472
    iget-object v0, p0, Lcom/android/server/dreams/DreamManagerService$3;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v0}, Lcom/android/server/dreams/DreamManagerService;->access$500(Lcom/android/server/dreams/DreamManagerService;)Lcom/android/server/dreams/DreamController;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$immediate:Z

    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$3;->val$reason:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/dreams/DreamController;->stopDream(ZLjava/lang/String;)V

    .line 473
    return-void
.end method
