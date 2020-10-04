.class Lcom/android/server/deviceidle/BluetoothConstraint$1;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothConstraint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/deviceidle/BluetoothConstraint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/deviceidle/BluetoothConstraint;


# direct methods
.method constructor <init>(Lcom/android/server/deviceidle/BluetoothConstraint;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/deviceidle/BluetoothConstraint;

    .line 123
    iput-object p1, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 126
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-static {v0}, Lcom/android/server/deviceidle/BluetoothConstraint;->access$000(Lcom/android/server/deviceidle/BluetoothConstraint;)Lcom/android/server/DeviceIdleController$LocalService;

    move-result-object v0

    const-string v1, "bluetooth"

    invoke-virtual {v0, v1}, Lcom/android/server/DeviceIdleController$LocalService;->exitIdle(Ljava/lang/String;)V

    goto :goto_0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/server/deviceidle/BluetoothConstraint$1;->this$0:Lcom/android/server/deviceidle/BluetoothConstraint;

    invoke-static {v0}, Lcom/android/server/deviceidle/BluetoothConstraint;->access$100(Lcom/android/server/deviceidle/BluetoothConstraint;)V

    .line 131
    :goto_0
    return-void
.end method
