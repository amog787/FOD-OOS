.class public final synthetic Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$m9NLTVY7N8yX_cTeQGMddCEpCU0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/infra/ServiceConnector$Job;


# instance fields
.field public final synthetic f$0:Landroid/companion/AssociationRequest;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/companion/IFindDeviceCallback;


# direct methods
.method public synthetic constructor <init>(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IFindDeviceCallback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$m9NLTVY7N8yX_cTeQGMddCEpCU0;->f$0:Landroid/companion/AssociationRequest;

    iput-object p2, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$m9NLTVY7N8yX_cTeQGMddCEpCU0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$m9NLTVY7N8yX_cTeQGMddCEpCU0;->f$2:Landroid/companion/IFindDeviceCallback;

    return-void
.end method


# virtual methods
.method public final run(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$m9NLTVY7N8yX_cTeQGMddCEpCU0;->f$0:Landroid/companion/AssociationRequest;

    iget-object v1, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$m9NLTVY7N8yX_cTeQGMddCEpCU0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$m9NLTVY7N8yX_cTeQGMddCEpCU0;->f$2:Landroid/companion/IFindDeviceCallback;

    check-cast p1, Landroid/companion/ICompanionDeviceDiscoveryService;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->lambda$associate$0(Landroid/companion/AssociationRequest;Ljava/lang/String;Landroid/companion/IFindDeviceCallback;Landroid/companion/ICompanionDeviceDiscoveryService;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
