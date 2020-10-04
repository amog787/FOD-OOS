.class Lcom/android/server/power/batterysaver/BatterySaverController$1;
.super Landroid/content/BroadcastReceiver;
.source "BatterySaverController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/batterysaver/BatterySaverController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/batterysaver/BatterySaverController;


# direct methods
.method constructor <init>(Lcom/android/server/power/batterysaver/BatterySaverController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/batterysaver/BatterySaverController;

    .line 163
    iput-object p1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 169
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    sparse-switch v1, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_1
    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :sswitch_2
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_1

    :sswitch_3
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v4

    goto :goto_1

    :sswitch_4
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v5, :cond_4

    if-eq v0, v4, :cond_1

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_3

    goto :goto_3

    .line 181
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$300(Lcom/android/server/power/batterysaver/BatterySaverController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 182
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    const-string/jumbo v2, "plugged"

    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v5, v6

    :goto_2
    invoke-static {v1, v5}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$402(Lcom/android/server/power/batterysaver/BatterySaverController;Z)Z

    .line 183
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$100(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    goto :goto_3

    .line 183
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 172
    :cond_4
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$000(Lcom/android/server/power/batterysaver/BatterySaverController;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 173
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$100(Lcom/android/server/power/batterysaver/BatterySaverController;)V

    .line 174
    return-void

    .line 177
    :cond_5
    iget-object v0, p0, Lcom/android/server/power/batterysaver/BatterySaverController$1;->this$0:Lcom/android/server/power/batterysaver/BatterySaverController;

    invoke-static {v0}, Lcom/android/server/power/batterysaver/BatterySaverController;->access$200(Lcom/android/server/power/batterysaver/BatterySaverController;)Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v6, v1}, Lcom/android/server/power/batterysaver/BatterySaverController$MyHandler;->postStateChanged(ZI)V

    .line 179
    nop

    .line 190
    :goto_3
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_4
        -0x5bb23923 -> :sswitch_3
        -0x56ac2893 -> :sswitch_2
        0x1dbb32d0 -> :sswitch_1
        0x33e5d967 -> :sswitch_0
    .end sparse-switch
.end method
