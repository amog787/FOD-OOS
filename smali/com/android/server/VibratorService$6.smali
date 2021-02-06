.class Lcom/android/server/VibratorService$6;
.super Landroid/content/BroadcastReceiver;
.source "VibratorService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VibratorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VibratorService;


# direct methods
.method constructor <init>(Lcom/android/server/VibratorService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/VibratorService;

    .line 2086
    iput-object p1, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 2089
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 2090
    iget-object v0, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    iget-object v0, v0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2098
    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$1700(Lcom/android/server/VibratorService;)I

    move-result v1

    if-nez v1, :cond_0

    .line 2099
    const-string v1, "VibratorService"

    const-string/jumbo v2, "vibrate service don\'t cancel when lidState is close "

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2100
    monitor-exit v0

    return-void

    .line 2104
    :cond_0
    iget-object v1, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    iget-object v1, v1, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    iget-object v1, v1, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 2105
    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    iget-object v1, v1, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    .line 2106
    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->isFromSystem()Z

    move-result v1

    if-nez v1, :cond_2

    .line 2107
    :cond_1
    iget-object v1, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    invoke-static {v1}, Lcom/android/server/VibratorService;->access$300(Lcom/android/server/VibratorService;)V

    .line 2109
    :cond_2
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 2112
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.LID_SWITCH"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2113
    iget-object v0, p0, Lcom/android/server/VibratorService$6;->this$0:Lcom/android/server/VibratorService;

    const/4 v1, 0x1

    const-string/jumbo v2, "lidOpen"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->access$1702(Lcom/android/server/VibratorService;I)I

    .line 2116
    :cond_4
    :goto_0
    return-void
.end method
