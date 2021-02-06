.class Lcom/android/server/BluetoothAirplaneModeListener$1;
.super Landroid/database/ContentObserver;
.source "BluetoothAirplaneModeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothAirplaneModeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothAirplaneModeListener;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothAirplaneModeListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothAirplaneModeListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 69
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener$1;->this$0:Lcom/android/server/BluetoothAirplaneModeListener;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "unused"    # Z

    .line 73
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$1;->this$0:Lcom/android/server/BluetoothAirplaneModeListener;

    invoke-static {v0}, Lcom/android/server/BluetoothAirplaneModeListener;->access$000(Lcom/android/server/BluetoothAirplaneModeListener;)Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 74
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/BluetoothAirplaneModeListener$1;->this$0:Lcom/android/server/BluetoothAirplaneModeListener;

    invoke-static {v1}, Lcom/android/server/BluetoothAirplaneModeListener;->access$000(Lcom/android/server/BluetoothAirplaneModeListener;)Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/BluetoothAirplaneModeListener$BluetoothAirplaneModeHandler;->sendMessage(Landroid/os/Message;)Z

    .line 75
    return-void
.end method
