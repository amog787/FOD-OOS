.class Lcom/android/server/am/AppNotRespondingDialog$1;
.super Landroid/os/Handler;
.source "AppNotRespondingDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppNotRespondingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/AppNotRespondingDialog;


# direct methods
.method constructor <init>(Lcom/android/server/am/AppNotRespondingDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/am/AppNotRespondingDialog;

    .line 161
    iput-object p1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .line 163
    const/4 v0, 0x0

    .line 165
    .local v0, "appErrorIntent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v1}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    const/16 v3, 0x13d

    invoke-static {v1, v3, v2}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 168
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    const/4 v3, 0x3

    if-eq v1, v2, :cond_0

    if-eq v1, v3, :cond_0

    const/4 v2, 0x4

    if-eq v1, v2, :cond_2

    goto :goto_0

    .line 180
    :cond_0
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v1}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 181
    iget-object v2, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v2}, Lcom/android/server/am/AppNotRespondingDialog;->access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    .line 183
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget v4, p1, Landroid/os/Message;->what:I

    const/4 v5, 0x0

    if-ne v4, v3, :cond_1

    .line 184
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    .line 185
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 184
    invoke-virtual {v3, v2, v6, v7, v5}, Lcom/android/server/am/AppErrors;->createAppErrorIntentLocked(Lcom/android/server/am/ProcessRecord;JLandroid/app/ApplicationErrorReport$CrashInfo;)Landroid/content/Intent;

    move-result-object v3

    move-object v0, v3

    .line 188
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessRecord;->setNotResponding(Z)V

    .line 189
    iput-object v5, v2, Lcom/android/server/am/ProcessRecord;->notRespondingReport:Landroid/app/ActivityManager$ProcessErrorStateInfo;

    .line 190
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getDialogController()Lcom/android/server/am/ProcessRecord$ErrorDialogController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord$ErrorDialogController;->clearAnrDialogs()V

    .line 191
    iget-object v3, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v3}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActiveServices;->scheduleServiceTimeoutLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 192
    .end local v2    # "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    goto :goto_0

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 175
    :cond_2
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v1}, Lcom/android/server/am/AppNotRespondingDialog;->access$100(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-static {v2}, Lcom/android/server/am/AppNotRespondingDialog;->access$000(Lcom/android/server/am/AppNotRespondingDialog;)Lcom/android/server/am/ProcessRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->killAppAtUsersRequest(Lcom/android/server/am/ProcessRecord;)V

    .line 176
    nop

    .line 196
    :goto_0
    if-eqz v0, :cond_3

    .line 198
    :try_start_2
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v1}, Lcom/android/server/am/AppNotRespondingDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 201
    goto :goto_1

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Landroid/content/ActivityNotFoundException;
    const-string v2, "AppNotRespondingDialog"

    const-string v3, "bug report receiver dissappeared"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 204
    .end local v1    # "e":Landroid/content/ActivityNotFoundException;
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/AppNotRespondingDialog$1;->this$0:Lcom/android/server/am/AppNotRespondingDialog;

    invoke-virtual {v1}, Lcom/android/server/am/AppNotRespondingDialog;->dismiss()V

    .line 205
    return-void
.end method
