.class Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;
.super Landroid/content/IIntentSender$Stub;
.source "RestoreUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    .line 209
    iput-object p1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;->this$0:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    invoke-direct {p0}, Landroid/content/IIntentSender$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public send(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "resolvedType"    # Ljava/lang/String;
    .param p4, "whitelistToken"    # Landroid/os/IBinder;
    .param p5, "finishedReceiver"    # Landroid/content/IIntentReceiver;
    .param p6, "requiredPermission"    # Ljava/lang/String;
    .param p7, "options"    # Landroid/os/Bundle;

    .line 213
    iget-object v0, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;->this$0:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    invoke-static {v0}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->access$100(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 214
    :try_start_0
    iget-object v1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;->this$0:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    invoke-static {v1, p2}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->access$202(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;Landroid/content/Intent;)Landroid/content/Intent;

    .line 215
    iget-object v1, p0, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver$1;->this$0:Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;

    invoke-static {v1}, Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;->access$100(Lcom/android/server/backup/utils/RestoreUtils$LocalIntentReceiver;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 216
    monitor-exit v0

    .line 217
    return-void

    .line 216
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
