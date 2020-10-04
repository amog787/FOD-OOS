.class Lcom/android/server/connectivity/Tethering$1;
.super Ljava/lang/Object;
.source "Tethering.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/Tethering;

.field final synthetic val$adapter:Landroid/bluetooth/BluetoothAdapter;

.field final synthetic val$enable:Z

.field final synthetic val$receiver:Landroid/os/ResultReceiver;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/Tethering;

    .line 542
    iput-object p1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iput-boolean p2, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    iput-object p3, p0, Lcom/android/server/connectivity/Tethering$1;->val$receiver:Landroid/os/ResultReceiver;

    iput-object p4, p0, Lcom/android/server/connectivity/Tethering$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 4
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 548
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothPan;->setBluetoothTethering(Z)V

    .line 551
    move-object v0, p2

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering$1;->val$enable:Z

    const/4 v2, 0x5

    if-ne v0, v1, :cond_0

    .line 552
    const/4 v0, 0x0

    goto :goto_0

    .line 553
    :cond_0
    move v0, v2

    :goto_0
    nop

    .line 554
    .local v0, "result":I
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->this$0:Lcom/android/server/connectivity/Tethering;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering$1;->val$receiver:Landroid/os/ResultReceiver;

    invoke-static {v1, v3, v0}, Lcom/android/server/connectivity/Tethering;->access$100(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V

    .line 555
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering$1;->val$adapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v1, v2, p2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 556
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 0
    .param p1, "profile"    # I

    .line 544
    return-void
.end method
