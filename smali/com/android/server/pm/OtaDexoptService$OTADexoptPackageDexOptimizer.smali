.class Lcom/android/server/pm/OtaDexoptService$OTADexoptPackageDexOptimizer;
.super Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;
.source "OtaDexoptService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/OtaDexoptService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OTADexoptPackageDexOptimizer"
.end annotation


# direct methods
.method public constructor <init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;)V
    .locals 1
    .param p1, "installer"    # Lcom/android/server/pm/Installer;
    .param p2, "installLock"    # Ljava/lang/Object;
    .param p3, "context"    # Landroid/content/Context;

    .line 478
    const-string v0, "*otadexopt*"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/pm/PackageDexOptimizer$ForcedUpdatePackageDexOptimizer;-><init>(Lcom/android/server/pm/Installer;Ljava/lang/Object;Landroid/content/Context;Ljava/lang/String;)V

    .line 479
    return-void
.end method
