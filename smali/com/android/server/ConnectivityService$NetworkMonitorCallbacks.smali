.class Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;
.super Landroid/net/INetworkMonitorCallbacks$Stub;
.source "ConnectivityService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ConnectivityService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NetworkMonitorCallbacks"
.end annotation


# instance fields
.field private final mNai:Lcom/android/server/connectivity/AutodestructReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/server/connectivity/AutodestructReference<",
            "Lcom/android/server/connectivity/NetworkAgentInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mNetId:I

.field final synthetic this$0:Lcom/android/server/ConnectivityService;


# direct methods
.method private constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V
    .locals 0
    .param p2, "nai"    # Lcom/android/server/connectivity/NetworkAgentInfo;

    .line 3241
    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-direct {p0}, Landroid/net/INetworkMonitorCallbacks$Stub;-><init>()V

    .line 3242
    iget-object p1, p2, Lcom/android/server/connectivity/NetworkAgentInfo;->network:Landroid/net/Network;

    iget p1, p1, Landroid/net/Network;->netId:I

    iput p1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    .line 3243
    new-instance p1, Lcom/android/server/connectivity/AutodestructReference;

    invoke-direct {p1, p2}, Lcom/android/server/connectivity/AutodestructReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNai:Lcom/android/server/connectivity/AutodestructReference;

    .line 3244
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/ConnectivityService;
    .param p2, "x1"    # Lcom/android/server/connectivity/NetworkAgentInfo;
    .param p3, "x2"    # Lcom/android/server/ConnectivityService$1;

    .line 3237
    invoke-direct {p0, p1, p2}, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;-><init>(Lcom/android/server/ConnectivityService;Lcom/android/server/connectivity/NetworkAgentInfo;)V

    return-void
.end method


# virtual methods
.method public getInterfaceHash()Ljava/lang/String;
    .locals 1

    .line 3380
    const-string v0, "02cd6fd07d5c04eca0c35a350f7b0be576242883"

    return-object v0
.end method

.method public getInterfaceVersion()I
    .locals 1

    .line 3375
    const/4 v0, 0x7

    return v0
.end method

.method public hideProvisioningNotification()V
    .locals 5

    .line 3364
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    const/16 v3, 0x2b

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3366
    return-void
.end method

.method public notifyCaptivePortalDataChanged(Landroid/net/CaptivePortalData;)V
    .locals 5
    .param p1, "data"    # Landroid/net/CaptivePortalData;

    .line 3335
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    const/16 v3, 0x2e

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4, v2, p1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3338
    return-void
.end method

.method public notifyDataStallSuspected(Landroid/net/DataStallReportParcelable;)V
    .locals 2
    .param p1, "p"    # Landroid/net/DataStallReportParcelable;

    .line 3370
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    iget v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    invoke-static {v0, p1, v1}, Lcom/android/server/ConnectivityService;->access$4600(Lcom/android/server/ConnectivityService;Landroid/net/DataStallReportParcelable;I)V

    .line 3371
    return-void
.end method

.method public notifyNetworkTested(ILjava/lang/String;)V
    .locals 2
    .param p1, "testResult"    # I
    .param p2, "redirectUrl"    # Ljava/lang/String;

    .line 3257
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1700()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Deprecated notifyNetworkTested called: no action taken"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3258
    return-void
.end method

.method public notifyNetworkTestedWithExtras(Landroid/net/NetworkTestResultParcelable;)V
    .locals 19
    .param p1, "p"    # Landroid/net/NetworkTestResultParcelable;

    .line 3264
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroid/net/NetworkTestResultParcelable;->result:I

    and-int/lit8 v2, v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 3265
    .local v2, "isPartial":Z
    :goto_0
    iget v5, v1, Landroid/net/NetworkTestResultParcelable;->result:I

    and-int/2addr v5, v4

    if-eqz v5, :cond_1

    move v3, v4

    .line 3266
    .local v3, "isValid":Z
    :cond_1
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1700()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "notifyNetworkTestedWithExtras isPartial = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " , isValid = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3267
    iget-object v5, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    iget v6, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    invoke-static {v5, v6}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v5

    .line 3268
    .local v5, "networkAgentInfo":Lcom/android/server/connectivity/NetworkAgentInfo;
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3269
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7

    .line 3270
    .local v7, "token":J
    const-string v9, ""

    .line 3271
    .local v9, "country":Ljava/lang/String;
    iget-object v10, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 3272
    iget-object v10, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v10}, Lcom/android/server/ConnectivityService;->access$4100(Lcom/android/server/ConnectivityService;)Landroid/net/wifi/WifiManager;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiManager;->getCountryCode()Ljava/lang/String;

    move-result-object v9

    .line 3274
    :cond_2
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3275
    const-string v10, "CN"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 3276
    if-ne v2, v4, :cond_4

    if-eqz v5, :cond_4

    .line 3277
    if-nez v3, :cond_3

    .line 3278
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1700()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v10, "notifyNetworkTestedWithExtras H2 change partial to valid - setAcceptPartialConnectivity"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3279
    invoke-virtual {v5}, Lcom/android/server/connectivity/NetworkAgentInfo;->networkMonitor()Landroid/net/NetworkMonitorManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/NetworkMonitorManager;->setAcceptPartialConnectivity()Z

    .line 3280
    return-void

    .line 3282
    :cond_3
    invoke-static {}, Lcom/android/server/ConnectivityService;->access$1700()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v10, "notifyNetworkTestedWithExtras H2 change partial to valid - update result"

    invoke-static {v4, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3283
    iget v4, v1, Landroid/net/NetworkTestResultParcelable;->result:I

    and-int/lit8 v4, v4, -0x3

    iput v4, v1, Landroid/net/NetworkTestResultParcelable;->result:I

    .line 3288
    :cond_4
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;)Lcom/oneplus/android/wifi/IOpWifiManager;

    move-result-object v4

    if-eqz v4, :cond_5

    if-eqz v5, :cond_5

    .line 3289
    if-nez v3, :cond_5

    iget-object v4, v1, Landroid/net/NetworkTestResultParcelable;->redirectUrl:Ljava/lang/String;

    if-nez v4, :cond_5

    .line 3290
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$4200(Lcom/android/server/ConnectivityService;)Lcom/oneplus/android/wifi/IOpWifiManager;

    move-result-object v4

    iget-object v10, v5, Lcom/android/server/connectivity/NetworkAgentInfo;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v10}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v4, v10}, Lcom/oneplus/android/wifi/IOpWifiManager;->checkDupMac(Ljava/lang/String;)Z

    .line 3297
    :cond_5
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v4

    new-instance v15, Lcom/android/server/ConnectivityService$NetworkTestedResults;

    iget v11, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    iget v12, v1, Landroid/net/NetworkTestResultParcelable;->result:I

    iget-wide v13, v1, Landroid/net/NetworkTestResultParcelable;->timestampMillis:J

    iget-object v10, v1, Landroid/net/NetworkTestResultParcelable;->redirectUrl:Ljava/lang/String;

    const/16 v16, 0x0

    move-object/from16 v17, v10

    move-object v10, v15

    move/from16 v18, v2

    move-object v2, v15

    .end local v2    # "isPartial":Z
    .local v18, "isPartial":Z
    move-object/from16 v15, v17

    invoke-direct/range {v10 .. v16}, Lcom/android/server/ConnectivityService$NetworkTestedResults;-><init>(IIJLjava/lang/String;Lcom/android/server/ConnectivityService$1;)V

    const/16 v10, 0x29

    invoke-virtual {v4, v10, v2}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 3301
    .local v2, "msg":Landroid/os/Message;
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3304
    iget-object v4, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    iget v11, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    invoke-static {v4, v11}, Lcom/android/server/ConnectivityService;->access$700(Lcom/android/server/ConnectivityService;I)Lcom/android/server/connectivity/NetworkAgentInfo;

    move-result-object v4

    .line 3305
    .local v4, "nai":Lcom/android/server/connectivity/NetworkAgentInfo;
    if-nez v4, :cond_6

    return-void

    .line 3306
    :cond_6
    iget-object v11, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v11, v11, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsHandler:Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;

    new-instance v12, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;

    iget-wide v13, v1, Landroid/net/NetworkTestResultParcelable;->timestampMillis:J

    const/4 v15, 0x0

    invoke-direct {v12, v13, v14, v4, v15}, Lcom/android/server/ConnectivityService$ConnectivityReportEvent;-><init>(JLcom/android/server/connectivity/NetworkAgentInfo;Lcom/android/server/ConnectivityService$1;)V

    invoke-virtual {v11, v10, v12}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    .line 3310
    .local v10, "m":Landroid/os/Message;
    new-instance v11, Landroid/os/PersistableBundle;

    invoke-direct {v11}, Landroid/os/PersistableBundle;-><init>()V

    .line 3311
    .local v11, "extras":Landroid/os/PersistableBundle;
    iget v12, v1, Landroid/net/NetworkTestResultParcelable;->result:I

    const-string/jumbo v13, "networkValidationResult"

    invoke-virtual {v11, v13, v12}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 3312
    iget v12, v1, Landroid/net/NetworkTestResultParcelable;->probesSucceeded:I

    const-string/jumbo v13, "networkProbesSucceeded"

    invoke-virtual {v11, v13, v12}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 3313
    iget v12, v1, Landroid/net/NetworkTestResultParcelable;->probesAttempted:I

    const-string/jumbo v13, "networkProbesAttempted"

    invoke-virtual {v11, v13, v12}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 3315
    new-instance v12, Landroid/os/Bundle;

    invoke-direct {v12, v11}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    invoke-virtual {v10, v12}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 3316
    iget-object v12, v0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    iget-object v12, v12, Lcom/android/server/ConnectivityService;->mConnectivityDiagnosticsHandler:Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;

    invoke-virtual {v12, v10}, Lcom/android/server/ConnectivityService$ConnectivityDiagnosticsHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3317
    return-void
.end method

.method public notifyPrivateDnsConfigResolved(Landroid/net/PrivateDnsConfigParcel;)V
    .locals 6
    .param p1, "config"    # Landroid/net/PrivateDnsConfigParcel;

    .line 3321
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    iget v2, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    .line 3323
    invoke-static {p1}, Landroid/net/shared/PrivateDnsConfig;->fromParcel(Landroid/net/PrivateDnsConfigParcel;)Landroid/net/shared/PrivateDnsConfig;

    move-result-object v3

    .line 3321
    const/16 v4, 0x2a

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5, v2, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3324
    return-void
.end method

.method public notifyProbeStatusChanged(II)V
    .locals 4
    .param p1, "probesCompleted"    # I
    .param p2, "probesSucceeded"    # I

    .line 3328
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v1

    new-instance v2, Ljava/lang/Integer;

    iget v3, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    const/16 v3, 0x2d

    invoke-virtual {v1, v3, p1, p2, v2}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3331
    return-void
.end method

.method public onNetworkMonitorCreated(Landroid/net/INetworkMonitor;)V
    .locals 4
    .param p1, "networkMonitor"    # Landroid/net/INetworkMonitor;

    .line 3248
    iget-object v0, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v0}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v1}, Lcom/android/server/ConnectivityService;->access$100(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$InternalHandler;

    move-result-object v1

    new-instance v2, Landroid/util/Pair;

    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNai:Lcom/android/server/connectivity/AutodestructReference;

    .line 3249
    invoke-virtual {v3}, Lcom/android/server/connectivity/AutodestructReference;->getAndDestroy()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/NetworkAgentInfo;

    invoke-direct {v2, v3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 3248
    const/16 v3, 0x12

    invoke-virtual {v1, v3, v2}, Lcom/android/server/ConnectivityService$InternalHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/ConnectivityService$InternalHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3250
    return-void
.end method

.method public showProvisioningNotification(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "packageName"    # Ljava/lang/String;

    .line 3342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3343
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 3347
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3349
    .local v1, "token":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    .line 3350
    invoke-static {v3}, Lcom/android/server/ConnectivityService;->access$900(Lcom/android/server/ConnectivityService;)Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x4000000

    .line 3349
    invoke-static {v3, v4, v0, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3355
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3356
    nop

    .line 3357
    iget-object v4, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v4}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->this$0:Lcom/android/server/ConnectivityService;

    invoke-static {v5}, Lcom/android/server/ConnectivityService;->access$4400(Lcom/android/server/ConnectivityService;)Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;

    move-result-object v5

    const/16 v6, 0x2b

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/server/ConnectivityService$NetworkMonitorCallbacks;->mNetId:I

    invoke-virtual {v5, v6, v7, v8, v3}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/ConnectivityService$NetworkStateTrackerHandler;->sendMessage(Landroid/os/Message;)Z

    .line 3360
    return-void

    .line 3355
    .end local v3    # "pendingIntent":Landroid/app/PendingIntent;
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3356
    throw v3
.end method
