.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$praKgcnQG9FTHNMGfCVPTVY8mK8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/net/LinkAddress;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;Ljava/lang/String;Landroid/net/LinkAddress;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$praKgcnQG9FTHNMGfCVPTVY8mK8;->f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$praKgcnQG9FTHNMGfCVPTVY8mK8;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$praKgcnQG9FTHNMGfCVPTVY8mK8;->f$2:Landroid/net/LinkAddress;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$praKgcnQG9FTHNMGfCVPTVY8mK8;->f$0:Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$praKgcnQG9FTHNMGfCVPTVY8mK8;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$NetdUnsolicitedEventListener$praKgcnQG9FTHNMGfCVPTVY8mK8;->f$2:Landroid/net/LinkAddress;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService$NetdUnsolicitedEventListener;->lambda$onInterfaceAddressUpdated$3$NetworkManagementService$NetdUnsolicitedEventListener(Ljava/lang/String;Landroid/net/LinkAddress;)V

    return-void
.end method
