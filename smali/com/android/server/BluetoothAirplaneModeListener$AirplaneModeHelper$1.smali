.class Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;
.super Ljava/lang/Object;
.source "BluetoothAirplaneModeListener.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    .line 165
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;->this$0:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 2
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 169
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;->this$0:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {v0, v1}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->access$202(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    .line 175
    goto :goto_0

    .line 171
    :cond_1
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;->this$0:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, v1}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->access$102(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 172
    nop

    .line 179
    :goto_0
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .line 184
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;->this$0:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    invoke-static {v0, v1}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->access$202(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    .line 190
    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;->this$0:Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;

    invoke-static {v0, v1}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->access$102(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 187
    nop

    .line 194
    :goto_0
    return-void
.end method
