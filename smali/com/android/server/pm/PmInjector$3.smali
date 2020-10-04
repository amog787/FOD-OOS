.class Lcom/android/server/pm/PmInjector$3;
.super Ljava/lang/Object;
.source "PmInjector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PmInjector;->purgeInstalledThemeApks(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$pm:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V
    .locals 0

    .line 716
    iput-object p1, p0, Lcom/android/server/pm/PmInjector$3;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/pm/PmInjector$3;->val$packageName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/pm/PmInjector$3;->val$pm:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 718
    iget-object v0, p0, Lcom/android/server/pm/PmInjector$3;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/pm/PmInjector$3;->val$packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/pm/PmInjector$3;->val$pm:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/PmInjector;->purgeInstalledThemeApks(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/pm/PackageManagerService;)V

    .line 719
    return-void
.end method
