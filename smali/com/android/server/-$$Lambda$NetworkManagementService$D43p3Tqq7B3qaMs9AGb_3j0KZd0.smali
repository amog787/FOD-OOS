.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/NetworkManagementService$NetworkManagementEventCallback;


# instance fields
.field public final synthetic f$0:I

.field public final synthetic f$1:Z

.field public final synthetic f$2:J


# direct methods
.method public synthetic constructor <init>(IZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;->f$0:I

    iput-boolean p2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;->f$1:Z

    iput-wide p3, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;->f$2:J

    return-void
.end method


# virtual methods
.method public final sendCallback(Landroid/net/INetworkManagementEventObserver;)V
    .locals 4

    iget v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;->f$0:I

    iget-boolean v1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;->f$1:Z

    iget-wide v2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$D43p3Tqq7B3qaMs9AGb_3j0KZd0;->f$2:J

    invoke-static {v0, v1, v2, v3, p1}, Lcom/android/server/NetworkManagementService;->lambda$notifyInterfaceClassActivity$5(IZJLandroid/net/INetworkManagementEventObserver;)V

    return-void
.end method
