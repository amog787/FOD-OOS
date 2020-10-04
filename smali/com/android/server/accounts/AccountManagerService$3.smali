.class Lcom/android/server/accounts/AccountManagerService$3;
.super Lcom/android/internal/content/PackageMonitor;
.source "AccountManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/accounts/AccountManagerService;-><init>(Lcom/android/server/accounts/AccountManagerService$Injector;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/accounts/AccountManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/accounts/AccountManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/accounts/AccountManagerService;

    .line 335
    iput-object p1, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 339
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->access$400(Lcom/android/server/accounts/AccountManagerService;IZ)V

    .line 340
    return-void
.end method

.method public onPackageUpdateFinished(Ljava/lang/String;I)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .line 345
    iget-object v0, p0, Lcom/android/server/accounts/AccountManagerService$3;->this$0:Lcom/android/server/accounts/AccountManagerService;

    const/4 v1, 0x1

    invoke-static {v0, p2, v1}, Lcom/android/server/accounts/AccountManagerService;->access$400(Lcom/android/server/accounts/AccountManagerService;IZ)V

    .line 346
    return-void
.end method
