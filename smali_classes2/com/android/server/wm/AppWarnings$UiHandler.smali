.class final Lcom/android/server/wm/AppWarnings$UiHandler;
.super Landroid/os/Handler;
.source "AppWarnings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/AppWarnings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "UiHandler"
.end annotation


# static fields
.field private static final MSG_HIDE_DIALOGS_FOR_PACKAGE:I = 0x4

.field private static final MSG_HIDE_UNSUPPORTED_DISPLAY_SIZE_DIALOG:I = 0x2

.field private static final MSG_SHOW_DEPRECATED_TARGET_SDK_DIALOG:I = 0x5

.field private static final MSG_SHOW_UNSUPPORTED_COMPILE_SDK_DIALOG:I = 0x3

.field private static final MSG_SHOW_UNSUPPORTED_DISPLAY_SIZE_DIALOG:I = 0x1


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/AppWarnings;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppWarnings;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 382
    iput-object p1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    .line 383
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 384
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 388
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 405
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 406
    .local v0, "ar":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {v1, v0}, Lcom/android/server/wm/AppWarnings;->access$400(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_0

    .line 401
    .end local v0    # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 402
    .local v0, "name":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {v1, v0}, Lcom/android/server/wm/AppWarnings;->access$300(Lcom/android/server/wm/AppWarnings;Ljava/lang/String;)V

    .line 403
    .end local v0    # "name":Ljava/lang/String;
    goto :goto_0

    .line 397
    :cond_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 398
    .local v0, "ar":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {v1, v0}, Lcom/android/server/wm/AppWarnings;->access$200(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    .line 399
    .end local v0    # "ar":Lcom/android/server/wm/ActivityRecord;
    goto :goto_0

    .line 394
    :cond_3
    iget-object v0, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {v0}, Lcom/android/server/wm/AppWarnings;->access$100(Lcom/android/server/wm/AppWarnings;)V

    .line 395
    goto :goto_0

    .line 390
    :cond_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 391
    .restart local v0    # "ar":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/AppWarnings$UiHandler;->this$0:Lcom/android/server/wm/AppWarnings;

    invoke-static {v1, v0}, Lcom/android/server/wm/AppWarnings;->access$000(Lcom/android/server/wm/AppWarnings;Lcom/android/server/wm/ActivityRecord;)V

    .line 392
    .end local v0    # "ar":Lcom/android/server/wm/ActivityRecord;
    nop

    .line 409
    :goto_0
    return-void
.end method

.method public hideDialogsForPackage(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 432
    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 433
    return-void
.end method

.method public hideUnsupportedDisplaySizeDialog()V
    .locals 1

    .line 417
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWarnings$UiHandler;->removeMessages(I)V

    .line 418
    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWarnings$UiHandler;->sendEmptyMessage(I)Z

    .line 419
    return-void
.end method

.method public showDeprecatedTargetDialog(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 427
    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWarnings$UiHandler;->removeMessages(I)V

    .line 428
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 429
    return-void
.end method

.method public showUnsupportedCompileSdkDialog(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 422
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWarnings$UiHandler;->removeMessages(I)V

    .line 423
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 424
    return-void
.end method

.method public showUnsupportedDisplaySizeDialog(Lcom/android/server/wm/ActivityRecord;)V
    .locals 1
    .param p1, "r"    # Lcom/android/server/wm/ActivityRecord;

    .line 412
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/AppWarnings$UiHandler;->removeMessages(I)V

    .line 413
    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/AppWarnings$UiHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 414
    return-void
.end method
