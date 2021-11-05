.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$QjjL0oku3yfQh6xuCG2xu7lWiSM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Landroid/net/RouteInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;ZLandroid/net/RouteInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$QjjL0oku3yfQh6xuCG2xu7lWiSM;->f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    iput-boolean p2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$QjjL0oku3yfQh6xuCG2xu7lWiSM;->f$1:Z

    iput-object p3, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$QjjL0oku3yfQh6xuCG2xu7lWiSM;->f$2:Landroid/net/RouteInfo;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$QjjL0oku3yfQh6xuCG2xu7lWiSM;->f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    iget-boolean v1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$QjjL0oku3yfQh6xuCG2xu7lWiSM;->f$1:Z

    iget-object v2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$QjjL0oku3yfQh6xuCG2xu7lWiSM;->f$2:Landroid/net/RouteInfo;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onRouteChanged$9$NetworkManagementService$NetdUnsolicitedEventListener(ZLandroid/net/RouteInfo;)V

    return-void
.end method
