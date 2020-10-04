.class Lcom/android/server/net/NetworkPolicyManagerService$3;
.super Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;
.source "NetworkPolicyManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/net/NetworkPolicyManagerService;->initService(Ljava/util/concurrent/CountDownLatch;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/net/NetworkPolicyManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p2, "x0"    # Landroid/os/Looper;

    .line 897
    iput-object p1, p0, Lcom/android/server/net/NetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-direct {p0, p2}, Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onSubscriptionsChanged()V
    .locals 1

    .line 900
    iget-object v0, p0, Lcom/android/server/net/NetworkPolicyManagerService$3;->this$0:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-static {v0}, Lcom/android/server/net/NetworkPolicyManagerService;->access$400(Lcom/android/server/net/NetworkPolicyManagerService;)V

    .line 901
    return-void
.end method
