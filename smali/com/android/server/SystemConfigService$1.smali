.class Lcom/android/server/SystemConfigService$1;
.super Landroid/os/ISystemConfig$Stub;
.source "SystemConfigService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemConfigService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/SystemConfigService;


# direct methods
.method constructor <init>(Lcom/android/server/SystemConfigService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/SystemConfigService;

    .line 37
    iput-object p1, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    invoke-direct {p0}, Landroid/os/ISystemConfig$Stub;-><init>()V

    return-void
.end method

.method static synthetic lambda$getDisabledUntilUsedPreinstalledCarrierAssociatedApps$0(Landroid/os/CarrierAssociatedAppEntry;)Ljava/lang/String;
    .locals 1
    .param p0, "app"    # Landroid/os/CarrierAssociatedAppEntry;

    .line 55
    iget-object v0, p0, Landroid/os/CarrierAssociatedAppEntry;->packageName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic lambda$getDisabledUntilUsedPreinstalledCarrierAssociatedApps$1(Ljava/util/Map$Entry;)Ljava/util/List;
    .locals 2
    .param p0, "e"    # Ljava/util/Map$Entry;

    .line 56
    nop

    .line 55
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$SystemConfigService$1$48nhaXPvuCaH0ZzSd3oLBI99uhI;->INSTANCE:Lcom/android/server/-$$Lambda$SystemConfigService$1$48nhaXPvuCaH0ZzSd3oLBI99uhI;

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 56
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getDisabledUntilUsedPreinstalledCarrierApps()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    invoke-static {v0}, Lcom/android/server/SystemConfigService;->access$000(Lcom/android/server/SystemConfigService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CARRIER_APP_INFO"

    const-string v2, "getDisabledUntilUsedPreInstalledCarrierApps requires READ_CARRIER_APP_INFO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance v0, Ljava/util/ArrayList;

    .line 43
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierApps()Landroid/util/ArraySet;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 42
    return-object v0
.end method

.method public getDisabledUntilUsedPreinstalledCarrierAssociatedAppEntries()Ljava/util/Map;
    .locals 3

    .line 61
    iget-object v0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    invoke-static {v0}, Lcom/android/server/SystemConfigService;->access$000(Lcom/android/server/SystemConfigService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CARRIER_APP_INFO"

    const-string v2, "getDisabledUntilUsedPreInstalledCarrierAssociatedAppEntries requires READ_CARRIER_APP_INFO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;

    move-result-object v0

    .line 64
    return-object v0
.end method

.method public getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Ljava/util/Map;
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/android/server/SystemConfigService$1;->this$0:Lcom/android/server/SystemConfigService;

    invoke-static {v0}, Lcom/android/server/SystemConfigService;->access$000(Lcom/android/server/SystemConfigService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.READ_CARRIER_APP_INFO"

    const-string v2, "getDisabledUntilUsedPreInstalledCarrierAssociatedApps requires READ_CARRIER_APP_INFO"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Lcom/android/server/SystemConfig;->getDisabledUntilUsedPreinstalledCarrierAssociatedApps()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lcom/android/server/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;->INSTANCE:Lcom/android/server/-$$Lambda$CSz_ibwXhtkKNl72Q8tR5oBgkWk;

    sget-object v2, Lcom/android/server/-$$Lambda$SystemConfigService$1$f5VXiRcg7rUiMtx0mLy75Mhd1ec;->INSTANCE:Lcom/android/server/-$$Lambda$SystemConfigService$1$f5VXiRcg7rUiMtx0mLy75Mhd1ec;

    .line 53
    invoke-static {v1, v2}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 51
    return-object v0
.end method
