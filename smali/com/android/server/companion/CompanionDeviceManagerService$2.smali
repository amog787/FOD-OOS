.class Lcom/android/server/companion/CompanionDeviceManagerService$2;
.super Lcom/android/internal/content/PackageMonitor;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;->registerPackageMonitor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 167
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method

.method static synthetic lambda$onPackageRemoved$0(Ljava/lang/String;Landroid/companion/Association;)Z
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "a"    # Landroid/companion/Association;

    .line 172
    iget-object v0, p1, Landroid/companion/Association;->companionAppPackage:Ljava/lang/String;

    invoke-static {v0, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$onPackageRemoved$1(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "as"    # Ljava/util/Set;

    .line 171
    new-instance v0, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$2$-LNsQ_6iDwt_SHib_WgAf70VWCI;

    invoke-direct {v0, p0}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$2$-LNsQ_6iDwt_SHib_WgAf70VWCI;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/internal/util/CollectionUtils;->filter(Ljava/util/Set;Ljava/util/function/Predicate;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onPackageModified(Ljava/lang/String;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .line 178
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$2;->getChangingUserId()I

    move-result v0

    .line 179
    .local v0, "userId":I
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$100(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 180
    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)V

    .line 182
    :cond_0
    return-void
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 170
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$2;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    new-instance v1, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$2$dm_CTD4HzQO9qRu6lX0jCG6NMCM;

    invoke-direct {v1, p1}, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$2$dm_CTD4HzQO9qRu6lX0jCG6NMCM;-><init>(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/android/server/companion/CompanionDeviceManagerService$2;->getChangingUserId()I

    move-result v2

    .line 170
    invoke-static {v0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$000(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/util/function/Function;I)V

    .line 174
    return-void
.end method
