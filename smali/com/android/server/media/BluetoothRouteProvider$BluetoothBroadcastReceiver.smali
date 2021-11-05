.class Lcom/android/server/media/BluetoothRouteProvider$BluetoothBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "BluetoothRouteProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/BluetoothRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/BluetoothRouteProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;)V
    .locals 0

    .line 437
    iput-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothBroadcastReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/media/BluetoothRouteProvider;
    .param p2, "x1"    # Lcom/android/server/media/BluetoothRouteProvider$1;

    .line 437
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothBroadcastReceiver;-><init>(Lcom/android/server/media/BluetoothRouteProvider;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .line 440
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 441
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 443
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v2, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothBroadcastReceiver;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v2}, Lcom/android/server/media/BluetoothRouteProvider;->access$800(Lcom/android/server/media/BluetoothRouteProvider;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;

    .line 444
    .local v2, "receiver":Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;
    if-eqz v2, :cond_0

    .line 445
    invoke-interface {v2, p1, p2, v1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothEventReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;Landroid/bluetooth/BluetoothDevice;)V

    .line 447
    :cond_0
    return-void
.end method
