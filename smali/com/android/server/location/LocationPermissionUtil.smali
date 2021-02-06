.class public final Lcom/android/server/location/LocationPermissionUtil;
.super Ljava/lang/Object;
.source "LocationPermissionUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doesCallerReportToAppOps(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 45
    invoke-static {p0, p1}, Lcom/android/server/location/LocationPermissionUtil;->hasPermissionLocationHardware(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {p0, p1}, Lcom/android/server/location/LocationPermissionUtil;->hasPermissionUpdateAppOpsStats(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 45
    :goto_0
    return v0
.end method

.method private static hasPermissionLocationHardware(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 51
    iget v0, p1, Lcom/android/server/location/CallerIdentity;->pid:I

    iget v1, p1, Lcom/android/server/location/CallerIdentity;->uid:I

    const-string v2, "android.permission.LOCATION_HARDWARE"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static hasPermissionUpdateAppOpsStats(Landroid/content/Context;Lcom/android/server/location/CallerIdentity;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callerIdentity"    # Lcom/android/server/location/CallerIdentity;

    .line 57
    iget v0, p1, Lcom/android/server/location/CallerIdentity;->pid:I

    iget v1, p1, Lcom/android/server/location/CallerIdentity;->uid:I

    const-string v2, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-virtual {p0, v2, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
