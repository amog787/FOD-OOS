.class Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
.super Ljava/lang/Object;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/LauncherAppsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BroadcastCookie"
.end annotation


# instance fields
.field public final callingPid:I

.field public final callingUid:I

.field public final packageName:Ljava/lang/String;

.field public final user:Landroid/os/UserHandle;


# direct methods
.method constructor <init>(Landroid/os/UserHandle;Ljava/lang/String;II)V
    .locals 0
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "callingPid"    # I
    .param p4, "callingUid"    # I

    .line 134
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    iput-object p1, p0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->user:Landroid/os/UserHandle;

    .line 136
    iput-object p2, p0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->packageName:Ljava/lang/String;

    .line 137
    iput p4, p0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingUid:I

    .line 138
    iput p3, p0, Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;->callingPid:I

    .line 139
    return-void
.end method
