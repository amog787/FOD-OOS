.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NFdAeB-4Fj_ZP4GXkIVrEH_Cxj8;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Landroid/provider/DeviceConfig$OnPropertiesChangedListener;


# instance fields
.field public final synthetic f$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NFdAeB-4Fj_ZP4GXkIVrEH_Cxj8;->f$0:Lcom/android/server/notification/NotificationManagerService;

    return-void
.end method


# virtual methods
.method public final onPropertiesChanged(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$NFdAeB-4Fj_ZP4GXkIVrEH_Cxj8;->f$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/notification/NotificationManagerService;->lambda$registerDeviceConfigChange$1$NotificationManagerService(Landroid/provider/DeviceConfig$Properties;)V

    return-void
.end method
