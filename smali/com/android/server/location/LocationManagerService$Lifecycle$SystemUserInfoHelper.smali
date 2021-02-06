.class Lcom/android/server/location/LocationManagerService$Lifecycle$SystemUserInfoHelper;
.super Lcom/android/server/location/UserInfoHelper;
.source "LocationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/location/LocationManagerService$Lifecycle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemUserInfoHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .line 206
    invoke-direct {p0, p1}, Lcom/android/server/location/UserInfoHelper;-><init>(Landroid/content/Context;)V

    .line 207
    return-void
.end method
