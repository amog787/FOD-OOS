.class public Lcom/android/server/pm/LauncherAppsService;
.super Lcom/android/server/SystemService;
.source "LauncherAppsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;,
        Lcom/android/server/pm/LauncherAppsService$BroadcastCookie;
    }
.end annotation


# static fields
.field private static final WHITELIST_ORDINARY_PACKAGES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mLauncherAppsImpl:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 110
    const-string v0, "com.heytap.xgame"

    const-string v1, "com.unionpay.tsmservice"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/pm/LauncherAppsService;->WHITELIST_ORDINARY_PACKAGES:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 120
    new-instance v0, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    invoke-direct {v0, p1}, Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/pm/LauncherAppsService;->mLauncherAppsImpl:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    .line 121
    return-void
.end method

.method static synthetic access$100()Ljava/util/List;
    .locals 1

    .line 107
    sget-object v0, Lcom/android/server/pm/LauncherAppsService;->WHITELIST_ORDINARY_PACKAGES:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public onStart()V
    .locals 2

    .line 125
    iget-object v0, p0, Lcom/android/server/pm/LauncherAppsService;->mLauncherAppsImpl:Lcom/android/server/pm/LauncherAppsService$LauncherAppsImpl;

    const-string/jumbo v1, "launcherapps"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/pm/LauncherAppsService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 126
    return-void
.end method
