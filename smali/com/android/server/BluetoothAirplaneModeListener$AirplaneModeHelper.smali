.class public Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;
.super Ljava/lang/Object;
.source "BluetoothAirplaneModeListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothAirplaneModeListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AirplaneModeHelper"
.end annotation


# instance fields
.field private volatile mA2dp:Landroid/bluetooth/BluetoothA2dp;

.field private final mAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mContext:Landroid/content/Context;

.field private volatile mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

.field private final mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .line 156
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 165
    new-instance v0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;

    invoke-direct {v0, p0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper$1;-><init>(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;)V

    iput-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 157
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 158
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    .line 160
    iget-object v1, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x2

    invoke-virtual {v0, p1, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 161
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 163
    return-void
.end method

.method static synthetic access$102(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothA2dp;

    .line 150
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    return-object p1
.end method

.method static synthetic access$202(Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;
    .locals 0
    .param p0, "x0"    # Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;
    .param p1, "x1"    # Landroid/bluetooth/BluetoothHearingAid;

    .line 150
    iput-object p1, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    return-object p1
.end method

.method private isA2dpConnected()Z
    .locals 3

    .line 243
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mA2dp:Landroid/bluetooth/BluetoothA2dp;

    .line 244
    .local v0, "a2dp":Landroid/bluetooth/BluetoothA2dp;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 245
    return v1

    .line 247
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private isHearingAidConnected()Z
    .locals 3

    .line 251
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mHearingAid:Landroid/bluetooth/BluetoothHearingAid;

    .line 252
    .local v0, "hearingAid":Landroid/bluetooth/BluetoothHearingAid;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 253
    return v1

    .line 255
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method public getSettingsInt(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 224
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public isA2dpOrHearingAidConnected()Z
    .locals 1

    .line 199
    invoke-direct {p0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->isA2dpConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->isHearingAidConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isAirplaneModeOn()Z
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v2, v1

    :cond_0
    return v2
.end method

.method public isBluetoothOn()Z
    .locals 4

    .line 204
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 205
    .local v0, "adapter":Landroid/bluetooth/BluetoothAdapter;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 206
    return v1

    .line 208
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getLeState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public onAirplaneModeChanged(Lcom/android/server/BluetoothManagerService;)V
    .locals 0
    .param p1, "managerService"    # Lcom/android/server/BluetoothManagerService;

    .line 219
    invoke-virtual {p1}, Lcom/android/server/BluetoothManagerService;->onAirplaneModeChanged()V

    .line 220
    return-void
.end method

.method public setSettingsInt(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 230
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 232
    return-void
.end method

.method public showToastMessage()V
    .locals 5

    .line 236
    iget-object v0, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 237
    .local v0, "r":Landroid/content/res/Resources;
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    .line 238
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 237
    const v3, 0x1040194

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "text":Ljava/lang/CharSequence;
    iget-object v3, p0, Lcom/android/server/BluetoothAirplaneModeListener$AirplaneModeHelper;->mContext:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 240
    return-void
.end method
