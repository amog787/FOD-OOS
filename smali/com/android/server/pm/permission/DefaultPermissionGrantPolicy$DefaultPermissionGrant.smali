.class final Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "DefaultPermissionGrant"
.end annotation


# instance fields
.field final fixed:Z

.field final name:Ljava/lang/String;

.field final whitelisted:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZ)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "fixed"    # Z
    .param p3, "whitelisted"    # Z

    .line 1999
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2000
    iput-object p1, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->name:Ljava/lang/String;

    .line 2001
    iput-boolean p2, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->fixed:Z

    .line 2002
    iput-boolean p3, p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy$DefaultPermissionGrant;->whitelisted:Z

    .line 2003
    return-void
.end method
