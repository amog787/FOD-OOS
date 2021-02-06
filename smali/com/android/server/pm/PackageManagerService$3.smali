.class Lcom/android/server/pm/PackageManagerService$3;
.super Lcom/android/server/pm/parsing/PackageParser2$Callback;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/PackageManagerService;-><init>(Lcom/android/server/pm/PackageManagerService$Injector;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;

.field final synthetic val$platformCompat:Lcom/android/server/compat/PlatformCompat;


# direct methods
.method constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/compat/PlatformCompat;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .line 2970
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/PackageManagerService$3;->val$platformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-direct {p0}, Lcom/android/server/pm/parsing/PackageParser2$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public hasFeature(Ljava/lang/String;)Z
    .locals 2
    .param p1, "feature"    # Ljava/lang/String;

    .line 2978
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$3;->this$0:Lcom/android/server/pm/PackageManagerService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/pm/PackageManagerService;->hasSystemFeature(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 1
    .param p1, "changeId"    # J
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 2973
    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$3;->val$platformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0

    return v0
.end method
