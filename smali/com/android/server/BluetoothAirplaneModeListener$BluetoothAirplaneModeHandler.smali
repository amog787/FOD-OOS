.class Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;
.super Landroid/os/Handler;
.source "BluetoothAirplaneModeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothAirplaneModeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothAirplaneModeHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothAirplaneModeListener;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothAirplaneModeListener;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 79
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;->this$0:Lcom/android/server/BluetoothAirplaneModeListener;

    .line 80
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 81
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .line 85
    iget v0, p1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BluetoothAirplaneModeListener"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 87
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;->this$0:Lcom/android/server/BluetoothAirplaneModeListener;

    invoke-virtual {v0}, Lcom/android/server/BluetoothAirplaneModeListener;->handleAirplaneModeChange()V

    .line 88
    nop

    .line 93
    :goto_0
    return-void
.end method
