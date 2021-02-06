.class final Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;
.super Ljava/lang/Object;
.source "BluetoothRouteProvider.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/media/BluetoothRouteProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BluetoothProfileListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/media/BluetoothRouteProvider;


# direct methods
.method private constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;)V
    .locals 0

    .line 395
    iput-object p1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/media/BluetoothRouteProvider;
    .param p2, "x1"    # Lcom/android/server/media/BluetoothRouteProvider$1;

    .line 395
    invoke-direct {p0, p1}, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;-><init>(Lcom/android/server/media/BluetoothRouteProvider;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 6
    .param p1, "profile"    # I
    .param p2, "proxy"    # Landroid/bluetooth/BluetoothProfile;

    .line 398
    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    .line 409
    return-void

    .line 405
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothHearingAid;

    iput-object v1, v0, Lcom/android/server/media/BluetoothRouteProvider;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    .line 406
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v0, v0, Lcom/android/server/media/BluetoothRouteProvider;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHearingAid;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    .line 407
    .local v0, "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    goto :goto_0

    .line 400
    .end local v0    # "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    move-object v1, p2

    check-cast v1, Landroid/bluetooth/BluetoothA2dp;

    iput-object v1, v0, Lcom/android/server/media/BluetoothRouteProvider;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    .line 402
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v0, v0, Lcom/android/server/media/BluetoothRouteProvider;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothA2dp;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 403
    .restart local v0    # "activeDevices":Ljava/util/List;, "Ljava/util/List<Landroid/bluetooth/BluetoothDevice;>;"
    nop

    .line 411
    :goto_0
    invoke-interface {p2}, Landroid/bluetooth/BluetoothProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 412
    .local v2, "device":Landroid/bluetooth/BluetoothDevice;
    iget-object v3, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v3, v3, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    .line 413
    .local v3, "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    if-nez v3, :cond_2

    .line 414
    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v4, v2}, Lcom/android/server/media/BluetoothRouteProvider;->access$500(Lcom/android/server/media/BluetoothRouteProvider;Landroid/bluetooth/BluetoothDevice;)Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;

    move-result-object v3

    .line 415
    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iget-object v4, v4, Lcom/android/server/media/BluetoothRouteProvider;->mBluetoothRoutes:Ljava/util/Map;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 417
    :cond_2
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 418
    iget-object v4, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v4, v3}, Lcom/android/server/media/BluetoothRouteProvider;->access$600(Lcom/android/server/media/BluetoothRouteProvider;Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;)V

    .line 420
    .end local v2    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "btRoute":Lcom/android/server/media/BluetoothRouteProvider$BluetoothRouteInfo;
    :cond_3
    goto :goto_1

    .line 421
    :cond_4
    iget-object v1, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    invoke-static {v1}, Lcom/android/server/media/BluetoothRouteProvider;->access$700(Lcom/android/server/media/BluetoothRouteProvider;)V

    .line 422
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2
    .param p1, "profile"    # I

    .line 425
    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    .line 433
    return-void

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iput-object v1, v0, Lcom/android/server/media/BluetoothRouteProvider;->mHearingAidProfile:Landroid/bluetooth/BluetoothHearingAid;

    .line 431
    goto :goto_0

    .line 427
    :cond_1
    iget-object v0, p0, Lcom/android/server/media/BluetoothRouteProvider$BluetoothProfileListener;->this$0:Lcom/android/server/media/BluetoothRouteProvider;

    iput-object v1, v0, Lcom/android/server/media/BluetoothRouteProvider;->mA2dpProfile:Landroid/bluetooth/BluetoothA2dp;

    .line 428
    nop

    .line 435
    :goto_0
    return-void
.end method
