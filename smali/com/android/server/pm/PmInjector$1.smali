.class Lcom/android/server/pm/PmInjector$1;
.super Landroid/database/ContentObserver;
.source "PmInjector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PmInjector;->controlGooglePackagesForCta(Landroid/content/Context;Landroid/os/Handler;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Handler;Landroid/content/Context;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Handler;

    .line 462
    iput-object p2, p0, Lcom/android/server/pm/PmInjector$1;->val$context:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6
    .param p1, "selfChange"    # Z

    .line 465
    iget-object v0, p0, Lcom/android/server/pm/PmInjector$1;->val$context:Landroid/content/Context;

    .line 466
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 465
    const/4 v1, 0x0

    const-string/jumbo v2, "user_setup_complete"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 467
    .local v0, "newValue":I
    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 468
    invoke-static {}, Lcom/android/server/pm/PmInjector;->access$000()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 469
    .local v3, "packageName":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/pm/PmInjector$1;->val$context:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v4, v3, v1, v5}, Landroid/content/pm/PackageManager;->setApplicationHiddenSettingAsUser(Ljava/lang/String;ZLandroid/os/UserHandle;)Z

    .line 471
    .end local v3    # "packageName":Ljava/lang/String;
    goto :goto_0

    .line 473
    :cond_0
    return-void
.end method
