.class public final synthetic Lcom/android/server/-$$Lambda$StorageManagerService$js3bHvdd2Mf8gztNxvL27JoT034;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/StorageManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/StorageManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$StorageManagerService$js3bHvdd2Mf8gztNxvL27JoT034;->f$0:Lcom/android/server/StorageManagerService;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/-$$Lambda$StorageManagerService$js3bHvdd2Mf8gztNxvL27JoT034;->f$0:Lcom/android/server/StorageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/StorageManagerService;->lambda$handleSystemReady$0$StorageManagerService(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
