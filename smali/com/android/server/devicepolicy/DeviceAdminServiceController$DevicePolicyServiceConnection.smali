.class Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;
.super Lcom/android/server/am/PersistentConnection;
.source "DeviceAdminServiceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/devicepolicy/DeviceAdminServiceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DevicePolicyServiceConnection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/am/PersistentConnection<",
        "Landroid/app/admin/IDeviceAdminService;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/devicepolicy/DeviceAdminServiceController;


# direct methods
.method public constructor <init>(Lcom/android/server/devicepolicy/DeviceAdminServiceController;ILandroid/content/ComponentName;)V
    .locals 15
    .param p2, "userId"    # I
    .param p3, "componentName"    # Landroid/content/ComponentName;

    .line 64
    move-object/from16 v0, p1

    move-object v14, p0

    iput-object v0, v14, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->this$0:Lcom/android/server/devicepolicy/DeviceAdminServiceController;

    .line 65
    iget-object v2, v0, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->mContext:Landroid/content/Context;

    invoke-static/range {p1 .. p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->access$000(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Landroid/os/Handler;

    move-result-object v3

    .line 66
    invoke-static/range {p1 .. p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->access$100(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;

    move-result-object v1

    iget-wide v6, v1, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_SEC:J

    .line 67
    invoke-static/range {p1 .. p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->access$100(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;

    move-result-object v1

    iget-wide v8, v1, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_BACKOFF_INCREASE:D

    .line 68
    invoke-static/range {p1 .. p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->access$100(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;

    move-result-object v1

    iget-wide v10, v1, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_RECONNECT_MAX_BACKOFF_SEC:J

    .line 69
    invoke-static/range {p1 .. p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController;->access$100(Lcom/android/server/devicepolicy/DeviceAdminServiceController;)Lcom/android/server/devicepolicy/DevicePolicyConstants;

    move-result-object v0

    iget-wide v12, v0, Lcom/android/server/devicepolicy/DevicePolicyConstants;->DAS_DIED_SERVICE_STABLE_CONNECTION_THRESHOLD_SEC:J

    .line 65
    const-string v1, "DevicePolicyManager"

    move-object v0, p0

    move/from16 v4, p2

    move-object/from16 v5, p3

    invoke-direct/range {v0 .. v13}, Lcom/android/server/am/PersistentConnection;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;ILandroid/content/ComponentName;JDJJ)V

    .line 70
    return-void
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDeviceAdminService;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .line 79
    invoke-static {p1}, Landroid/app/admin/IDeviceAdminService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDeviceAdminService;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic asInterface(Landroid/os/IBinder;)Ljava/lang/Object;
    .locals 0

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/server/devicepolicy/DeviceAdminServiceController$DevicePolicyServiceConnection;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDeviceAdminService;

    move-result-object p1

    return-object p1
.end method

.method protected getBindFlags()I
    .locals 1

    .line 74
    const/high16 v0, 0x4000000

    return v0
.end method
