.class Lcom/android/server/NetworkScoreService$4;
.super Ljava/lang/Object;
.source "NetworkScoreService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$PackagesProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;Lcom/android/server/NetworkScorerAppManager;Ljava/util/function/Function;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/NetworkScoreService;


# direct methods
.method constructor <init>(Lcom/android/server/NetworkScoreService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/NetworkScoreService;

    .line 310
    iput-object p1, p0, Lcom/android/server/NetworkScoreService$4;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPackages(I)[Ljava/lang/String;
    .locals 3
    .param p1, "userId"    # I

    .line 313
    iget-object v0, p0, Lcom/android/server/NetworkScoreService$4;->this$0:Lcom/android/server/NetworkScoreService;

    invoke-static {v0}, Lcom/android/server/NetworkScoreService;->access$500(Lcom/android/server/NetworkScoreService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "use_open_wifi_package"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 315
    .local v0, "useOpenWifiPackage":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 316
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1

    .line 318
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method
