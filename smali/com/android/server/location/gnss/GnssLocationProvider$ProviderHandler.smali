.class final Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;
.super Landroid/os/Handler;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/gnss/GnssLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/gnss/GnssLocationProvider;


# direct methods
.method public constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;Landroid/os/Looper;)V
    .locals 1
    .param p2, "looper"    # Landroid/os/Looper;

    .line 2225
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 2226
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 2227
    return-void
.end method

.method private handleInitialize()V
    .locals 10

    .line 2284
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3600(Lcom/android/server/location/gnss/GnssLocationProvider;Z)V

    .line 2286
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3700()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2287
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    new-instance v2, Lcom/android/server/location/gnss/GnssVisibilityControl;

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3900(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4000(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/Looper;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v5}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4100(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/internal/location/GpsNetInitiatedHandler;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/server/location/gnss/GnssVisibilityControl;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/internal/location/GpsNetInitiatedHandler;)V

    invoke-static {v0, v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3802(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssVisibilityControl;)Lcom/android/server/location/gnss/GnssVisibilityControl;

    .line 2292
    :cond_0
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4200(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 2295
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2296
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v2, "com.android.internal.location.ALARM_WAKEUP"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2297
    const-string v2, "com.android.internal.location.ALARM_TIMEOUT"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2298
    const-string v2, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2299
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2300
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2301
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2302
    const-string v2, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2303
    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2306
    const-string v2, "com.oneplus.intent.OEM_LOG_UPDATED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2308
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3900(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4300(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/content/BroadcastReceiver;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4, p0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 2310
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$4400(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->registerNetworkCallbacks()V

    .line 2313
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 2314
    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3900(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "location"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/LocationManager;

    .line 2315
    .local v2, "locManager":Landroid/location/LocationManager;
    const-wide/16 v5, 0x0

    .line 2316
    .local v5, "minTime":J
    const/4 v3, 0x0

    .line 2317
    .local v3, "minDistance":F
    const-string/jumbo v7, "passive"

    invoke-static {v7, v5, v6, v3, v1}, Landroid/location/LocationRequest;->createFromDeprecatedProvider(Ljava/lang/String;JFZ)Landroid/location/LocationRequest;

    move-result-object v1

    .line 2324
    .local v1, "request":Landroid/location/LocationRequest;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/location/LocationRequest;->setHideFromAppOps(Z)V

    .line 2325
    new-instance v8, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;

    iget-object v9, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-direct {v8, v9, v4}, Lcom/android/server/location/gnss/GnssLocationProvider$NetworkLocationListener;-><init>(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$1;)V

    .line 2328
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->getLooper()Landroid/os/Looper;

    move-result-object v4

    .line 2325
    invoke-virtual {v2, v1, v8, v4}, Landroid/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationRequest;Landroid/location/LocationListener;Landroid/os/Looper;)V

    .line 2330
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$1100(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 2333
    iget-object v4, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v4, v7}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$800(Lcom/android/server/location/gnss/GnssLocationProvider;Z)V

    .line 2335
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .line 2231
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2232
    .local v0, "message":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_8

    const/4 v2, 0x3

    if-eq v0, v2, :cond_7

    const/16 v2, 0xb

    if-eq v0, v2, :cond_6

    const/16 v2, 0xd

    if-eq v0, v2, :cond_5

    const/16 v2, 0x2711

    if-eq v0, v2, :cond_4

    const/4 v2, 0x5

    if-eq v0, v2, :cond_3

    const/4 v2, 0x6

    if-eq v0, v2, :cond_2

    const/4 v2, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2256
    :pswitch_0
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;

    invoke-static {v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3100(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/server/location/gnss/GnssLocationProvider$SvStatusInfo;)V

    .line 2257
    goto :goto_0

    .line 2253
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_0

    move v2, v1

    :cond_0
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/location/Location;

    invoke-static {v3, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3000(Lcom/android/server/location/gnss/GnssLocationProvider;ZLandroid/location/Location;)V

    .line 2254
    goto :goto_0

    .line 2241
    :pswitch_2
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v1, :cond_1

    move v2, v1

    :cond_1
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-static {v3, v2, v4}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2700(Lcom/android/server/location/gnss/GnssLocationProvider;ZZ)V

    .line 2242
    goto :goto_0

    .line 2244
    :cond_2
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2800(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 2245
    goto :goto_0

    .line 2238
    :cond_3
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2600(Lcom/android/server/location/gnss/GnssLocationProvider;)Lcom/android/server/location/gnss/NtpTimeHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/location/gnss/NtpTimeHelper;->retrieveAndInjectNtpTime()V

    .line 2239
    goto :goto_0

    .line 2264
    :cond_4
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3300(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    goto :goto_0

    .line 2250
    :cond_5
    invoke-direct {p0}, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->handleInitialize()V

    .line 2251
    goto :goto_0

    .line 2247
    :cond_6
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    const/4 v3, 0x2

    invoke-static {v2, v3}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2902(Lcom/android/server/location/gnss/GnssLocationProvider;I)I

    .line 2248
    goto :goto_0

    .line 2234
    :cond_7
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;

    .line 2235
    .local v2, "gpsRequest":Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;
    iget-object v3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    iget-object v4, v2, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;->request:Lcom/android/internal/location/ProviderRequest;

    iget-object v5, v2, Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;->source:Landroid/os/WorkSource;

    invoke-static {v3, v4, v5}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$2500(Lcom/android/server/location/gnss/GnssLocationProvider;Lcom/android/internal/location/ProviderRequest;Landroid/os/WorkSource;)V

    .line 2236
    goto :goto_0

    .line 2259
    .end local v2    # "gpsRequest":Lcom/android/server/location/gnss/GnssLocationProvider$GpsRequest;
    :cond_8
    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3200(Lcom/android/server/location/gnss/GnssLocationProvider;)V

    .line 2260
    nop

    .line 2268
    :goto_0
    iget v2, p1, Landroid/os/Message;->arg2:I

    if-ne v2, v1, :cond_9

    .line 2270
    iget-object v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v1}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3400(Lcom/android/server/location/gnss/GnssLocationProvider;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2271
    invoke-static {}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$200()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 2272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WakeLock released by handleMessage("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$ProviderHandler;->this$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    invoke-static {v2, v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->access$3500(Lcom/android/server/location/gnss/GnssLocationProvider;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GnssLocationProvider"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2276
    :cond_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
