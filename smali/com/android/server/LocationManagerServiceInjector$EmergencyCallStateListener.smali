.class Lcom/android/server/LocationManagerServiceInjector$EmergencyCallStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "LocationManagerServiceInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LocationManagerServiceInjector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EmergencyCallStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LocationManagerServiceInjector;


# direct methods
.method constructor <init>(Lcom/android/server/LocationManagerServiceInjector;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/LocationManagerServiceInjector;

    .line 173
    iput-object p1, p0, Lcom/android/server/LocationManagerServiceInjector$EmergencyCallStateListener;->this$0:Lcom/android/server/LocationManagerServiceInjector;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5
    .param p1, "state"    # I
    .param p2, "arg1"    # Ljava/lang/String;

    .line 176
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Z

    move-result v0

    const-string v1, "LocationManagerServiceInjector"

    if-eqz v0, :cond_0

    .line 177
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Emergency Call...state:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    :cond_0
    invoke-static {p2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 180
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 181
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LPPE Status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "...Emergency Call...Check wifiStatus:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$200()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "...gpsStatus:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$300()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "...mEmwifiStatus:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$400()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "!!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_1
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$100()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0x0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto/16 :goto_0

    .line 190
    :cond_2
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-ne p1, v2, :cond_6

    .line 192
    :cond_3
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$400()Z

    move-result v2

    if-nez v2, :cond_6

    .line 193
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$500()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, -0x1

    const-string/jumbo v4, "wifi_on"

    invoke-static {v2, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/LocationManagerServiceInjector;->access$202(I)I

    .line 195
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$600()Landroid/location/LocationManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/location/LocationManager;->isLocationEnabled()Z

    move-result v2

    invoke-static {v2}, Lcom/android/server/LocationManagerServiceInjector;->access$302(Z)Z

    .line 196
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$300()Z

    move-result v2

    if-nez v2, :cond_4

    .line 197
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$600()Landroid/location/LocationManager;

    move-result-object v2

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 199
    :cond_4
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$200()I

    move-result v2

    if-nez v2, :cond_5

    .line 200
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$700()Landroid/net/wifi/WifiManager;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 202
    :cond_5
    const-string v2, "Emergency Call Start...Modify state..."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {v0}, Lcom/android/server/LocationManagerServiceInjector;->access$402(Z)Z

    goto :goto_1

    .line 205
    :cond_6
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$300()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_7

    .line 206
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$600()Landroid/location/LocationManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/location/LocationManager;->setLocationEnabledForUser(ZLandroid/os/UserHandle;)V

    .line 208
    :cond_7
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$200()I

    move-result v0

    if-nez v0, :cond_8

    .line 209
    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$700()Landroid/net/wifi/WifiManager;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 211
    :cond_8
    const-string v0, "Emergency Call End...Restore state..."

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    invoke-static {v2}, Lcom/android/server/LocationManagerServiceInjector;->access$402(Z)Z

    goto :goto_1

    .line 186
    :cond_9
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LPPe status:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/LocationManagerServiceInjector;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 215
    :cond_a
    :goto_1
    return-void
.end method
