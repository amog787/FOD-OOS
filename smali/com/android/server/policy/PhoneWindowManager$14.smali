.class Lcom/android/server/policy/PhoneWindowManager$14;
.super Landroid/os/Handler;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 5080
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 5083
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 5085
    :cond_0
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$3500()Landroid/hardware/SensorManager;

    move-result-object v0

    if-nez v0, :cond_1

    .line 5086
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$14;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    invoke-static {v0}, Lcom/android/server/policy/PhoneWindowManager;->access$3502(Landroid/hardware/SensorManager;)Landroid/hardware/SensorManager;

    .line 5088
    :cond_1
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$3500()Landroid/hardware/SensorManager;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5089
    invoke-static {}, Lcom/android/server/policy/PhoneWindowManager;->access$3500()Landroid/hardware/SensorManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/SensorManager;->notifyWakeUpFromPowerKey()V

    goto :goto_0

    .line 5091
    :cond_2
    const-string v0, "WindowManager"

    const-string/jumbo v1, "mSensorManager == null, would not notify wake up event to sensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5096
    :goto_0
    return-void
.end method
