.class Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;
.super Landroid/telephony/PhoneStateListener;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DataConnectionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PhoneStateListenerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/DataConnectionStats;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/DataConnectionStats;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .line 186
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    .line 187
    invoke-direct {p0, p2}, Landroid/telephony/PhoneStateListener;-><init>(Landroid/os/Looper;)V

    .line 188
    return-void
.end method


# virtual methods
.method public onActiveDataSubscriptionIdChanged(I)V
    .locals 2
    .param p1, "subId"    # I

    .line 217
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/DataConnectionStats;->access$002(Lcom/android/server/connectivity/DataConnectionStats;Z)Z

    .line 218
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0, v1}, Lcom/android/server/connectivity/DataConnectionStats;->access$102(Lcom/android/server/connectivity/DataConnectionStats;Z)Z

    .line 219
    return-void
.end method

.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 210
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    .line 211
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 204
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$602(Lcom/android/server/connectivity/DataConnectionStats;I)I

    .line 205
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    .line 206
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 2
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .line 197
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$402(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 198
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getNrState()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/connectivity/DataConnectionStats;->access$502(Lcom/android/server/connectivity/DataConnectionStats;I)I

    .line 199
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    .line 200
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 192
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$PhoneStateListenerImpl;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$302(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 193
    return-void
.end method
