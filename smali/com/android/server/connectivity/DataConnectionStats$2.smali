.class Lcom/android/server/connectivity/DataConnectionStats$2;
.super Landroid/telephony/PhoneStateListener;
.source "DataConnectionStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/DataConnectionStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/DataConnectionStats;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/DataConnectionStats;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/connectivity/DataConnectionStats;

    .line 156
    iput-object p1, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataActivity(I)V
    .locals 1
    .param p1, "direction"    # I

    .line 176
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    .line 177
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 1
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .line 170
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$502(Lcom/android/server/connectivity/DataConnectionStats;I)I

    .line 171
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    .line 172
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1
    .param p1, "state"    # Landroid/telephony/ServiceState;

    .line 164
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$402(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    .line 165
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0}, Lcom/android/server/connectivity/DataConnectionStats;->access$200(Lcom/android/server/connectivity/DataConnectionStats;)V

    .line 166
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 1
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .line 159
    iget-object v0, p0, Lcom/android/server/connectivity/DataConnectionStats$2;->this$0:Lcom/android/server/connectivity/DataConnectionStats;

    invoke-static {v0, p1}, Lcom/android/server/connectivity/DataConnectionStats;->access$302(Lcom/android/server/connectivity/DataConnectionStats;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    .line 160
    return-void
.end method
