.class Lcom/android/server/pm/parsing/PackageParser2$1;
.super Lcom/android/server/pm/parsing/PackageParser2$Callback;
.source "PackageParser2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/parsing/PackageParser2;->forParsingFileWithDefaults()Lcom/android/server/pm/parsing/PackageParser2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$platformCompat:Lcom/android/internal/compat/IPlatformCompat;


# direct methods
.method constructor <init>(Lcom/android/internal/compat/IPlatformCompat;)V
    .locals 0

    .line 68
    iput-object p1, p0, Lcom/android/server/pm/parsing/PackageParser2$1;->val$platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-direct {p0}, Lcom/android/server/pm/parsing/PackageParser2$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public hasFeature(Ljava/lang/String;)Z
    .locals 1
    .param p1, "feature"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z
    .locals 3
    .param p1, "changeId"    # J
    .param p3, "appInfo"    # Landroid/content/pm/ApplicationInfo;

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/server/pm/parsing/PackageParser2$1;->val$platformCompat:Lcom/android/internal/compat/IPlatformCompat;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/compat/IPlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 73
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "PackageParsing"

    const-string v2, "IPlatformCompat query failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    const/4 v1, 0x1

    return v1
.end method
