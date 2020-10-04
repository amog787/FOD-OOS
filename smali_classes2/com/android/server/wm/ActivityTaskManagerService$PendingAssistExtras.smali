.class public Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
.super Landroid/os/Binder;
.source "ActivityTaskManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ActivityTaskManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PendingAssistExtras"
.end annotation


# instance fields
.field public final activity:Lcom/android/server/wm/ActivityRecord;

.field public content:Landroid/app/assist/AssistContent;

.field public final extras:Landroid/os/Bundle;

.field public haveResult:Z

.field public final hint:Ljava/lang/String;

.field public final intent:Landroid/content/Intent;

.field public isHome:Z

.field public final receiver:Landroid/app/IAssistDataReceiver;

.field public receiverExtras:Landroid/os/Bundle;

.field public result:Landroid/os/Bundle;

.field public structure:Landroid/app/assist/AssistStructure;

.field final synthetic this$0:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final userHandle:I


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;I)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_activity"    # Lcom/android/server/wm/ActivityRecord;
    .param p3, "_extras"    # Landroid/os/Bundle;
    .param p4, "_intent"    # Landroid/content/Intent;
    .param p5, "_hint"    # Ljava/lang/String;
    .param p6, "_receiver"    # Landroid/app/IAssistDataReceiver;
    .param p7, "_receiverExtras"    # Landroid/os/Bundle;
    .param p8, "_userHandle"    # I

    .line 3900
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 3892
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z

    .line 3893
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    .line 3894
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    .line 3895
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    .line 3901
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    .line 3902
    iput-object p3, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    .line 3903
    iput-object p4, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    .line 3904
    iput-object p5, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    .line 3905
    iput-object p6, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    .line 3906
    iput-object p7, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    .line 3907
    iput p8, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->userHandle:I

    .line 3908
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 3912
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAssistContextExtras failed: timeout retrieving from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    monitor-enter p0

    .line 3914
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z

    .line 3915
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 3916
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3917
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->this$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService;->access$300(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V

    .line 3918
    return-void

    .line 3916
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
