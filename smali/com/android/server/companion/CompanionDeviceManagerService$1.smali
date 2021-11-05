.class Lcom/android/server/companion/CompanionDeviceManagerService$1;
.super Lcom/android/internal/infra/PerUser;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/PerUser<",
        "Lcom/android/internal/infra/ServiceConnector<",
        "Landroid/companion/ICompanionDeviceDiscoveryService;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

.field final synthetic val$serviceIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 153
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->val$serviceIntent:Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/internal/infra/PerUser;-><init>()V

    return-void
.end method


# virtual methods
.method protected create(I)Lcom/android/internal/infra/ServiceConnector;
    .locals 7
    .param p1, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/android/internal/infra/ServiceConnector<",
            "Landroid/companion/ICompanionDeviceDiscoveryService;",
            ">;"
        }
    .end annotation

    .line 156
    new-instance v6, Lcom/android/internal/infra/ServiceConnector$Impl;

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 157
    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/companion/CompanionDeviceManagerService$1;->val$serviceIntent:Landroid/content/Intent;

    sget-object v5, Lcom/android/server/companion/-$$Lambda$dmgYbfK3c1MAswkxujxbcRtjs9A;->INSTANCE:Lcom/android/server/companion/-$$Lambda$dmgYbfK3c1MAswkxujxbcRtjs9A;

    const/4 v3, 0x0

    move-object v0, v6

    move v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/infra/ServiceConnector$Impl;-><init>(Landroid/content/Context;Landroid/content/Intent;IILjava/util/function/Function;)V

    .line 156
    return-object v6
.end method

.method protected bridge synthetic create(I)Ljava/lang/Object;
    .locals 0

    .line 153
    invoke-virtual {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$1;->create(I)Lcom/android/internal/infra/ServiceConnector;

    move-result-object p1

    return-object p1
.end method
