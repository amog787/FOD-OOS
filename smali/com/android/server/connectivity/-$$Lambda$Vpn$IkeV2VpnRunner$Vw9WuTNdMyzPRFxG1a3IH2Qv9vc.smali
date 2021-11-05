.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$Vpn$IkeV2VpnRunner$Vw9WuTNdMyzPRFxG1a3IH2Qv9vc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

.field public final synthetic f$1:Landroid/net/Network;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$IkeV2VpnRunner$Vw9WuTNdMyzPRFxG1a3IH2Qv9vc;->f$0:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    iput-object p2, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$IkeV2VpnRunner$Vw9WuTNdMyzPRFxG1a3IH2Qv9vc;->f$1:Landroid/net/Network;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$IkeV2VpnRunner$Vw9WuTNdMyzPRFxG1a3IH2Qv9vc;->f$0:Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;

    iget-object v1, p0, Lcom/android/server/connectivity/-$$Lambda$Vpn$IkeV2VpnRunner$Vw9WuTNdMyzPRFxG1a3IH2Qv9vc;->f$1:Landroid/net/Network;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Vpn$IkeV2VpnRunner;->lambda$onDefaultNetworkChanged$0$Vpn$IkeV2VpnRunner(Landroid/net/Network;)V

    return-void
.end method
