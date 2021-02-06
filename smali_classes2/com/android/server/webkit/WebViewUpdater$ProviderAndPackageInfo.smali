.class Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;
.super Ljava/lang/Object;
.source "WebViewUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/webkit/WebViewUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ProviderAndPackageInfo"
.end annotation


# instance fields
.field public final packageInfo:Landroid/content/pm/PackageInfo;

.field public final provider:Landroid/webkit/WebViewProviderInfo;


# direct methods
.method public constructor <init>(Landroid/webkit/WebViewProviderInfo;Landroid/content/pm/PackageInfo;)V
    .locals 0
    .param p1, "provider"    # Landroid/webkit/WebViewProviderInfo;
    .param p2, "packageInfo"    # Landroid/content/pm/PackageInfo;

    .line 245
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 246
    iput-object p1, p0, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->provider:Landroid/webkit/WebViewProviderInfo;

    .line 247
    iput-object p2, p0, Lcom/android/server/webkit/WebViewUpdater$ProviderAndPackageInfo;->packageInfo:Landroid/content/pm/PackageInfo;

    .line 248
    return-void
.end method
